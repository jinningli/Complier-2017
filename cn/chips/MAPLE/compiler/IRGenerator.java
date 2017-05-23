package cn.chips.MAPLE.compiler;

import cn.chips.MAPLE.ast.declare.*;
import cn.chips.MAPLE.ast.expression.*;
import cn.chips.MAPLE.ast.statement.*;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.exception.NoDefined;
import cn.chips.MAPLE.ir.*;
import cn.chips.MAPLE.utils.Project;
import cn.chips.MAPLE.utils.scope.ScopeNode;

import java.util.LinkedList;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public class IRGenerator {
    private AST root;
    Label MainLabel = null;
    List<STMT> stmts = new LinkedList<>();
    List<Label> breakStack = new LinkedList<>();
    List<Label> continueStack = new LinkedList<>();

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

    }

    public EXPR visit(FuncDecl node){

    }

    public EXPR visit(VarDecl node){

    }

    public EXPR visit(ArrIndex node){

    }

    public EXPR visit(AssignExpr node){

    }

    public EXPR visit(BinaryExpr node){

    }

    public EXPR visit(ConstantExpr node){

    }

    public EXPR visit(FunctionCall node){

    }

    public EXPR visit(Identifier node){

    }

    public EXPR visit(LogicExpr node){

    }

    public EXPR visit(Member node){

    }

    public EXPR visit(MemberFunction node){

    }

    public EXPR visit(NewExpr node){

    }

    public EXPR visit(PostSingleExpr node{

    }

    public EXPR visit(PreSingleExpr node){

    }

    public EXPR visit(AST node){

    }

    public EXPR visit(BlockStatement node){
        for(Statement s: node.stmtlist){
            visit(s);
        }
        return null;
    }

    public EXPR visit(BreakStatement node){

    }

    public EXPR visit(ContinueStatement node){

    }

    public EXPR visit(ExprStatement node){
        EXPR e = visit(node.expr);
        if(e != null){
            //warning unused
        }
        return null;
    }

    public EXPR visit(ForStatement node){

    }

    public EXPR visit(IfStatement node){

    }

    public EXPR visit(ReturnStatement node){

    }

    public EXPR visit(WhileStatement node){

    }


}
