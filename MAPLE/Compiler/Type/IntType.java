package Compiler.Type;

import AssistantClass.Position;

/**
 * Compiler - 2017
 * lijinning, 2017.04.02, Shanghai.
 */
public class IntType implements Type {
    private int data;
    private Position pos;
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
    public String _String(){
        return "IntType " + pos._String() + "\tWith value: " + data;
    }
    public TypeList getType(){
        return TypeList.Int;
    }
    public Position getpos(){return pos;};
    public String getname(){return "";};
    public int getint(){return data;};
    public boolean getbool(){return false;};
}