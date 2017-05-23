package cn.chips.MAPLE.ast.statement;

import cn.chips.MAPLE.ast.expression.Expr;
import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class ExprStatement extends Statement {
    public String name = "expression";
    public Position pos;
    public Expr expr = null;
    public Type retype = null;
    public ExprStatement(Expr _e, Position _p){
        pos = _p;
        expr = _e;
    }
    public void check(){
        setNowScope(grobalVariable.grobal.now);
        if(expr == null){
            throw new NullPtr();
        }
        retype = expr.getretype();
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void print(int depth) {
        String indent = "";
        int dep = depth;
        while (dep > 0) {
            indent += "\t";
            dep--;
        }
        System.out.println(indent + "ExprStmt:" + pos._String());
        if(expr == null){
            System.out.println(indent + "\tNULL");
        }else{
            expr.print(depth + 1);
        }
    }
}
