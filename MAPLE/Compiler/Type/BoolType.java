package Compiler.Type;

import AssistantClass.Position;

/**
 * Compiler - 2017
 * lijinning, 2017.04.03, Shanghai.
 */
public class BoolType implements Type {
    boolean data;
    Position pos;
    public BoolType(Position _p){
        data = false;
        pos = _p;
    }
    public BoolType(boolean _d, Position _p){
        data = _d;
        pos = _p;
    }
    public Position getpos(){return pos;};
    public String getname(){return "";};
    public int getint(){return 0;};
    public boolean getbool(){return data;}
}
