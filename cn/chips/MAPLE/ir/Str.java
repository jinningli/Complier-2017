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



}
