package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.ast.expression.ConstantExpr;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Str extends EXPR {
    protected ConstantExpr ent = null;

    public Str(ConstantExpr _cstr){
        ent = _cstr;
    }
    public String getValue(){
        return ent.getString();
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Str:");
        ent.traverse(depth + 1);
    }


}
