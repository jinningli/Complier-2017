package Compiler.Type;

import AssistantClass.Position;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ClassType implements Type{
    public String name;
    public Position pos;
    public ClassType(String _n, Position _p){
        name = _n;
        pos = _p;
    }
    public String _String(){
        return "ClassType " + pos._String() + "\tWith name: " + name;
    }
    public TypeList getType(){
        return TypeList.Class;
    }
    public Position getpos(){return pos;};
    public String getname(){return name;};
    public int getint(){return 0;};
    public boolean getbool(){return false;};
}
