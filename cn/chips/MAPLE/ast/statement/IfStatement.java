package cn.chips.MAPLE.ast.statement;

import cn.chips.MAPLE.ast.expression.Expr;
import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.LinkedList;
import java.util.List;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.08, Shanghai.
 */
public class IfStatement extends Statement{
    public String name = "if";
    public Position pos;
    public Expr expr = null;
    public Statement thenbody = null;
    public Statement elsebody = null;

    public IfStatement(Position _p){
        pos = _p;
    }

    public void setElseBody(Statement _s){
        elsebody = _s;
    }

    public void setThenBody(Statement _s){
        thenbody = _s;
    }

    public void setExpr(Expr _e){
        expr = _e;
    }

    public boolean ElseEmpty(){
        return elsebody == null;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
        setNowScope(grobalVariable.grobal.now);
        if(!(expr.getretype() instanceof BoolType)){
            throw new TypeNotMatch();
        }
        if(thenbody != null){
            thenbody.check();
        }
        if(elsebody != null){
            elsebody.check();
        }
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "If: " + pos._String());
        System.out.println(indent + " Cond: ");
        expr.print(depth + 1);
        System.out.println(indent + " Then: ");
        if(thenbody == null){
            System.out.println(indent + "\tNULL");
        }else {
            thenbody.print(depth + 1);
        }
        System.out.println(indent + " Else: ");
        if(elsebody == null){
            System.out.println(indent + "\tNULL");
        }else{
            elsebody.print(depth + 1);
        }
    }
}
