package cn.chips.MAPLE.ast.declare;

import cn.chips.MAPLE.asm.Oprand.ImmediateValue;
import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.ir.EXPR;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.ir.STMT;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.expression.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.List;
import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.03, Shanghai.
 */

public class VarDecl extends Declare implements Entity{
    public String name;
    public static int tmpcnt = 0;
    public Position pos;
    public Type type;
    public Expr expr = null;
    public List<STMT> irstmts = null;
    public long offset = 0;
    public boolean isClassMember = false;
    public boolean isGrobal = false;
    public boolean located = false;
    public boolean renamed = false;

    public MemoryReference memref;
    public ImmediateValue address;


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

    public void setIR(List<STMT> _irstmts){
        irstmts = _irstmts;
    }

    public String compileIR(){
        String res = "";
        for(STMT s: irstmts){
            res += s.translate() + ";\n";
        }
        return res;
    }

    public void setMemref(MemoryReference _memref){
        located = true;
        memref = _memref;
    }

    public MemoryReference getMemref() {
        if(memref == null){
            throw new NullPtr();
        }
        return memref;
    }

    public void setAddress(ImmediateValue _immaddr){
        address = _immaddr;
    }

    public ImmediateValue getAddress(){
        return address;
    }

    public String getname() {return name;}

    public long size(){
        return 8;
    }
    public long elemsize(){
        if(type instanceof ArrType)
            return ((ArrType) type).stdtype.size();
        else
            return type.size();
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
        if(grobalVariable.inclass && !grobalVariable.infunction){
            isClassMember = true;
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
                if(!(type instanceof ArrType)){
                    throw new TypeNotMatch();
                }
                if(((ArrType) type).dimension != ((ArrType) exprRetype).dimension){
                    throw new TypeNotMatch();
                }
                type = exprRetype;
            }
        }

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
                Declare d = grobalVariable.grobal.what(stdtype.getname());
                ((ClassType)stdtype).setClass((ClassDecl)d);
            }
//            if(expr.getretype() instanceof ArrType){
//                if(((ArrType) expr.getretype()).dimension != ((ArrType) type).dimension){
//                    throw new TypeNotMatch();
//                }
//            }
//            if(!(d instanceof ClassDecl)){
//                throw new NoDefined();
//            }
        }
      //  if(grobalVariable.inclass){
        if(!(grobalVariable.inclass && !grobalVariable.infunction)) {
            grobalVariable.grobal.define(name, this);
        }

        if(!grobalVariable.inclass && !grobalVariable.infunction){
            isGrobal = true;
        }
        grobalVariable.root.getDecls().addVars(this);
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

    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        if(type == null){
            System.out.println(indent + "Tmp Variable: " + name);
        }else
        System.out.println(indent + "Define Variable: "+ name  + "\t"+ type._String() );
    }

    public String translate(){
        return name + "_";
    }

    public String declTranslate(){
        String res = "";
        if(type instanceof ArrType){
            res += "long";
        }else if(type == null){
            res += "long";
        }else
            res += "long";
            res += " " + name;
        return res + "_";
    }
}
