package Compiler.Statement;

import AssistantClass.Position;
import Compiler.Error.NoDefined;
import Compiler.FrontEnd.Main;

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
        if(!Main.incircle){
            throw new NoDefined();
        }
    }
}
