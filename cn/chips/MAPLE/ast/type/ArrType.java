package cn.chips.MAPLE.ast.type;


import cn.chips.MAPLE.exception.NullPtr;
import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;

import java.util.LinkedList;
import java.util.List;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.17, Shanghai.
 */
public class ArrType extends Project implements Type{
    public int dimension = 0;
    public List<IntType> dmsList = null;
    public Type stdtype = null;
    public Position pos = null;
    public ArrType(int _d, Type _t, Position _p, List<IntType> _dmsl){
        dimension = _d;
        stdtype = _t;
        pos = _p;
        dmsList = _dmsl;
    }
    public String _String(){
        return "ArrType " + "With type: " + dimension + " Dimension: " + dimension + "\t" + pos._String();
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
    public long size(){
        return 8;
    }
    public int inlinesize(){
        return dmsList.get(dimension - 2).getint();
    }
}
