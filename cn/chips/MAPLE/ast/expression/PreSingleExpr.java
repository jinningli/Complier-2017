package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class PreSingleExpr extends Expr {
    public String opt = "";
    public Expr body = null;
    public Position pos;
    public PreSingleExpr(Expr _b, String _o, Position _p){
        body = _b;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        setNowScope(grobalVariable.grobal.now);
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
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "PreExpr: " + opt + pos._String());
        body.print(depth + 1);
    }
}
