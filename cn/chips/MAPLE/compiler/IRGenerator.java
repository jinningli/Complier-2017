package cn.chips.MAPLE.compiler;

import cn.chips.MAPLE.ast.declare.*;
import cn.chips.MAPLE.ast.expression.*;
import cn.chips.MAPLE.ast.statement.*;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.exception.NoDefined;
import cn.chips.MAPLE.exception.TypeNotMatch;
import cn.chips.MAPLE.ir.*;
import cn.chips.MAPLE.utils.Project;
import cn.chips.MAPLE.utils.scope.ScopeNode;

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
    Label MainLabel = null;
    List<STMT> stmts = new LinkedList<>();
    LinkedList<Label> breakStack = new LinkedList<>();
    LinkedList<Label> continueStack = new LinkedList<>();

    public IRGenerator(AST _root){
        root = _root;
        MainLabel = new Label("main", true);
    }

    public AST generate(AST root){
        for(VarDecl vd: root.getDecls().getVars()){
            //??? var.hasInitializer?
            if(vd.expr != null)
            vd.setIR(transformExpr(vd.expr));
        }
        for(FuncDecl fd: root.getDecls().getFuns()){
            fd.setIR(compileFunctionBody(fd));
        }
        return root;
    }

    public List<STMT> compileFunctionBody(FuncDecl f){
        for(Statement s: f.stmtlist){
            transformStmt(s);
        }
        return stmts;
    }

    public void transformStmt(Statement _s){
        visit(_s);
    }

    public void transformStmt(Expr _expr){
        visit(_expr);
    }


    private int exprLevel = 0;
    public EXPR transformExpr(Expr expr){
        exprLevel ++;
        EXPR exprir = visit(expr);
        exprLevel --;
        return exprir;
    }

    private boolean isStatement(){
        return exprLevel == 0;
    }

    private void assign(EXPR lhs, EXPR rhs){
        stmts.add(new Assign(lhs, rhs));
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
        if(node instanceof ClassDecl){
            return visit((ClassDecl)node);
        }
        if(node instanceof FuncDecl){
            return visit((FuncDecl)node);
        }
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

    public EXPR visit(ClassDecl node){
        return null;
    }

    public EXPR visit(FuncDecl node){
        return null;
    }

    public EXPR visit(VarDecl node){
        return null;
    }

    public EXPR visit(ArrIndex node){
        return null;
    }

    public EXPR visit(AssignExpr node){
        if(isStatement()){
            EXPR rhs = transformExpr(node.right);
            EXPR lhs = transformExpr(node.left);
            assign(lhs, rhs);
            return null;
        }else{
            VarDecl tmp = new VarDecl(node.pos);
            tmp.type = node.right.getretype();
            tmp.setNowScope(node.nowScope);
            Var adds = new Var(tmp);
            assign(adds, transformExpr(node.right));
            assign(transformExpr(node.left), adds);
            return adds;
        }
    }

    public EXPR visit(BinaryExpr node){
        return null;
    }

    public EXPR visit(ConstantExpr node){
        return null;
    }

    public EXPR visit(FunctionCall node){
        List<EXPR> args = new ArrayList<>();
        for(Expr arg: node.flist){
            args.add(0, transformExpr(arg));
        }
        EXPR call = new Call(transformExpr(node.id), args);
        if(isStatement()){
            stmts.add(new ExprStmt(call));
            return null;
        }else{

        }
        return null;
    }

    public EXPR visit(Identifier node){
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

            assign(adds, transformExpr(node.left));///?????
            cjump(adds, rightLabel, endLabel);
            label(rightLabel);
            assign(adds, transformExpr(node.right));
            label(endLabel);
            return isStatement() ? null : adds;
        }
        return null;
    }

    public EXPR visit(Member node){
        return null;
    }

    public EXPR visit(MemberFunction node){
        return null;
    }

    public EXPR visit(NewExpr node){
        return null;
    }

    public EXPR visit(PostSingleExpr node){
        EXPR body = transformExpr(node.body);
        String op = node.opt;
        if(Objects.equals(op, "++")){
            op = "+";
        }else{
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
        EXPR lhs = transformExpr(node.body);
        EXPR rhs = imm(1);
        if(Objects.equals(node.opt, "++"))
            return transformOpAssign("+", lhs, rhs);
        else
            return transformOpAssign("-", lhs, rhs);
    }

    private EXPR transformOpAssign(String op, EXPR lhs, EXPR rhs){
        assign(lhs, new Bin(op, lhs, rhs));
        return isStatement() ? null : lhs;
    }


    public EXPR visit(AST node){
        return null;
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

        transformStmt(node.expr.get(0));
        label(beg);
        cjump(transformExpr(node.expr.get(1)), body, end);
        label(body);
        pushBreak(end);
        pushContinue(cont);
        transformStmt(node.stmt);
        popBreak();
        popContinue();
        label(cont);
        transformStmt(node.expr.get(2));
        jump(beg);
        label(end);
        return null;
    }

    public EXPR visit(IfStatement node){
        Label thenLabel = new Label();
        Label elseLabel = new Label();
        Label endLabel = new Label();
        EXPR cond = transformExpr(node.expr);
        if(node.elsebody == null){
            cjump(cond, thenLabel, elseLabel);
            label(thenLabel);
            transformStmt(node.thenbody);
            label(endLabel);
        }else{
            cjump(cond, thenLabel, elseLabel);
            label(thenLabel);
            transformStmt(node.thenbody);
            jump(endLabel);
            label(elseLabel);
            transformStmt(node.elsebody);
            label(endLabel);
        }
        return null;
    }

    public EXPR visit(ReturnStatement node){
        if(node.expr == null){
            stmts.add(new Return(null));
        }else{
            stmts.add(new Return(transformExpr(node.expr)));
        }
        return null;
    }

    public EXPR visit(WhileStatement node){
        Label beg = new Label();
        Label body = new Label();
        Label end = new Label();

        label(beg);
        cjump(transformExpr(node.expr), body, end);
        label(body);
        pushContinue(beg);
        pushBreak(end);
        transformStmt(node.stmt);
        popBreak();
        popContinue();
        jump(beg);
        label(end);
        return null;
    }

    private Int imm(long n){
        return new Int(n);
    }

}
