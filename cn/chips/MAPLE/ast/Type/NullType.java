package cn.chips.MAPLE.ast.Type;


import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;
import org.antlr.v4.runtime.tree.TerminalNode;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class NullType extends Project implements Type {
    public String name = "null";
    public Position pos;
    public NullType(Position _p){pos = _p;}
    public  NullType(TerminalNode ctx){
        pos = new Position(ctx.getSymbol());
    }
    public String _String(){
        return "NullType " + pos._String();
    }
    public Position getpos(){
        return pos;
    }
    public String getname(){
        return name;
    }
    public int getint(){
        return 0;
    }
    public boolean getbool(){
        return false;
    }
    public String typename() {
        return "null";
    }
}
