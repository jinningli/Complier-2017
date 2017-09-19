package cn.chips.MAPLE.ast.statement;

import cn.chips.MAPLE.ast.expression.Expr;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

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
        setNowScope(grobalVariable.grobal.now);
//        Main.returned = true;
        if(!grobalVariable.infunction){
            throw new NoDefined();
        }
        if(expr == null){
            if(grobalVariable.nowfunc.retype instanceof VoidType){
                retype = new VoidType(pos);
                return;
            }else if(grobalVariable.nowfunc.retype == null && Objects.equals(grobalVariable.nowfunc.getname(), grobalVariable.nowclass + "__" + grobalVariable.nowclass)){
                retype = null;
                return;
            }
            else{
                System.err.println(pos._String());
                throw new TypeNotMatch();
            }
        }else if(expr.getretype() instanceof NullType){
            retype = new NullType(pos);
            return;
        }
        if(grobalVariable.inclass && Objects.equals(expr.getretype().getname(), "this")){
            if(Objects.equals(grobalVariable.nowfunc.retype.typename(), "class:" +grobalVariable.nowclass)){
                retype = grobalVariable.nowfunc.retype;
                return;
            }else throw new TypeNotMatch();
        }
//        System.err.println(expr.getretype().typename());
//        System.err.println( grobalVariable.nowfunc.retype.typename());

        if(!Objects.equals(expr.getretype().typename(), grobalVariable.nowfunc.retype.typename())){
            System.err.println(pos._String());
            throw new TypeNotMatch();
        }
        retype = expr.getretype();
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Return: " + pos._String());
        if(expr == null){
            System.out.println(indent + "\tNULL");
        }else{
            expr.print(depth + 1);
        }
    }
}
