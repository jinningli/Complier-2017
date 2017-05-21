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
    public List<Pair<Expr, Statement>> iflist = new LinkedList<>();
    public Statement elsestmt = null;
    int elseIfCnt = 0;
    public IfStatement(Position _p){
        pos = _p;
    }
    public void setElseStmt(Statement _s){
        elsestmt = _s;
    }
    public boolean ElseEmpty(){
        return elsestmt == null;
    }
    public void add(Expr _e, Statement _s){
        if(!iflist.isEmpty())
            elseIfCnt ++;
        iflist.add(new Pair<>(_e, _s));
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
        setNowScope(grobalVariable.grobal.now);
        int size = iflist.size();
        for(int i = 0; i < size; i ++){
            if(!(iflist.get(i).getFirst().getretype() instanceof BoolType)){
                throw new TypeNotMatch();
            }
            if(iflist.get(i).getSecond() != null)
            iflist.get(i).getSecond().check();
        }
        if(elsestmt!=null)
        elsestmt.check();
    }
}
