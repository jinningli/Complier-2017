package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.asm.Oprand.ImmediateValue;
import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.exception.NullPtr;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.ast.type.*;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class ConstantExpr extends Expr implements Entity{
    public Type type;
    public Position pos;

    public MemoryReference memref;
    public ImmediateValue address;
    public boolean located = false;

    public void setMemref(MemoryReference _memref){
        memref = _memref;
        located = true;
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

    public Entity getEnt(){
        return this;
    }
    public ConstantExpr(Type _t){
        type = _t;
        pos = _t.getpos();
    }
    public Type getretype() {
        if(nowScope == null)
        setNowScope(grobalVariable.grobal.now);
        return type;
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
       System.out.println(indent + type._String()+pos._String());
    }
    public Type getType(){
        return type;
    }
    public String getString(){
        if(type instanceof StringType){
            return type.getname();
        }
        else return "";
    }
    public int getInt(){
        if(type instanceof IntType){
            return type.getint();
        }
        else return -233;
    }
    public boolean getBool(){
        if(type instanceof BoolType){
            return type.getbool();
        }
        else return false;
    }
    public String _String(){
        if(type instanceof StringType){
            return type.getname();
        }else if(type instanceof IntType){
            return String.valueOf(type.getint());
        }else if(type instanceof BoolType){
            return String.valueOf(type.getbool());
        }
        return "NULL";
    }

    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Constant Variable: "+ type._String());
    }

    public String translate(){
        if(type instanceof IntType){
            return String.valueOf(type.getint());
        }else if(type instanceof BoolType){
            return String.valueOf(type.getbool());
        }else if(type instanceof VoidType){
            return "void";
        }else if(type instanceof StringType){
            return "\"" + type.getname() + "\"";
        }
        throw new NullPtr();
    }
}
