package cn.chips.MAPLE.ast.type;


import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;
import org.antlr.v4.runtime.tree.TerminalNode;

/**
 * Compiler - 2017
 * lijinning, 2017.04.02, Shanghai.
 */
public class IntType extends Project implements Type {
    public int data = 0;
    public Position pos;
    public final static long intsize = 8;

    public IntType(TerminalNode ctx){
        data = Integer.parseInt(ctx.getText());
        pos = new Position(ctx.getSymbol());
    }
    public IntType(int _d)
    {
        data = _d;
        pos = new Position(-1, -1);
    }
    public IntType(int _d, Position _pos)
    {
        data = _d;
        pos = _pos;
    }
    public IntType(Position _pos)
    {
        data = 0;
        pos = _pos;
    }
    public long size(){
        return intsize;
    }
    public String _String(){
        return "IntType " + "\tWith value: " + data + "\t" + pos._String();
    }
    public Position getpos(){return pos;};
    public String getname(){return "";};
    public int getint(){return data;};
    public boolean getbool(){return false;};
    public String typename() {
        return "long";
    }
}
