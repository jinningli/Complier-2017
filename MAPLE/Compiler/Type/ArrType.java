package Compiler.Type;

import AssistantClass.Position;
import AssistantClass.Project;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ArrType extends Project implements Type{
    public int dimension = 0;
    public Type stdtype;
    public Position pos;
    public ArrType(int _d, Type _t, Position _p){
        dimension = _d;
        stdtype = _t;
        pos = _p;
    }
    public String _String(){
        return "ArrType " + pos._String() + "\tWith Type: " + dimension + " Dimension: " + dimension;
    }
    public Position getpos(){return pos;};
    public String getname(){return "";};
    public int getint(){return 0;};
    public boolean getbool(){return false;};
    public String typename() {
        return "arr";
    }
    }
