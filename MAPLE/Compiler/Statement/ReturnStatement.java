package Compiler.Statement;

import AssistantClass.Position;
import Compiler.Error.NoDefined;
import Compiler.Error.NullPtr;
import Compiler.Expression.Expr;
import Compiler.FrontEnd.Main;
import Compiler.Type.Type;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ReturnStatement extends Statement{
    public String name = "return";
    public Position pos = null;
    public Expr expr = null;
    public Type retype = null;
    public ReturnStatement(Expr _e, Position _p){
        expr = _e;
        pos = _p;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public Type getretype(){
        if(expr == null){
            throw new NullPtr();
        }
        return expr.getretype();
    }
    public void check(){
        if(!Main.infunction){
            throw new NoDefined();
        }
        if(expr == null){
            throw new NullPtr();
        }
        retype = expr.getretype();
    }
}
