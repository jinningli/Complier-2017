package cn.chips.MAPLE.ast.type;


import cn.chips.MAPLE.ast.declare.ClassDecl;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.17, Shanghai.
 */
public class ClassType extends Project implements Type{
    public String name;
    public Position pos;
    public ClassDecl cls;
    public ClassType(String _n, Position _p){
        name = _n;
        pos = _p;
    }
    public String _String(){
        return "ClassType " + pos._String() + "\tWith type name: " + name;
    }
    public Position getpos(){return pos;};
    public String getname(){return name;};
    public int getint(){return 0;};
    public boolean getbool(){return false;};
    public String typename() {
        return "class:" + name;
    }
    public void setClass(ClassDecl _cls){
        cls = _cls;
    }
    public long length(){
        return cls.length();
    }
}
