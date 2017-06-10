package cn.chips.MAPLE.ast.statement;

import cn.chips.MAPLE.ast.expression.AssignExpr;
import cn.chips.MAPLE.ast.expression.Expr;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

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
        setNowScope(grobalVariable.grobal.now);
        grobalVariable.incircle.push(0);
        if(!(stmt instanceof BlockStatement))
            grobalVariable.grobal.newLayer();
        for(int i = 0; i < expr.size(); i ++){
            if(!(expr.get(i).getretype() instanceof NullType))
                type.add(expr.get(i).getretype());
            else
                type.add(new NullType(pos));
        }
        if(!(expr.get(0).getretype() instanceof NullType || expr.get(0) instanceof AssignExpr)){ ////can three expr empty?
            System.err.println(pos._String());
            throw new TypeNotMatch();
        }
        if(!(expr.get(1).getretype() instanceof NullType || type.get(1) instanceof BoolType)){
            throw new TypeNotMatch();
        }
        if(stmt != null)
            stmt.check();
        if(!(stmt instanceof BlockStatement))
            grobalVariable.grobal.exitLayer();
       grobalVariable.incircle.pop();
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "For: " + pos._String());
        System.out.println(indent + "List:");
        for(Expr e: expr){
            e.print(depth + 1);
        }
        System.out.println(indent + "Body:");
        if(stmt != null){
            stmt.print(depth + 1);
        }
    }
}
