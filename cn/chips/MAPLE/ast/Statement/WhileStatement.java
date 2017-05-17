package cn.chips.MAPLE.ast.Statement;


import cn.chips.MAPLE.ast.Expression.Expr;
import cn.chips.MAPLE.ast.Type.BoolType;
import cn.chips.MAPLE.compiler.Main;
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
        Main.incircle.push(0);
        if(expr == null){
            throw new NullPtr();
        }
        if(!(expr.getretype() instanceof BoolType)){
            throw new TypeNotMatch();
        }
        if(stmt != null)
        stmt.check();
        Main.incircle.pop();
    }
}
