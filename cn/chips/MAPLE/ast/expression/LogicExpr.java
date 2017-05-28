package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.12, Shanghai.
 */
public class LogicExpr extends Expr {
    public Expr left = null;
    public Expr right = null;
    public String opt = "";
    public Position pos;
    public Type retype = null;

    public Entity getEnt(){
        return left.getEnt();
    }
    public LogicExpr(Expr _l, Expr _r, String _o, Position _p){
        left = _l;
        right = _r;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if(retype != null){
            return retype;
        }
        setNowScope(grobalVariable.grobal.now);
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
            retype = new BoolType(true, pos);
            return retype;
        }
        if(!Objects.equals(lt.typename(), rt.typename())){
            System.err.println(pos._String());
            throw new TypeNotMatch();
        }
        retype = new BoolType(pos);
        return retype;
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Logic: " + pos._String());
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
