package Compiler.Statement;


import AssistantClass.Pair;
import AssistantClass.Position;
import Compiler.Error.TypeNotMatch;
import Compiler.Expression.AssignExpr;
import Compiler.Expression.Expr;
import Compiler.FrontEnd.Main;
import Compiler.Type.BoolType;

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
        int size = iflist.size();
        for(int i = 0; i < size; i ++){
            if(!(iflist.get(i).getFirst().getretype() instanceof BoolType)){
                throw new TypeNotMatch();
            }
            iflist.get(i).getSecond().check();
        }
        if(elsestmt!=null)
        elsestmt.check();
    }
}
