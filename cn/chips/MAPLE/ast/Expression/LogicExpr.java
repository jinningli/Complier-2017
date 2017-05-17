package cn.chips.MAPLE.ast.Expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.Type.*;

import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.12, Shanghai.
 */
public class LogicExpr extends Expr {
    private Expr left = null;
    private Expr right = null;
    private String opt = "";
    private Position pos;
    public LogicExpr(Expr _l, Expr _r, String _o, Position _p){
        left = _l;
        right = _r;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if(Objects.equals(opt, "")){
            throw new NullPtr();
        }
        if(left == null || right == null){
            throw new NullPtr();
        }
        Type lt = left.getretype();
        Type rt = right.getretype();
        if(Objects.equals(opt, "&&") || Objects.equals(opt, "||")) {
            if (!(lt instanceof BoolType)) {
                throw new TypeNotMatch();
            }
            if (!(rt instanceof BoolType)) {
                throw new TypeNotMatch();
            }
        }
        if(lt instanceof NullType || rt instanceof NullType){
            return new BoolType(true, pos);
        }
        if(!Objects.equals(lt.typename(), rt.typename())){
            System.err.println(pos._String());
            throw new TypeNotMatch();
        }
        return new BoolType(pos);
    }
}
