package cn.chips.MAPLE.compiler;

import cn.chips.MAPLE.ast.declare.*;
import cn.chips.MAPLE.ast.expression.*;
import cn.chips.MAPLE.ast.statement.*;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.exception.NoDefined;
import cn.chips.MAPLE.exception.TypeNotMatch;
import cn.chips.MAPLE.ir.*;
import cn.chips.MAPLE.utils.Project;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public class IRGenerator {
    private AST root;
    List<STMT> stmts;
    LinkedList<Label> breakStack;
    LinkedList<Label> continueStack;

    public IRGenerator(AST _root){
        root = _root;
    }

    public AST generate(){
        stmts = new LinkedList<>();
        breakStack = new LinkedList<>();
        continueStack = new LinkedList<>();
        for(VarDecl vd: root.getDecls().getVars()){
            if(!vd.isGrobal) continue;
            if(vd.expr != null) {
                EXPR expr = visitExpr(vd.expr);
                vd.setIR(expr);
                stmts.add(new ExprStmt(expr));
            }
        }
        root.setGrobalVarIR(stmts);

        for(FuncDecl fd: root.getDecls().getFuns()){
            fd.setIR(compileFunctionBody(fd));
        }
        return root;
    }

    public List<STMT> compileFunctionBody(FuncDecl f){
        stmts = new LinkedList<>();
        breakStack = new LinkedList<>();
        continueStack = new LinkedList<>();
        for(Statement s: f.stmtlist){
            visitStmt(s);
        }
        return stmts;
    }

    public void visitStmt(Statement _s){
        visit(_s);
    }

    public void visitStmt(Expr _expr){
        visit(_expr);
    }

    private int exprLevel = 0;
    public EXPR visitExpr(Expr expr){
        exprLevel ++;
        EXPR exprir = visit(expr);
        exprLevel --;
        return exprir;
    }

    private boolean isStatement(){
        return exprLevel == 0;
    }

    private void assign(EXPR lhs, EXPR rhs){
        stmts.add(new Assign(lhs.applyAddr(), rhs));
    }

    private void label(Label label){
        stmts.add(new LabelStmt(label));
    }

    private void jump(Label target){
        stmts.add(new Jump(target));
    }

    private void cjump(EXPR cond, Label thenlabel, Label elseLabel){
        stmts.add(new CJump(cond, thenlabel, elseLabel));
    }

    private void pushBreak(Label label){
        breakStack.add(label);
    }

    private void popBreak(){
        if(breakStack.isEmpty()){
            throw new TypeNotMatch();
        }
        breakStack.removeLast();
    }

    private Label currentBreakTarget(){
        if(breakStack.isEmpty()){
            throw new TypeNotMatch();
        }
        return breakStack.getLast();
    }

    private void pushContinue(Label label){
        continueStack.add(label);
    }

    private void popContinue(){
        if(continueStack.isEmpty()){
            throw new TypeNotMatch();
        }
        continueStack.removeLast();
    }

    private Label currentContinueTarget(){
        if(continueStack.isEmpty()){
            throw new TypeNotMatch();
        }
        return continueStack.getLast();
    }

    public EXPR visit(Project node){
        if(node instanceof VarDecl){
            return visit((VarDecl)node);
        }
        if(node instanceof ArrIndex){
            return visit((ArrIndex)node);
        }
        if(node instanceof AssignExpr){
            return visit((AssignExpr)node);
        }
        if(node instanceof BinaryExpr){
            return visit((BinaryExpr)node);
        }
        if(node instanceof ConstantExpr){
            return visit((ConstantExpr)node);
        }
        if(node instanceof FunctionCall){
            return visit((FunctionCall)node);
        }
        if(node instanceof Identifier){
            return visit((Identifier)node);
        }
        if(node instanceof LogicExpr){
            return visit((LogicExpr)node);
        }
        if(node instanceof Member){
            return visit((Member)node);
        }
        if(node instanceof MemberFunction){
            return visit((MemberFunction)node);
        }
        if(node instanceof NewExpr){
            return visit((NewExpr)node);
        }
        if(node instanceof PostSingleExpr){
            return visit((PostSingleExpr)node);
        }
        if(node instanceof PreSingleExpr){
            return visit((PreSingleExpr)node);
        }
        if(node instanceof AST){
            return visit((AST)node);
        }
        if(node instanceof BlockStatement){
            return visit((BlockStatement)node);
        }
        if(node instanceof BreakStatement){
            return visit((BreakStatement)node);
        }
        if(node instanceof ContinueStatement){
            return visit((ContinueStatement)node);
        }
        if(node instanceof ExprStatement){
            return visit((ExprStatement)node);
        }
        if(node instanceof ForStatement){
            return visit((ForStatement)node);
        }
        if(node instanceof IfStatement){
            return visit((IfStatement)node);
        }
        if(node instanceof ReturnStatement){
            return visit((ReturnStatement)node);
        }
        if(node instanceof WhileStatement){
            return visit((WhileStatement)node);
        }
        throw new NoDefined();
    }

    public EXPR visit(VarDecl node){
        if(node.expr != null){
            node.setIR(visitExpr(node.expr));
        }
        EXPR lhs = new Var(node);
        assign(lhs, node.ir);
        return null;
    }

    public EXPR visit(ArrIndex node){
        EXPR expr = visitExpr(node.body);
        EXPR offset = new Bin("*", new Int(node.elemsize()), new Int(node.offset()));
        Bin addr = new Bin("+", expr, offset);
        return new Mem(addr);
    }

    public EXPR visit(ConstantExpr node){
        return new Var(node);
    }

    public EXPR visit(Member node){
        EXPR expr = visitExpr(node.body);
        EXPR offset = new Int(node.getoffset());
        EXPR addr = new Bin("+", expr, offset);
        return new Mem(addr); // type addr?
    }

    public EXPR visit(NewExpr node){
        VarDecl tmp = new VarDecl(node.pos);
        tmp.type = node.getretype();
        tmp.setNowScope(node.nowScope);

        return new Mem(new Var(tmp));
    }

    public EXPR visit(Identifier node){
        return new Var(node.getEnt());
    }


    public EXPR visit(AssignExpr node){
        if(isStatement()){
            EXPR rhs = memAddr(visitExpr(node.right));
            EXPR lhs = memAddr(visitExpr(node.left));
            assign(lhs, rhs);
            return null;
        }else{
            VarDecl tmp = new VarDecl(node.pos);// memAddr ??
            tmp.type = node.right.getretype();
            tmp.setNowScope(node.nowScope);
            Var adds = new Var(tmp);
            assign(adds, visitExpr(node.right));
            assign(visitExpr(node.left), adds);
            return adds;
        }
    }

    public EXPR visit(BinaryExpr node){
        EXPR rhs = visitExpr(node.right);
        EXPR lhs = visitExpr(node.left);
        String op = node.opt;

        return new Bin(op, lhs, rhs);
    }


    public EXPR visit(FunctionCall node){
        List<EXPR> args = new ArrayList<>();
        for(Expr arg: node.flist){
            args.add(0, visitExpr(arg));
        }
        EXPR call = new Call(visitExpr(node.id), args);
        if(isStatement()){
            stmts.add(new ExprStmt(call));
            return null;
        }else{
            VarDecl tmp = new VarDecl(node.pos);
            tmp.type = node.getretype();
            tmp.setNowScope(node.nowScope);
            Var adds = new Var(tmp);

            assign(adds, call);
            return adds;
        }
    }

    public EXPR visit(MemberFunction node){
        List<EXPR> args = new ArrayList<>();
        for(Expr arg: node.flist){
            args.add(0, visitExpr(arg));
        }
        EXPR call = new Call(visitExpr(node.id), args);
        if(isStatement()){
            stmts.add(new ExprStmt(call));
        }else{
            VarDecl tmp = new VarDecl(node.pos);
            tmp.type = node.getretype();
            tmp.setNowScope(node.nowScope);
            Var adds = new Var(tmp);

            assign(adds, call);
            return adds;
        }
        return null;
    }

    public EXPR visit(LogicExpr node){///////////?????
        if(node.opt == "&&" || node.opt == "||"){
            Label rightLabel = new Label();
            Label endLabel = new Label();
            VarDecl tmp = new VarDecl(node.pos);
            tmp.type = node.left.getretype();
            tmp.setNowScope(node.nowScope);
            Var adds = new Var(tmp);

            assign(adds, visitExpr(node.left));///?????
            cjump(adds, rightLabel, endLabel);
            label(rightLabel);
            assign(adds, visitExpr(node.right));
            label(endLabel);
            return isStatement() ? null : adds;
        }
        return new Bin(node.opt, visitExpr(node.left), visitExpr(node.right));/////
    }

    public EXPR visit(PostSingleExpr node){
        EXPR body = visitExpr(node.body);
        String op = node.opt;
        if(Objects.equals(op, "++")){
            op = "+";
        }else if(Objects.equals(op, "--")){
            op = "-";
        }

        if(isStatement()){
            transformOpAssign(op, body, imm(1));
        }else if(body instanceof Var){
            VarDecl tmp = new VarDecl(node.pos);
            tmp.type = node.body.getretype();
            tmp.setNowScope(node.nowScope);
            Var adds = new Var(tmp);

            assign(adds, body);
            assign(body, new Bin(op, adds, imm(1)));
            return adds;
        }
        return null;
    }

    public EXPR visit(PreSingleExpr node){
        EXPR body = visitExpr(node.body);
        EXPR im = imm(1);
        String op = node.opt;
        if(Objects.equals(op, "++"))
            return transformOpAssign("+", body, im);
        else if (Objects.equals(op, "--"))
            return transformOpAssign("-", body, im);
        else if(Objects.equals(op, "+")){
            return body;
        }
        else if (Objects.equals(op, "-")
                || Objects.equals(op, "~")
                || Objects.equals(op, "!")){
            return new Uni(op, body);
        }
        throw new NoDefined();
    }

    private EXPR transformOpAssign(String op, EXPR lhs, EXPR rhs){
        assign(lhs, new Bin(op, lhs, rhs));
        return isStatement() ? null : lhs;
    }


    public EXPR visit(BlockStatement node){
        for(Statement s: node.stmtlist){
            visit(s);
        }
        return null;
    }

    public EXPR visit(BreakStatement node){
        jump(currentBreakTarget());
        return null;
    }

    public EXPR visit(ContinueStatement node){
        jump(currentContinueTarget());
        return null;
    }

    public EXPR visit(ExprStatement node){
        EXPR e = visit(node.expr);
        if(e != null){
            //warning unused
        }
        return null;
    }

    public EXPR visit(ForStatement node){
        Label beg = new Label();
        Label body = new Label();
        Label cont = new Label();
        Label end = new Label();

        visitStmt(node.expr.get(0));
        label(beg);
        cjump(visitExpr(node.expr.get(1)), body, end);
        label(body);
        pushBreak(end);
        pushContinue(cont);
        visitStmt(node.stmt);
        popBreak();
        popContinue();
        label(cont);
        visitStmt(node.expr.get(2));
        jump(beg);
        label(end);
        return null;
    }

    public EXPR visit(IfStatement node){
        Label thenLabel = new Label();
        Label elseLabel = new Label();
        Label endLabel = new Label();
        EXPR cond = visitExpr(node.expr);
        if(node.elsebody == null){
            cjump(cond, thenLabel, elseLabel);
            label(thenLabel);
            visitStmt(node.thenbody);
            label(endLabel);
        }else{
            cjump(cond, thenLabel, elseLabel);
            label(thenLabel);
            visitStmt(node.thenbody);
            jump(endLabel);
            label(elseLabel);
            visitStmt(node.elsebody);
            label(endLabel);
        }
        return null;
    }

    public EXPR visit(ReturnStatement node){
        if(node.expr == null){
            stmts.add(new Return(null));
        }else{
            stmts.add(new Return(visitExpr(node.expr)));
        }
        return null;
    }

    public EXPR visit(WhileStatement node){
        Label beg = new Label();
        Label body = new Label();
        Label end = new Label();

        label(beg);
        cjump(visitExpr(node.expr), body, end);
        label(body);
        pushContinue(beg);
        pushBreak(end);
        visitStmt(node.stmt);
        popBreak();
        popContinue();
        jump(beg);
        label(end);
        return null;
    }

    private Int imm(long n){
        return new Int(n);
    }
    private EXPR memAddr(EXPR expr){
//        if(expr instanceof Mem){
//            return ((Mem)expr).expr;
//        }
//        if(expr instanceof Var){
//            return new Addr(((Var) expr).ent);
//        }
//        throw new NoDefined();
        return new Mem(expr);
    }
}
