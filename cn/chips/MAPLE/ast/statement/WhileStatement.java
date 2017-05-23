package cn.chips.MAPLE.ast.statement;


import cn.chips.MAPLE.ast.expression.Expr;
import cn.chips.MAPLE.ast.type.BoolType;
import cn.chips.MAPLE.utils.grobalVariable;
import cn.chips.MAPLE.exception.NullPtr;
import cn.chips.MAPLE.exception.TypeNotMatch;
import cn.chips.MAPLE.utils.Position;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.17, Shanghai.
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
        setNowScope(grobalVariable.grobal.now);
        grobalVariable.incircle.push(0);
        if(expr == null){
            throw new NullPtr();
        }
        if(!(expr.getretype() instanceof BoolType)){
            throw new TypeNotMatch();
        }
        if(stmt != null)
        stmt.check();
        grobalVariable.incircle.pop();
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "While: " + pos._String());
        if(expr == null){
            System.out.println(indent + "\tNULL");
        }else{
            expr.print(depth + 1);
        }
        stmt.print(depth + 1);
    }
}
