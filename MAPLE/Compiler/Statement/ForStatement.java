package Compiler.Statement;

import AssistantClass.Position;
import Compiler.Error.NoDefined;
import Compiler.Error.TypeNotMatch;
import Compiler.Expression.AssignExpr;
import Compiler.Expression.Expr;
import Compiler.FrontEnd.Main;
import Compiler.Type.BoolType;
import Compiler.Type.NullType;
import Compiler.Type.Type;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by lijinning on
 * 2017/4/2.
 */
public class ForStatement extends Statement{
    public String name = "for";
    public Position pos;
    public Statement stmt;
    public List<Expr> expr = new LinkedList<>();
    public List<Type> type = new LinkedList<>();
    public ForStatement(Statement _s, Position _p){
        stmt = _s;
        pos = _p;
    }
    public void add(Expr _e){
        expr.add(_e);
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
        Main.incircle.push(0);
        for(int i = 0; i < expr.size(); i ++){
            if(!(expr.get(i).getretype() instanceof NullType))
            type.add(expr.get(i).getretype());
        }
//        if(!(expr.get(0).getretype() instanceof NullType || expr.get(0) instanceof AssignExpr)){ ////can three expr empty?
//            System.err.println(pos._String());
//            throw new TypeNotMatch();
//        }
//        if(!(expr.get(1).getretype() instanceof NullType || type.get(1) instanceof BoolType)){
//            throw new TypeNotMatch();
//        }
        if(stmt != null)
            stmt.check();
       Main.incircle.pop();
    }
}
