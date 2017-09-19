package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.Objects;

/**
 * Created by lijinning on 2017/4/2.
 */
public class AssignExpr extends Expr {
    public Expr left = null;
    public Expr right = null;
    public Position pos = null;
    public Type retype = null;

    public AssignExpr(Expr _l, Expr _r, Position _p){
        left = _l;
        right = _r;
        pos = _p;
    }
    public Entity getEnt(){
        return left.getEnt();
    }
    public Type getretype(){
        if(retype != null){
            return retype;
        }
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
        if(right instanceof NewExpr && rt instanceof ArrType){
//            if(((ArrType)left.getretype()).dimension != ((ArrType)right.getretype()).dimension){
//                throw new TypeNotMatch();
//            }
            ((ArrType)left.getretype()).dmsList = ((ArrType) rt).dmsList;//////
        }
        retype = left.getretype();
        return retype;
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
