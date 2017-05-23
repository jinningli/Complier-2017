package cn.chips.MAPLE.utils;

import cn.chips.MAPLE.ast.declare.ClassDecl;
import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.ast.expression.ConstantExpr;

import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public class Declarations {
    Set<VarDecl> vars = new LinkedHashSet<>();
    Set<FuncDecl> funs = new LinkedHashSet<>();
    Set<ConstantExpr> constants = new LinkedHashSet<>();
    Set<ClassDecl> classes = new LinkedHashSet<>();

    public Set<VarDecl> getVars(){
        return vars;
    }

    public Set<FuncDecl> getFuns(){
        return funs;
    }

    public Set<ClassDecl> getClasses(){
        return classes;
    }

    public Set<ConstantExpr> getConst(){
        return constants;
    }

    public void addVars(VarDecl _vd){
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
}
