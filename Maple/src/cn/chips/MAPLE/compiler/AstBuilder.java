package cn.chips.MAPLE.compiler;


import cn.chips.MAPLE.ast.declare.*;
import cn.chips.MAPLE.ast.expression.*;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ast.statement.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.parser.*;

import cn.chips.MAPLE.utils.scope.ScopeTree;
import org.antlr.v4.runtime.ParserRuleContext;

import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.06, Shanghai.
 */
public class AstBuilder extends MapleBaseVisitor<Project> {
    public ScopeTree maple = grobalVariable.grobal;
    public boolean inclass = false;
    public boolean infunction = false;
    public ClassDecl nowclass = null;
    public FuncDecl nowfunc = null;
    public AST root = null;

    @Override public Project visitProgram(MapleParser.ProgramContext ctx) {
        AST prog = new AST();
        root = prog;
        for(ParserRuleContext child : ctx.decl()){
            prog.add((Declare) visit(child));
        }
        grobalVariable.root = root;
        return prog;
    }
//
//    @Override public Project visitDecl(MapleParser.DeclContext ctx) { return visitChildren(ctx); }

    @Override public Project visitVarDecl(MapleParser.VarDeclContext ctx) {
        VarDecl vd = new VarDecl(new Position(ctx.getStart()));
        vd.setName(ctx.ID().getText());
        vd.setType(new TypeClassifier().Classify(ctx.typePro()));
        if(!(ctx.expr()==null)) {
            vd.setExpr((Expr)visit(ctx.expr()));
        }
//        System.err.println(vd.pos._String());
        if(inclass&&!infunction){
            maple.define(nowclass.name + "__" + vd.getname(), vd);
        }
// else{
//            maple.define(vd.getname(), vd);
//        }
        //System.err.println(ctx.getParent().getText());
        return vd;
    }

    @Override public Project visitClassDecl(MapleParser.ClassDeclContext ctx) {
        ClassDecl cls = new ClassDecl(ctx);
        inclass = true;
        nowclass = cls;
        for(ParserRuleContext child : ctx.blockDecl()){
            cls.add((Declare)visit(child));
        }
        inclass = false;
        nowclass = null;
        maple.define(cls.getname(), cls);
        root.getDecls().addClass(cls);
        //maple.StepIn(cls);
        return cls;
    }

//    @Override public Project visitTypePro(MapleParser.TypeProContext ctx) { return visitChildren(ctx); }
//
//    @Override public Project visitFuncList(MapleParser.FuncListContext ctx) { return visitChildren(ctx); }

    @Override public Project visitFuncDecl(MapleParser.FuncDeclContext ctx) {
        infunction = true;
        FuncDecl func = new FuncDecl(ctx, inclass, nowclass);
        nowfunc = func;

        for(ParserRuleContext child :  ctx.block().stmt()){
            Statement stmt = (Statement)visit(child);
            if(stmt == null) continue;
            func.add(stmt);
        }
        if(inclass){
            if(Objects.equals(func.getname(), "this")){
                throw new ReDefine();
            }
        }
        maple.define(func.getname(), func);
        infunction = false;
        nowfunc = null;
        root.getDecls().addFuns(func);
        return func;
    }

    @Override public Project visitBlock(MapleParser.BlockContext ctx) {
        BlockStatement bs = new BlockStatement(new Position(ctx.getStart()));
        for (ParserRuleContext child : ctx.stmt()){
            bs.add((Statement)visit(child));
        }
        return bs;
    }

//    @Override public Project visitBlockDecl(MapleParser.BlockDeclContext ctx) { return visitChildren(ctx); }

//    @Override public Project visitExprBkt(MapleParser.ExprBktContext ctx) { return visit(ctx.expr()); }

    @Override public Project visitExprStatement(MapleParser.ExprStatementContext ctx) {
        if(ctx.expr() == null){
           return null;
        }
        return new ExprStatement((Expr) visit(ctx.expr()),
                new Position(ctx.getStart()));
    }

//    @Override public Project visitBlockStatement(MapleParser.BlockStatementContext ctx) {
//        BlockStatement bs = new BlockStatement(new Position(ctx.getStart()));
//        for (ParserRuleContext child : ctx.block().stmt()){
//            bs.add((statement)visit(child));
//        }
//        return bs;
//    }
//
//    @Override public Project visitIfStatement(MapleParser.IfStatementContext ctx) {
//        return visitChildren(ctx);
//    }
//
//    @Override public Project visitForStatement(MapleParser.ForStatementContext ctx) { return visitChildren(ctx); }
//
//    @Override public Project visitWhileStatement(MapleParser.WhileStatementContext ctx) { return visitChildren(ctx); }
//
    @Override public Project visitControlStatement(MapleParser.ControlStatementContext ctx) {
        if(Objects.equals(ctx.operation.getText(), "break")){
            return new BreakStatement(new Position(ctx.getStart()));
        }
        if(Objects.equals(ctx.operation.getText(), "continue")){
            return new ContinueStatement(new Position(ctx.getStart()));
        }
        throw new NullPtr();
    }
    @Override public Project visitReturnStatement(MapleParser.ReturnStatementContext ctx) {
        if(ctx.expr() == null){
            return new ReturnStatement(null, new Position(ctx.getStart()));

        }
        return new ReturnStatement((Expr)visit(ctx.expr()), new Position(ctx.getStart()));
    }

//    @Override public Project visitVarDeclare(MapleParser.VarDeclareContext ctx) {
//    return visitChildren(ctx);
//    }




    @Override public Project visitIfStmt(MapleParser.IfStmtContext ctx) {
        int k = ctx.exprBkt().size() - 1;
        IfStatement outer = new IfStatement(new Position(ctx.getStart()));
        outer.setExpr((Expr)visit(ctx.exprBkt(k).expr()));
        outer.setThenBody((Statement)visit(ctx.stmt(k)));
        if(ctx.stmt(k + 1)!=null){
            outer.setElseBody((Statement) visit(ctx.stmt(k + 1)));
        }
        k --;
        IfStatement inner = new IfStatement(new Position(ctx.getStart()));
        while(k >= 0){
            inner.setExpr((Expr)visit(ctx.exprBkt(k).expr()));
            inner.setThenBody((Statement)visit(ctx.stmt(k)));
            inner.setElseBody(outer);
            outer = inner;
            inner = new IfStatement(new Position(ctx.getStart()));
            k --;
        }
        return outer;
    }

    @Override public Project visitForStmt(MapleParser.ForStmtContext ctx) {
      //  System.err.println(new Position(ctx.getStart())._String());
        ForStatement fs = new ForStatement(
                (Statement)visit(ctx.stmt()),
                new Position(ctx.getStart()));
        if(ctx.first == null){
            fs.add(new ConstantExpr(new NullType(fs.pos)));
        }else{
            fs.add((Expr)visit(ctx.first));
        }
        if(ctx.second == null){
            fs.add(new ConstantExpr(new NullType(fs.pos)));
        }else{
            fs.add((Expr)visit(ctx.second));
        }
        if(ctx.thirld == null){
            fs.add(new ConstantExpr(new NullType(fs.pos)));
        }else{
            fs.add((Expr)visit(ctx.thirld));
        }
        return fs;
    }

    @Override public Project visitWhileStmt(MapleParser.WhileStmtContext ctx) {
        return new WhileStatement((Expr)visit(ctx.exprBkt().expr()),
                (Statement)visit(ctx.stmt()),
                new Position(ctx.getStart()));
    }

    @Override public Project visitExprList(MapleParser.ExprListContext ctx) { return visitChildren(ctx); }

    @Override public Project visitMemberFunction(MapleParser.MemberFunctionContext ctx) {
        MemberFunction fc = new MemberFunction(ctx);
        fc.listadd((Expr) visit(ctx.expr()));
        if(!ctx.exprList().expr().isEmpty()) {
            for (ParserRuleContext child : ctx.exprList().expr()) {
                fc.listadd((Expr) visit(child));
            }
        }
        return fc;
    }

    @Override public Project visitArrIndex(MapleParser.ArrIndexContext ctx) {
        if((Expr)visit(ctx.expr(0)) instanceof NewExpr && !(ctx.expr(0) instanceof MapleParser.ExprWithBracketContext)){
            NewExpr ne = (NewExpr) visit(ctx.expr(0));
            Expr index = (Expr) visit(ctx.expr(1));
            if (index == null){
                throw new NullPtr();
            }
            ne.setDimension(ne.getDimension() + 1);
            ne.add(index);
            return  ne;
        }
        return new ArrIndex((Expr)visit(ctx.expr(0)),
                (Expr)visit(ctx.expr(1)),
                new Position(ctx.getStart()));
    }

    @Override public Project visitBinaryBitOperation(MapleParser.BinaryBitOperationContext ctx) {
        return new BinaryExpr((Expr) visit(ctx.expr(0)),
                (Expr) visit(ctx.expr(1)),
                ctx.operation.getText(),
                new Position(ctx.getStart()));
    }

    @Override public Project visitSignExpression(MapleParser.SignExpressionContext ctx) {
        return new PreSingleExpr((Expr)visit(ctx.expr()),
                ctx.operation.getText(), new Position(ctx.getStart()));
    }

    @Override public Project visitBinaryBitMov(MapleParser.BinaryBitMovContext ctx) {
        return new BinaryExpr((Expr) visit(ctx.expr(0)),
                (Expr) visit(ctx.expr(1)),
                ctx.operation.getText(),
                new Position(ctx.getStart()));
    }

    @Override public Project visitBitNotOperation(MapleParser.BitNotOperationContext ctx) {
        return new PreSingleExpr((Expr)visit(ctx.expr()),
                ctx.BNOT().getText(), new Position(ctx.getStart()));
    }

    @Override public Project visitNotOperation(MapleParser.NotOperationContext ctx) {
        return new PreSingleExpr((Expr)visit(ctx.expr()),
                ctx.NOT().getText(), new Position(ctx.getStart()));
    }

    @Override public Project visitExprWithBracket(MapleParser.ExprWithBracketContext ctx) {
        return visit(ctx.exprBkt().expr());
    }

    @Override public Project visitNewOperation(MapleParser.NewOperationContext ctx) {
        NewExpr ne = new NewExpr(ctx.type());
        if(ctx.expr() != null) {
            ne.add((Expr) visit(ctx.expr()));
            if(ctx.ptrBracket() != null) {
                ne.setDimension(ctx.ptrBracket().getChildCount() / 2 + 2);
                return ne;
            }else{
                ne.setDimension(2);
                return ne;
            }
        }else {
            ne.setDimension(1);
            return ne;
        }
//  System.err.println(ctx.ptrBracket().getChildCount());
       // here is about new int[2][][];
    }//stdtype: dimension = 1
// in arrIndex should check if new operation
    @Override public Project visitPostSelfOp(MapleParser.PostSelfOpContext ctx) {
        Expr expr = (Expr)visit(ctx.expr());
        if(expr instanceof LogicExpr){
            return new LogicExpr(((LogicExpr) expr).left,
                    new PostSingleExpr((Expr)(((LogicExpr) expr).right), ctx.operation.getText(), new Position(ctx.getStart())) , ((LogicExpr) expr).opt, new Position(ctx.getStart()));
        }
        if(expr instanceof BinaryExpr){
            return new BinaryExpr(((BinaryExpr) expr).left,
                    new PostSingleExpr((Expr)(((BinaryExpr) expr).right), ctx.operation.getText(), new Position(ctx.getStart())) , ((BinaryExpr) expr).opt, new Position(ctx.getStart()));
        }
        return new PostSingleExpr((Expr)visit(ctx.expr()),
                ctx.operation.getText(), new Position(ctx.getStart()));
    }

    @Override public Project visitPreSelfOp(MapleParser.PreSelfOpContext ctx) {
        Expr expr = (Expr)visit(ctx.expr());
        if(expr instanceof LogicExpr){
            return new LogicExpr(new PreSingleExpr((Expr)(((LogicExpr) expr).left), ctx.operation.getText(), new Position(ctx.getStart())),
                    ((LogicExpr) expr).right, ((LogicExpr) expr).opt, new Position(ctx.getStart()));
        }
        if(expr instanceof BinaryExpr){
            return new BinaryExpr(new PreSingleExpr((Expr)(((BinaryExpr) expr).left), ctx.operation.getText(), new Position(ctx.getStart())),
                    ((BinaryExpr) expr).right, ((BinaryExpr) expr).opt, new Position(ctx.getStart()));
        }
        return new PreSingleExpr((Expr)visit(ctx.expr()),
                ctx.operation.getText(), new Position(ctx.getStart()));
    }

    @Override public Project visitIdentifier(MapleParser.IdentifierContext ctx) {
        String id = ctx.getText();
//        if(inclass && infunction){
//            if(maple.containsKey(nowclass.name + "__" + id)){
//                List<Pair<Type, String>> ls = nowfunc.flist;
//                for(Pair<Type, String> p: ls){
//                    if(Objects.equals(p.getSecond(), id)){
//                        return new Identifier(ctx.ID());
//                    }
//                }
//                Member k = new Member(
//                        new Identifier("This", new Position(ctx.getStart())),
//                        id,
//                        new Position(ctx.getStart()));
//                return k;
//            }
//        }
        return new Identifier(ctx.ID());
    }

    @Override public Project visitBinaryExpression(MapleParser.BinaryExpressionContext ctx) {
        Expr expr0 = (Expr) visit(ctx.expr(0));
        Expr expr1 = (Expr) visit(ctx.expr(1));

        BinaryExpr be =  new BinaryExpr(expr0,
                expr1,
                ctx.operation.getText(),
                new Position(ctx.getStart()));
        return be;
    }

    @Override public Project visitLogicExpression(MapleParser.LogicExpressionContext ctx) {
        return new LogicExpr((Expr) visit(ctx.expr(0)),
                (Expr) visit(ctx.expr(1)),
                ctx.operation.getText(),
                new Position(ctx.getStart()));
    }

    @Override public Project visitAssign(MapleParser.AssignContext ctx) {
        return new AssignExpr((Expr) visit(ctx.expr(0)),
                (Expr) visit(ctx.expr(1)),
                new Position(ctx.getStart()));
    }

    @Override public Project visitFunctionCall(MapleParser.FunctionCallContext ctx) {
        FunctionCall fc = new FunctionCall(ctx);
        for (ParserRuleContext child : ctx.exprList().expr()){
            fc.listadd((Expr) visit(child));
        }
        return fc;
    }

//    @Override public Project visitConstantValue(MapleParser.ConstantValueContext ctx) { return visitChildren(ctx); }

    @Override public Project visitMember(MapleParser.MemberContext ctx) {
        return new Member((Expr) visit(ctx.expr()),
                ctx.ID().getText(),
                new Position(ctx.getStart()));
    }

//    @Override public Project visitType(MapleParser.TypeContext ctx) { return visitChildren(ctx); }
//
//    @Override public Project visitPtrBracket(MapleParser.PtrBracketContext ctx) { return visitChildren(ctx); }

    @Override public Project visitConstant(MapleParser.ConstantContext ctx) {
        ConstantExpr c;
            if(ctx.INT() != null){
                c = new ConstantExpr(new IntType(ctx.INT()));
                root.getDecls().addConst(c);
                return c;
            }else if(ctx.BOOL() != null){
                c = new ConstantExpr(new BoolType(ctx.BOOL()));
                root.getDecls().addConst(c);
                return c;
            }else if(ctx.NULL() != null){
                c = new ConstantExpr(new NullType(ctx.NULL()));
                root.getDecls().addConst(c);
                return c;
            }else if(ctx.STRING() != null){
                c = new ConstantExpr(new StringType(ctx.STRING()));
                root.getDecls().addConst(c);
                return c;
            }
            return visitChildren(ctx);
    }

}
