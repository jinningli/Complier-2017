package cn.chips.MAPLE.ast.type;


import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;

/**
 * Compiler - 2017
 * lijinning, 2017.04.03, Shanghai.
 */
public class VoidType extends Project implements Type {
    public final String name = "void";
    public Position pos;
    public VoidType(){}
    public VoidType(Position _p){
        pos = _p;
    }
    public Position getpos(){return pos;};
    public String getname(){return name;};
    public int getint(){return 0;};
    public boolean getbool(){return false;};
    public String _String(){
        return "VoidType " + pos._String() + "\tWith name: " + name;
    }
    public String typename() {
        return "void";
    }
}