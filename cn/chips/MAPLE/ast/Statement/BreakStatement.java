package cn.chips.MAPLE.ast.Statement;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.compiler.Main;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class BreakStatement extends Statement{
    public String name = "break";
    public Position pos;
    public BreakStatement(Position _p){
        pos = _p;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
        if(Main.incircle.empty()){
            System.err.println(pos._String());
            throw new NoDefined();
        }
    }
}
