package Compiler.Statement;

import AssistantClass.Position;
import Compiler.Error.NullPtr;
import Compiler.Error.TypeNotMatch;
import Compiler.Expression.AssignExpr;
import Compiler.Expression.Expr;
import Compiler.FrontEnd.Main;
import Compiler.Type.BoolType;

/**
 * Created by lijinning on 2017/4/2.
 */
public class WhileStatement extends Statement{
    public String name = "while";
    public Position pos;
    public Statement stmt;
    public Expr expr = null;
    public WhileStatement(Expr _e, Statement _s, Position _p){
        expr = _e;
        stmt = _s;
        pos = _p;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
        Main.incircle = true;
        if(expr == null){
            throw new NullPtr();
        }
        if(!(expr.getretype() instanceof BoolType)){
            throw new TypeNotMatch();
        }
        stmt.check();
        Main.incircle = false;
    }
}
