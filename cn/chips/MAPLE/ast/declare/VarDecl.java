package cn.chips.MAPLE.ast.declare;

import cn.chips.MAPLE.ast.statement.Statement;
import cn.chips.MAPLE.ir.EXPR;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.ir.IR;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.expression.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.compiler.Main;
import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.03, Shanghai.
 */

public class VarDecl extends Declare implements Entity{
    public String name;
    public Position pos;
    public Type type;
    public Expr expr = null;
    public EXPR ir = null;
    public long offset = 0;
    public boolean isGrobal = false;

    public VarDecl(Position _p){
        pos = _p;
    }

    public void setName(String _s){
        name = _s;
    }

    public void setType(Type _t){
        type = _t;
    }

    public void setExpr(Expr _e){
        expr = _e;
    }

    public void setIR(EXPR _ir){
        ir = _ir;
    }

    public String getname() {return name;}

    public long length(){
        return type.length();
    }
    public long elemsize(){
        if(type instanceof ArrType)
            return ((ArrType) type).stdtype.length();
        else
            return type.length();
    }
    public long getOffset(){
        return offset;
    }
    public String _String(){
        return "VarDecl:: " + name;
    }
    public Position getpos() {
        return pos;
    }
    public void check(){
        setNowScope(grobalVariable.grobal.now);
        if(type instanceof VoidType){
            throw new ExpressionError();
        }
        if(type instanceof ClassType){
            Declare d = grobalVariable.grobal.what(type.getname());
            if(!(d instanceof ClassDecl)){
                throw new NoDefined();
            }
            ((ClassType) type).setClass((ClassDecl)d);
        }
        if(type instanceof ArrType){
            Type stdtype = ((ArrType) type).stdtype;
            if(stdtype instanceof ClassType){
                grobalVariable.grobal.what(stdtype.getname());
            }
//            if(!(d instanceof ClassDecl)){
//                throw new NoDefined();
//            }
        }
        if(expr != null) {
            Type exprRetype = expr.getretype();
            if (!(exprRetype instanceof NullType)) {
                if (!Objects.equals(expr.getretype().typename(), type.typename())) {
//                System.err.println(expr.getretype().typename());
//                System.err.println(type.typename());
                    System.err.println(pos._String());
                    throw new TypeNotMatch();
                }
            } else if (!(type instanceof ClassType || type instanceof ArrType)) {
                System.err.println(pos._String());
                throw new TypeNotMatch();
            }
            if (expr instanceof NewExpr && exprRetype instanceof ArrType) {
                type = exprRetype;
            }
        }
      //  if(grobalVariable.inclass){
        if(!(grobalVariable.inclass && !grobalVariable.infunction)) {
            grobalVariable.grobal.define(name, this);
        }

        if(!grobalVariable.inclass && !grobalVariable.infunction){
            isGrobal = true;
        }
       // }

    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Define Variable: "+ name  + "\t"+ type._String() );
        if(expr == null){
            System.out.println(indent + "\tini: \n" + indent +"\t\tNULL");
        }else{
            System.out.println(indent + "\tini:");
            expr.print(depth + 1);
        }

    }
}
