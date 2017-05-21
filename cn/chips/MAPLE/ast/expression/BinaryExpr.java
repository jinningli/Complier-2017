package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class BinaryExpr extends Expr {
    private Expr left = null;
    private Expr right = null;
    private String opt = "";
    private Type lt = null;
    private Type rt = null;
    private Position pos;
    public BinaryExpr(Expr _l, Expr _r, String _o, Position _p){
        left = _l;
        right = _r;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        setNowScope(grobalVariable.grobal.now);
        if(left == null || right == null){
            throw new NullPtr();
        }
        lt = left.getretype();
        rt = right.getretype();
        switch (opt){
            case "+":
                if((!(lt instanceof IntType))&& !(lt instanceof StringType)){
                    throw new WrongType();
                }
                if((!(rt instanceof IntType))&& !(rt instanceof StringType)){
                    throw new WrongType();
                }
                break;
            default:
                if((!(lt instanceof IntType))||(!(rt instanceof IntType))){
                    throw new WrongType();
                }
        }
        if(!Objects.equals(lt.typename(), rt.typename())) {
            throw new WrongType();
        }
        return lt;
    }
}
