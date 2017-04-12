package Compiler.Statement;

import AssistantClass.Position;
import Compiler.Error.NoDefined;
import Compiler.Error.NullPtr;
import Compiler.Error.TypeNotMatch;
import Compiler.Expression.Expr;
import Compiler.FrontEnd.Main;
import Compiler.Type.NullType;
import Compiler.Type.Type;
import Compiler.Type.VoidType;

import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.12, Shanghai.
 */
public class ReturnStatement extends Statement{
    public String name = "return";
    public Position pos = null;
    public Expr expr = null;
    public Type retype = null;
    public ReturnStatement(Expr _e, Position _p){
        expr = _e;
        pos = _p;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
//        Main.returned = true;
        if(!Main.infunction){
            throw new NoDefined();
        }
        if(expr == null){
            if(Main.nowfunc.retype instanceof VoidType){
                retype = new VoidType(pos);
                return;
            }else{
                System.err.println(pos._String());
                throw new TypeNotMatch();
            }
        }else if(expr.getretype() instanceof NullType){
            retype = new NullType(pos);
            return;
        }
        if(Main.inclass && Objects.equals(expr.getretype().getname(), "this")){
            if(Objects.equals(Main.nowfunc.retype.typename(), "class:" +Main.nowclass)){
                retype = Main.nowfunc.retype;
                return;
            }else throw new TypeNotMatch();
        }
        if(!Objects.equals(expr.getretype().typename(), Main.nowfunc.retype.typename())){
            System.err.println(pos._String());
            throw new TypeNotMatch();
        }
        retype = expr.getretype();
    }
}
