package cn.chips.MAPLE.compiler;

import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.asm.assembly.AsmLabel;
import cn.chips.MAPLE.ast.declare.*;
import cn.chips.MAPLE.ast.expression.*;
import cn.chips.MAPLE.ast.statement.*;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.exception.NoDefined;
import cn.chips.MAPLE.exception.TypeNotMatch;
import cn.chips.MAPLE.ir.*;
import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;
import cn.chips.MAPLE.utils.grobalVariable;
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
    public AST root;
    public List<STMT> stmts;
    public LinkedList<Label> breakStack;
    public LinkedList<Label> continueStack;
    public FuncDecl mallocFunc;

//    public List<VarDecl> adtofunc;
//    public List<VarDecl> adtog;
    boolean inFunc;

    public IRGenerator(AST _root){
        root = _root;
        mallocFunc = (FuncDecl) grobalVariable.grobal.what("__lib_malloc");
//        adtog = new LinkedList<>();
//        adtofunc = new LinkedList<>();
    }

    public IR generate(){
        stmts = new LinkedList<>();
        breakStack = new LinkedList<>();
        continueStack = new LinkedList<>();
        for(VarDecl vd: root.getDecls().gvars){
            if(vd.expr != null) {
                EXPR expr = visitExpr(vd.expr);
                vd.setIR(expr);
                stmts.add(new ExprStmt(expr));
            }
        }
        root.setGrobalVarIR(stmts);

        for(FuncDecl fd: root.getDecls().getFuns()){
//            adtofunc.clear();
//            inFunc = true;
            fd.setIR(compileFunctionBody(fd));
//            inFunc = false;
//            fd.stmtlist.addAll(0, adtofunc);
        }
        return new IR(root.getDecls(), grobalVariable.grobal);
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

    public int exprLevel = 0;
    public EXPR visitExpr(Expr expr){
        exprLevel ++;
        EXPR exprir = visit(expr);
        exprLevel --;
        return exprir;
    }

    public boolean isStatement(){
        return exprLevel == 0;
    }

    public void assign(EXPR lhs, EXPR rhs){
        stmts.add(new Assign(memAddr(lhs), rhs));
    }

    public void label(Label label){
        stmts.add(new LabelStmt(label));
    }

    public void jump(Label target){
        stmts.add(new Jump(target));
    }

    public void cjump(EXPR cond, Label thenlabel, Label elseLabel){
        stmts.add(new CJump(cond, thenlabel, elseLabel));
    }

    public void pushBreak(Label label){
        breakStack.add(label);
    }

    public void popBreak(){
        if(breakStack.isEmpty()){
            throw new TypeNotMatch();
        }
        breakStack.removeLast();
    }

    public Label currentBreakTarget(){
        if(breakStack.isEmpty()){
            throw new TypeNotMatch();
        }
        return breakStack.getLast();
    }

    public void pushContinue(Label label){
        continueStack.add(label);
    }

    public void popContinue(){
        if(continueStack.isEmpty()){
            throw new TypeNotMatch();
        }
        continueStack.removeLast();
    }

    public Label currentContinueTarget(){
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
            EXPR lhs = new Var(node);
            assign(lhs, node.ir);
        }
        return null;
    }

    public EXPR visit(ArrIndex node){
        EXPR expr = visitExpr(node.body);
        EXPR index = visitExpr(node.index);
        long size = 8;

        if(index instanceof Int){
            return new Mem(new Bin("+", expr, new Int(size * ((Int)index).value)));
        }else{
            return new Mem(new Bin("+", expr, new Bin("*", index, new Int(size))));
        }
    }

    public EXPR visit(ConstantExpr node){
        if(node.type instanceof StringType){
            return new Str(node);
        }
        if(node.type instanceof IntType || node.type instanceof BoolType){
            return new Int(node.type.getint());
        }
        if(node.type instanceof NullType){
            return new Int(0);

        }
        throw new NoDefined();
    }

    public EXPR visit(Member node){
        EXPR expr = visitExpr(node.body);
        EXPR offset = new Int(node.getoffset());
        EXPR addr = new Bin("+", expr, offset);
        return new Mem(addr); // type addr?
    }

    public void arraybuild(List<Expr> exprs, EXPR base, int depth, Type basetype, FuncDecl constructor, ScopeNode scope){
        Var s = newTmp(scope);
        Var i = newTmp(scope);

        Int size = new Int(8);
        Int zero = new Int(0);
        Int one = new Int(1);

        Label cond = new Label();
        Label begin = new Label();
        Label end = new Label();

        assign(s, visitExpr(exprs.get(depth)));
        assign(base, new Call(mallocFunc, new LinkedList<EXPR>() {{
            add(new Bin("+",
                            new Bin("*", s, size),
                            new Int(4))
            );
        }}));
        assign(new Mem(base), s);
        assign(base, new Bin("+", base, new Int(4)));
        if(exprs.size() > depth + 1){
            assign(i, zero);

            jump(cond);
            label(begin);
            arraybuild(exprs,
                    new Mem(new Bin("+", base, new Bin("*", i, size))),
                    depth + 1, basetype, constructor, scope);
            assign(i, new Bin("+", i, one));

            label(cond);
            cjump(new Bin("<", i, s), begin, end);

            label(end);
        }else if (basetype instanceof ClassType){
            assign(i, zero);
            jump(cond);

            label(begin);
            Var tmp = newTmp(scope);
            assign(tmp, new Bin("+", base, new Bin("*", i, size)));
            assign(new Mem(tmp), new Call(mallocFunc, new LinkedList<EXPR>() {{
                add(size);
            }}
            ));

            if(constructor != null){
                stmts.add(new ExprStmt(new Call(constructor, new LinkedList<EXPR>(){{
                    add(new Mem(tmp));
                }}
                )));
            }

            assign(i, new Bin("+", i, one));
            label(cond);
            cjump(new Bin("<", i, s), begin, end);
            label(end);
        }
    }

    public EXPR visit(NewExpr node){
//        VarDecl tmp = new VarDecl(node.pos);
//        tmp.type = node.getretype();
//        tmp.setNowScope(node.nowScope);
//
//        return new Mem(new Var(tmp));
        if(node.dimension == 1){
            Var tmp = newTmp(node.nowScope);

            Call ml = new Call(mallocFunc);
            ml.addArgs(new Int(node.basetype.size()));
            assign(tmp, ml);

            Type basetype = node.basetype;
            FuncDecl fd = null;
            if(basetype instanceof  ClassType){
                ClassType clst = (ClassType) basetype;
                fd = clst.getcls().constructer;
            }
            if(fd!= null){
                stmts.add(new ExprStmt(new Call(fd, new LinkedList<EXPR>(){{add(tmp);}})));
            }
            return isStatement() ? null : tmp;
        }else{
            Type basetype = node.basetype;
            FuncDecl fd = null;
            if(basetype instanceof ClassType){
                ClassType clst = (ClassType) basetype;
                fd = clst.getcls().constructer;
            }
            Var base = newTmp(node.nowScope);
            arraybuild(node.exprlist, base, 0, node.basetype, fd, node.nowScope);
            return isStatement() ? null : base;
        }
    }

    public EXPR visit(Identifier node){
        VarDecl vd = (VarDecl) node.getEnt();
        if(vd.isClassMember){
            EXPR expr = new Var(((VarDecl)node.nowScope.what("This")));///
            EXPR offset = new Int(vd.offset);
            EXPR addr = new Bin("+", expr, offset);
            return new Mem(addr); // type addr?
        }
        return new Var(node.getEnt());
    }


    public EXPR visit(AssignExpr node){
        if(isStatement()){
            EXPR rhs = visitExpr(node.right);
            EXPR lhs = visitExpr(node.left);
            assign(lhs, rhs);
            return null;
        }else{
//            VarDecl tmp = new VarDecl(node.pos);// memAddr ??
//            tmp.type = node.dright.getretype();
//            tmp.setNowScope(node.nowScope);
            Var adds = newTmp(node.nowScope);
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
        EXPR call = new Call((FuncDecl) node.getEnt(), args);
        if(isStatement()){
            stmts.add(new ExprStmt(call));
            return null;
        }else{
            Var adds = newTmp(node.nowScope);

            assign(adds, call);
            return adds;
        }
    }

    public EXPR visit(MemberFunction node){
        List<EXPR> args = new ArrayList<>();
        for(Expr arg: node.flist){
            args.add(0, visitExpr(arg));
        }
        EXPR call = null;
        if(Objects.equals(node.id.name, "size")){
            FuncDecl tmp = new FuncDecl("size", new IntType(0));
            tmp.pos = node.pos;
            tmp.setMemref(new MemoryReference(new AsmLabel("__array__size_")));
            call = new Call(tmp, args);
        }else if(Objects.equals(node.id.name, "length")){
            FuncDecl tmp = new FuncDecl("length", new IntType(0));
            tmp.pos = node.pos;
            tmp.setMemref(new MemoryReference(new AsmLabel("__string__length__")));
            call = new Call(tmp, args);
        }else if((Objects.equals(node.id.name, "substring"))){
            FuncDecl tmp = new FuncDecl("length", new IntType(0));
            tmp.pos = node.pos;
            tmp.setMemref(new MemoryReference(new AsmLabel("__string__substring__")));
            call = new Call(tmp, args);
        }else{
            call = new Call((FuncDecl) node.getEnt(), args);
        }

        if(isStatement()){
            stmts.add(new ExprStmt(call));
        }else{
//            VarDecl tmp = new VarDecl(node.pos);
//            tmp.type = node.getretype();
//            tmp.setNowScope(node.nowScope);
            Var adds = newTmp(node.nowScope);

            assign(adds, call);
            return adds;
        }
        return null;
    }

    public EXPR visit(LogicExpr node){///////////?????
        if(Objects.equals(node.opt, "&&") || Objects.equals(node.opt, "||")){
            Label rightLabel = new Label();
            Label endLabel = new Label();
//            VarDecl tmp = new VarDecl(node.pos);
//            tmp.type = node.left.getretype();
//            tmp.setNowScope(node.nowScope);
            Var adds = newTmp(node.nowScope);

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
        }else if(body instanceof Var || body instanceof Mem){////
//            VarDecl tmp = new VarDecl(node.pos);
//            tmp.type = node.body.getretype();
//            tmp.setNowScope(node.nowScope);
            Var adds = newTmp(node.nowScope);

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

    public EXPR transformOpAssign(String op, EXPR lhs, EXPR rhs){
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
        if(node.stmt == null){
            return null;
        }
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
            if(node.thenbody == null){
                return null;
            }
            cjump(cond, thenLabel, endLabel);
            label(thenLabel);
            visitStmt(node.thenbody);
            label(endLabel);
        }else{
            if(node.thenbody == null){
                cjump(cond, endLabel, elseLabel);
                label(elseLabel);
                visitStmt(node.elsebody);
                label(endLabel);
            }
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
        if(node.stmt == null){
            return null;
        }
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

    public Int imm(long n){
        return new Int(n);
    }
    public EXPR memAddr(EXPR expr){
        if(expr instanceof Mem){
            return ((Mem)expr).expr;
        }
        if(expr instanceof Var){
            return new Addr(((Var) expr).ent);
        }
        throw new NoDefined();
//        return new Mem(expr);
    }

    public Var newTmp(ScopeNode scope){
        VarDecl tempvd = new VarDecl(new Position(-1, -1));
        tempvd.name = "__tmp" + VarDecl.tmpcnt++;
        scope.define(tempvd.name, tempvd);
//        if(inFunc){
//            adtofunc.add(tempvd);
//        }else {
//            adtog.add(tempvd);
//        }
//        scope
        return new Var(tempvd);
    }
}
