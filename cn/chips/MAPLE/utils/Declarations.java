package cn.chips.MAPLE.utils;

import cn.chips.MAPLE.ast.declare.ClassDecl;
import cn.chips.MAPLE.ast.declare.Declare;
import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.ast.expression.ConstantExpr;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ir.IRTranslate;
import cn.chips.MAPLE.ir.IRTraverse;
import cn.chips.MAPLE.ir.Var;

import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public class Declarations {
    public List<VarDecl> vars = new LinkedList<>();
    public List<FuncDecl> funs = new LinkedList<>();
    public List<ConstantExpr> constants = new LinkedList<>();
    public List<ClassDecl> classes = new LinkedList<>();
    public List<VarDecl> gvars = new LinkedList<>();
    public List<VarDecl> cmvars = new LinkedList<>();

    public AST root;

    public Declarations(AST _root){
        root = _root;
    }
    public List<VarDecl> getVars(){
        return vars;
    }

    public List<FuncDecl> getFuns(){
        return funs;
    }

    public List<ClassDecl> getClasses(){
        return classes;
    }

    public List<ConstantExpr> getConst(){
        return constants;
    }

    public void addVars(VarDecl _vd){
        if(_vd.isGrobal){
            gvars.add(_vd);
        }else{
            cmvars.add(_vd);
        }
        vars.add(_vd);
    }

    public void addFuns(FuncDecl _fd){
        funs.add(_fd);
    }

    public void addConst(ConstantExpr _c){
        constants.add(_c);
    }

    public void addClass(ClassDecl _cd){
        classes.add(_cd);
    }

    public void traverse(){
        for(VarDecl vd: vars){
            System.out.println("VarDecl:: " + vd.getname() + "  " + vd.pos._String());
        }
        for(FuncDecl fd: funs){
            System.out.println("FuncDecl:: " + fd.getname() + "  " + fd.pos._String());
        }
        for(ClassDecl cd: classes){
            System.out.println("ClassDecl:: " + cd.getname() + "  " + cd.pos._String());
        }
        for(ConstantExpr c: constants){
            System.out.println("Const:: " + c._String() + " " );
        }
    }
    public void IRtraverse(){
        IRTraverse k = new IRTraverse();
        System.out.println("\n------------- IRBase Traverse -------------\n");
        System.out.println("**********    Grobal Variable    **********");
        k.setIrstream(root.grobalVarIR);
        k.traverse();
        for(FuncDecl f: funs){
            System.out.println("********** In the Function: " + f.name + " **********");
            k.setIrstream(f.ir);
            k.traverse();
        }
        System.out.println("\n------------- IRBase Traverse End -------------\n");
    }

    public String IRTranslate(){
        String res = null;
        IRTranslate t = new IRTranslate();
        res += ("\n------------- IRBase Translate -------------\n");
        res += ("**********    Grobal Variable    **********");
        t.setIrstream(root.grobalVarIR);
        res += t.translate();
        for(FuncDecl f: funs){
            res += ("********** In the Function: " + f.name + " **********");
            t.setIrstream(f.ir);
            res += t.translate();
        }
        res += ("\n------------- IRBase Traverse End -------------\n");
        return res;
    }
}
