package cn.chips.MAPLE.ast.type;


import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;

import org.antlr.v4.runtime.tree.TerminalNode;

/**
 * Compiler - 2017
 * lijinning, 2017.04.02, Shanghai.
 */
public class StringType extends Project implements Type {
    public String data;
    public Position pos;
    public StringType(TerminalNode ctx){
        data = ctx.getText();
        pos = new Position(ctx.getSymbol());
    }
    public StringType(String _d)
    {
        data = _d;
        pos = new Position(-1, -1);
    }
    public StringType(String _d, Position _pos)
    {
        data = _d;
        pos = _pos;
    }
    public StringType(Position _pos)
    {
        data = "";
        pos = _pos;
    }
    public String _String(){
        return "StringType " + pos._String() + "\tWith Value: " + data;
    }
    public Position getpos(){
        return pos;
    }
    public String getname(){
        return data;
    }
    public int getint(){return 0;};
    public boolean getbool(){return false;};
    public String typename() {
        return "string";
    }
}
