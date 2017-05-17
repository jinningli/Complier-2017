package cn.chips.MAPLE.ast.Expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.Type.*;
import cn.chips.MAPLE.compiler.Main;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ArrIndex extends Expr {
    public Expr body = null;
    public Expr index = null;
    public Type retype = null;
    public Position pos;
    public ArrIndex(Expr _b, Expr _i, Position _p){
        body = _b;
        index = _i;
        pos = _p;
    }
    public Type getretype(){
        if(retype != null)
            return retype;
        if(index == null || body == null)
            throw new NullPtr();
        Type br =  body.getretype();
        Type ir = index.getretype();
        if(!(ir instanceof IntType)){
            throw new WrongType();
        }
        if(!(br instanceof ArrType)){
            throw new WrongType();
        }////////////////////////////////////////////////////
        Type brstdtype = ((ArrType)br).stdtype;
        if(brstdtype instanceof ClassType){
            String n = ((ClassType)brstdtype).getname();
            Main.grobal.what(n);
        }
        if(((ArrType) br).dimension == 1){
            throw new WrongIndex();
        }
        if(((ArrType) br).dimension == 2){
            return ((ArrType) br).stdtype;
        }else{
            ArrType rbr = (ArrType) br;
            return new ArrType(rbr.dimension - 1, rbr.stdtype, rbr.pos);
        }
    }
}
