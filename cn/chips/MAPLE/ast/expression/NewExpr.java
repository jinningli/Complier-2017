package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.parser.*;

import java.util.LinkedList;
import java.util.List;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.08, Shanghai.
 */
public class NewExpr extends Expr {
    private Type type = null;
    public List<Expr> exprlist = new LinkedList<>();
    private int dimension = 0;
    public Type retype = null;
    public Position pos;

    public Entity getEnt(){
        return null;
    }

    public NewExpr(MapleParser.TypeContext ctx){
        type = new TypeClassifier().Classify(ctx);
        pos = new Position(ctx.getStart());
    }
    public void add(Expr _e){
       exprlist.add(_e);
    }
    public void setDimension(int _d){
        dimension = _d;
    }
    public int getDimension(){
        return dimension;
    }
    public Type getretype() {
        if(retype != null){
            return  retype;
        }
        setNowScope(grobalVariable.grobal.now);
        for(Expr k : exprlist){
            if(!(k.getretype() instanceof IntType)){
                throw new WrongIndex();
            }
        }
        if(type == null || dimension == 0){
            throw new NullPtr();
        }
        if(dimension > 1) {
            List<IntType> intlist = new LinkedList<>();
            for(Expr e : exprlist){
                intlist.add((IntType)(e.getretype()));
            }
            if(retype == null){
                retype = new ArrType(dimension, type, new Position(-1, -1), intlist);
            }
            return retype;
        }
        else {
            retype = type;
            return type;
        }
    }

    public boolean issugur(){
        int size = exprlist.size();
        if(size + 1 == dimension)
            return true;
        else return false;
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "New: "+"dimension: " + dimension  + pos._String());
        System.out.println(indent + "Type:" + type._String());
        for(Expr e: exprlist){
            e.print(depth + 1);
        }

    }
}
