package Compiler.Type;

import AssistantClass.Position;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ArrType implements Type {
    public int dimension = 0;
    public Type stdtype;
    public Position pos;
    ArrType(int _d, Type _t, Position _p){
        dimension = _d;
        stdtype = _t;
        pos = _p;
    }
    public Position getpos(){return pos;};
    public String getname(){return "";};
    public int getint(){return 0;};
    public boolean getbool(){return false;};
}
