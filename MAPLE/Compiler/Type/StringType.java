package Compiler.Type;

import AssistantClass.Position;

/**
 * Compiler - 2017
 * lijinning, 2017.04.02, Shanghai.
 */
public class StringType implements Type {
    public String data;
    public Position pos;
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
    public TypeList getType(){
        return TypeList.String;
    }
    public Position getpos(){
        return pos;
    }
    public String getname(){
        return data;
    }
    public int getint(){return 0;};
    public boolean getbool(){return false;};
}
