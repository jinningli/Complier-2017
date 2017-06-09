package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.asm.Oprand.ImmediateValue;
import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.ast.expression.ConstantExpr;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Str extends EXPR {
    public ConstantExpr value;

    public Str(ConstantExpr _value){
        value = _value;
    }
    public String getValue(){
        return value.getString();
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Str: " + value.getString());
    }

    public ImmediateValue asmValue(){
        return value.address;
    }

    public MemoryReference memref(){
        return value.getMemref();
    }

    public String translate(){
        return value.translate();
    }
}
