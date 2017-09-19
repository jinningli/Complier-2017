package cn.chips.MAPLE.ast.statement;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class ContinueStatement extends Statement {
    public String name = "continue";
    public Position pos;
    public ContinueStatement(Position _p){
        pos = _p;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
        if(grobalVariable.incircle.empty()){
            throw new NoDefined();
        }
        setNowScope(grobalVariable.grobal.now);
    }
    public void print(int depth) {
        String indent = "";
        int dep = depth;
        while (dep > 0) {
            indent += "\t";
            dep--;
        }
        System.out.println(indent + "Continue!" + pos._String());
    }
}
