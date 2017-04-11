package Compiler.Type;

import AssistantClass.Position;
import AssistantClass.Project;
import org.antlr.v4.runtime.tree.TerminalNode;

/**
 * Compiler - 2017
 * lijinning, 2017.04.03, Shanghai.
 */
public class BoolType extends Project implements Type {
    private boolean data;
    private Position pos;
    public BoolType(TerminalNode ctx){
        String bl = ctx.getText();
        data = bl.equals("true");
        pos = new Position(ctx.getSymbol());
    }
    public BoolType(Position _p){
        data = false;
        pos = _p;
    }
    public BoolType(boolean _d, Position _p){
        data = _d;
        pos = _p;
    }
    public String _String(){
        return "BoolType " + pos._String() + "\tWith value: " + data;
    }
    public Position getpos(){return pos;};
    public String getname(){return "";};
    public int getint(){return 0;};
    public boolean getbool(){return data;}
    public String typename(){
        return "bool";
    }
}
