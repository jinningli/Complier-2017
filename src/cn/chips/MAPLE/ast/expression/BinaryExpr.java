package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class BinaryExpr extends Expr {
    public Expr left = null;
    public Expr right = null;
    public String opt = "";
    public Type lt = null;
    public Type rt = null;
    public Position pos;

    public Entity getEnt(){
        return left.getEnt();
    }
    public BinaryExpr(Expr _l, Expr _r, String _o, Position _p){
        left = _l;
        right = _r;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if(lt != null){
            return lt;
        }
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
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Binary: " + pos._String());
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
        System.out.println(indent + "opt:\n" + indent + opt);
    }
}
