package Compiler.Type;

import AssistantClass.Position;
import AssistantClass.Project;
import Compiler.Error.NullPtr;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ArrType extends Project implements Type{
    public int dimension = 0;
    public Type stdtype = null;
    public Position pos = null;
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
        if(stdtype == null){
            throw new NullPtr();
        }
        return "arr:"+stdtype.typename()+":"+dimension;
    }
    }
