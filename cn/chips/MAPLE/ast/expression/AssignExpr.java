package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.Objects;

/**
 * Created by lijinning on 2017/4/2.
 */
public class AssignExpr extends Expr {
    private Expr left = null;
    private Expr right = null;
    private Position pos = null;
    public AssignExpr(Expr _l, Expr _r, Position _p){
        left = _l;
        right = _r;
        pos = _p;
    }
    public Type getretype(){
        setNowScope(grobalVariable.grobal.now);
        if(left == null || right == null){
            throw new NullPtr();
        }

        if(!(left instanceof Identifier || left instanceof ArrIndex || left instanceof Member)){
            System.err.println(pos._String());
            throw new ExpressionError();
        }
        Type lt = left.getretype();
        Type rt = right.getretype();
        if((!Objects.equals(lt.typename(), rt.typename()))&&(!(rt instanceof NullType))){
            System.err.println(pos._String());
            throw new TypeNotMatch();
        }
        return left.getretype();
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Assign: " + pos._String());
        System.out.println(indent + "left:");
        if(left == null){
            System.out.println(indent + "\tnull");
        }else {
            left.print(depth + 1);
        }
        System.out.println(indent + "right:");
        if(right == null){
            System.out.println(indent + "\tnull");
        }else {
            right.print(depth + 1);
        }
    }
}
