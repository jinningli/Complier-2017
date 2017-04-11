package Compiler.Declare;

import AssistantClass.Position;
import Compiler.Error.NoDefined;
import Compiler.Error.TypeNotMatch;
import Compiler.Expression.Expr;
import Compiler.FrontEnd.Main;
import Compiler.Type.ArrType;
import Compiler.Type.ClassType;
import Compiler.Type.Type;

import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.03, Shanghai.
 */

public class VarDecl extends Declare {
    public String name;
    public Position pos;
    public Type type;
    public Expr expr = null;
    public VarDecl(Position _p){
        pos = _p;
    }
    public void setName(String _s){
        name = _s;
    }
    public void setType(Type _t){
        type = _t;
    }
    public void setExpr(Expr _e){
        expr = _e;
    }
    public String getname() {return name;}
    public Position getpos() {
        return pos;
    }
    public void check(){
        if(type instanceof ClassType){
            Declare d = Main.grobal.what(type.getname());
            if(!(d instanceof ClassDecl)){
                throw new NoDefined();
            }
        }
        if(type instanceof ArrType){
            Declare d = Main.grobal.what(((ArrType) type).stdtype.getname());
            if(!(d instanceof ClassDecl)){
                throw new NoDefined();
            }
        }
        if(expr != null){
            if(!Objects.equals(expr.getretype().typename(), type.typename())){
                throw  new TypeNotMatch();
            }
        }
    }
}
