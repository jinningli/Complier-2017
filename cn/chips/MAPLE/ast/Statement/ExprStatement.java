package cn.chips.MAPLE.ast.Statement;

import cn.chips.MAPLE.ast.Expression.Expr;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.Type.*;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class ExprStatement extends Statement {
    public String name = "Expression";
    public Position pos;
    private Expr expr = null;
    private Type retype = null;
    public ExprStatement(Expr _e, Position _p){
        pos = _p;
        expr = _e;
    }
    public void check(){
        if(expr == null){
            throw new NullPtr();
        }
        retype = expr.getretype();
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
}
