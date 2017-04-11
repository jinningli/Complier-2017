package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Declare.Declare;
import Compiler.Error.NullPtr;
import Compiler.Error.WrongIndex;
import Compiler.Error.WrongType;
import Compiler.FrontEnd.Main;
import Compiler.Type.ArrType;
import Compiler.Type.ClassType;
import Compiler.Type.IntType;
import Compiler.Type.Type;

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
            rbr.dimension --;
            return rbr;
        }
    }
}
