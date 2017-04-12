package Compiler.Statement;

import AssistantClass.Position;
import Compiler.Error.NoDefined;
import Compiler.Error.TypeNotMatch;
import Compiler.Expression.AssignExpr;
import Compiler.Expression.Expr;
import Compiler.FrontEnd.Main;
import Compiler.Type.BoolType;
import Compiler.Type.Type;

/**
 * Created by lijinning on
 * 2017/4/2.
 */
public class ForStatement extends Statement{
    public String name = "for";
    public Position pos;
    public Statement stmt;
    public Expr[] expr = new Expr[3];
    public Type[] type = new Type[3];
    public ForStatement(Expr _e1, Expr _e2, Expr _e3,Statement _s, Position _p){
        expr[0] = _e1;  expr[1] = _e2;  expr[2] = _e3;
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
       for(int i = 0; i < 3; i ++){
           type[i] = expr[i].getretype();
        }
        if(!(expr[0] instanceof AssignExpr)){ ////can three expr empty?
           throw new TypeNotMatch();
        }
        if(!(type[1] instanceof BoolType)){
            throw new TypeNotMatch();
        }
       stmt.check();
       Main.incircle = false;
    }
}
