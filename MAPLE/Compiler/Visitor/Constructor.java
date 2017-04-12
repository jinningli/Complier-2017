package Compiler.Visitor;


import AssistantClass.*;
import Compiler.Declare.*;
import Compiler.Error.NullPtr;
import Compiler.FrontEnd.Main;
import Compiler.Statement.*;
import Compiler.Expression.*;
import Compiler.FrontEnd.MapleBaseVisitor;
import Compiler.FrontEnd.MapleParser;
import Compiler.Statement.ExprStatement;
import Compiler.Type.*;
import org.antlr.v4.runtime.ParserRuleContext;

import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.06, Shanghai.
 */
public class Constructor extends MapleBaseVisitor<Project> {
    private MapleNameSpace maple = Main.grobal;
    boolean inclass = false;
    String nowclass = "";

    @Override public Project visitProgram(MapleParser.ProgramContext ctx) {
        Program prog = new Program();
        for(ParserRuleContext child : ctx.decl()){
            prog.add((Declare) visit(child));
        }
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
//        if(inclass){
//            maple.define(nowclass + "-" + vd.getname(), vd);
//        }else{
//            maple.define(vd.getname(), vd);
//        }
        //System.err.println(ctx.getParent().getText());
        return vd;
    }

    @Override public Project visitClassDecl(MapleParser.ClassDeclContext ctx) {
        ClassDecl cls = new ClassDecl(ctx);
        inclass = true;
        nowclass = cls.getname();
        for(ParserRuleContext child : ctx.blockDecl()){
            cls.add((Declare)visit(child));
        }
        inclass = false;
        nowclass = "";
        maple.define(cls.getname(), cls);
        //maple.StepIn(cls);
        return cls;
    }

//    @Override public Project visitTypePro(MapleParser.TypeProContext ctx) { return visitChildren(ctx); }
//
//    @Override public Project visitFuncList(MapleParser.FuncListContext ctx) { return visitChildren(ctx); }

    @Override public Project visitFuncDecl(MapleParser.FuncDeclContext ctx) {
        FuncDecl func = new FuncDecl(ctx);
        for(ParserRuleContext child :  ctx.block().stmt()){
            Statement stmt = (Statement)visit(child);
            func.add(stmt);
        }
        if(inclass){
            maple.define(nowclass + "-" + func.getname(), func);
        }
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
        return new ExprStatement((Expr) visit(ctx.expr()),
                new Position(ctx.getStart()));
    }

//    @Override public Project visitBlockStatement(MapleParser.BlockStatementContext ctx) {
//        BlockStatement bs = new BlockStatement(new Position(ctx.getStart()));
//        for (ParserRuleContext child : ctx.block().stmt()){
//            bs.add((Statement)visit(child));
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
        return new ReturnStatement((Expr)visit(ctx.expr()), new Position(ctx.getStart()));
    }

//    @Override public Project visitVarDeclare(MapleParser.VarDeclareContext ctx) {
//    return visitChildren(ctx);
//    }

    @Override public Project visitIfStmt(MapleParser.IfStmtContext ctx) {
        IfStatement is = new IfStatement(new Position(ctx.getStart()));
        is.add((Expr)visit(ctx.exprBkt(0).expr()), (Statement)visit(ctx.stmt(0)));
        int k = 1;
        while(!(ctx.exprBkt(k) == null)){
            is.add((Expr)visit(ctx.exprBkt(k).expr()), (Statement)visit(ctx.stmt(k)));
            k ++;
        }
        if(!(ctx.stmt(k)==null)){
            is.setElseStmt((Statement) visit(ctx.stmt(k)));
        }
        return is;
    }

    @Override public Project visitForStmt(MapleParser.ForStmtContext ctx) {
        ForStatement fs = new ForStatement((Expr)visit(ctx.expr(0)),
                (Expr)visit(ctx.expr(1)),
                (Expr)visit(ctx.expr(2)),
                (Statement)visit(ctx.stmt()),
                new Position(ctx.getStart()));
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
        for (ParserRuleContext child : ctx.exprList().expr()){
            fc.listadd((Expr) visit(child));
        }
        return fc;
    }

    @Override public Project visitArrIndex(MapleParser.ArrIndexContext ctx) {
        if(ctx.expr(0)instanceof MapleParser.NewOperationContext){
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
                ctx.operation.getText());
    }

    @Override public Project visitBinaryBitMov(MapleParser.BinaryBitMovContext ctx) {
        return new BinaryExpr((Expr) visit(ctx.expr(0)),
                (Expr) visit(ctx.expr(1)),
                ctx.operation.getText(),
                new Position(ctx.getStart()));
    }

    @Override public Project visitBitNotOperation(MapleParser.BitNotOperationContext ctx) {
        return new PreSingleExpr((Expr)visit(ctx.expr()),
                ctx.BNOT().getText());
    }

    @Override public Project visitNotOperation(MapleParser.NotOperationContext ctx) {
        return new PreSingleExpr((Expr)visit(ctx.expr()),
                ctx.NOT().getText());
    }

    @Override public Project visitExprWithBracket(MapleParser.ExprWithBracketContext ctx) {
        return visit(ctx.exprBkt().expr());
    }

    @Override public Project visitNewOperation(MapleParser.NewOperationContext ctx) {
        NewExpr ne = new NewExpr(ctx.type());
        ne.add((Expr) visit(ctx.expr()));
        ne.setDimension(ctx.ptrBracket().getChildCount() + 2);
//        System.err.println(ctx.ptrBracket().getChildCount());
        return ne;// here is about new int[2][][];
    }//stdtype: dimension = 1
// in arrIndex should check if new operation
    @Override public Project visitPostSelfOp(MapleParser.PostSelfOpContext ctx) {
        return new PostSingleExpr((Expr)visit(ctx.expr()),
                ctx.operation.getText());
    }

    @Override public Project visitPreSelfOp(MapleParser.PreSelfOpContext ctx) {
        return new PreSingleExpr((Expr)visit(ctx.expr()),
                ctx.operation.getText());
    }

    @Override public Project visitIdentifier(MapleParser.IdentifierContext ctx) {
        return new Identifier(ctx.ID());
    }

    @Override public Project visitBinaryExpression(MapleParser.BinaryExpressionContext ctx) {
        BinaryExpr be =  new BinaryExpr((Expr) visit(ctx.expr(0)),
                (Expr) visit(ctx.expr(1)),
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
            if(ctx.INT() != null){
                return new ConstantExpr(new IntType(ctx.INT()));
            }else if(ctx.BOOL() != null){
                return new ConstantExpr(new BoolType(ctx.BOOL()));
            }else if(ctx.NULL() != null){
                return new ConstantExpr(new NullType(ctx.NULL()));
            }else if(ctx.STRING() != null){
                return new ConstantExpr(new StringType(ctx.STRING()));
            }
            return visitChildren(ctx);
    }

}