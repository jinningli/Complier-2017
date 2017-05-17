package cn.chips.MAPLE.ast.Expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.Type.*;

import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class PreSingleExpr extends Expr {
    private String opt = "";
    private Expr body = null;
    private Position pos;
    public PreSingleExpr(Expr _b, String _o, Position _p){
        body = _b;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if ((Objects.equals(opt, "")) || (body == null)) {
            throw new NullPtr();
        }
        if (!(body.getretype() instanceof IntType || body.getretype() instanceof BoolType)) {
            throw new TypeNotMatch();
        }
//        if(Objects.equals(opt, "++") ||
//                Objects.equals(opt, "--") ||
//                Objects.equals(opt, "-") ||
//                Objects.equals(opt, "+") ||
//                Objects.equals(opt, "!")){
//            return body.getretype();
//        }
        if(Objects.equals(opt, "!")){
            return new BoolType(new Position(-1, -1));
        }else if(Objects.equals(opt, "~")){
            return body.getretype();
        }else if(Objects.equals(opt, "-") || Objects.equals(opt, "+")){
            return body.getretype();
        }else if(Objects.equals(opt, "--") || Objects.equals(opt, "++")){
            return body.getretype();
        }
    //    System.err.println(pos._String());
        return body.getretype();
//        throw new TypeNotMatch();
    }
}
