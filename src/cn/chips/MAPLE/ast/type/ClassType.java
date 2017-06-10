package cn.chips.MAPLE.ast.type;


import cn.chips.MAPLE.ast.declare.ClassDecl;
import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;
import cn.chips.MAPLE.utils.grobalVariable;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.17, Shanghai.
 */
public class ClassType extends Project implements Type{
    public final long ptrsize = 8;
    public String name;
    public Position pos;
    public ClassDecl cls;
    public ClassType(String _n, Position _p){
        name = _n;
        pos = _p;
    }
    public String _String(){
        return "ClassType " + "With type name: " + name + "\t" + pos._String();
    }
    public Position getpos(){return pos;};
    public String getname(){return name;};
    public int getint(){return 0;};
    public boolean getbool(){return false;};
    public String typename() {
        return "long";
    }
    public void setClass(ClassDecl _cls){
        cls = _cls;
    }
    public ClassDecl getcls(){
        if(cls != null){
            return cls;
        }
        return (ClassDecl) grobalVariable.grobal.what(name);
    }
    public long size(){
        return getcls().size;
    }
    public long clssize(){
        return cls.size;
    }
}
