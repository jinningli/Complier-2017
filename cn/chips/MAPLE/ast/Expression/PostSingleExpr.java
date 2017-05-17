package cn.chips.MAPLE.ast.Expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.Type.*;

import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class PostSingleExpr extends Expr {
    private String opt = "";
    private Expr body = null;
    private Position pos;
    public PostSingleExpr(Expr _b, String _o, Position _p){
        body = _b;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if((Objects.equals(opt, "")) || (body == null)){
            throw new NullPtr();
        }
        if(body instanceof PostSingleExpr){
            throw new ExpressionError();
        }
        if(!(body.getretype() instanceof IntType || body.getretype() instanceof BoolType)){
            throw new TypeNotMatch();
        }
        return body.getretype();
    }
}
