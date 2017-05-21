package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.ast.type.*;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class ConstantExpr extends Expr {
    private Type type;
    private Position pos;
    public ConstantExpr(Type _t){
        type = _t;
        pos = _t.getpos();
    }
    public Type getretype() {
        setNowScope(grobalVariable.grobal.now);
        return type;
    }
}
