package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import org.antlr.v4.runtime.tree.TerminalNode;
import java.util.Objects;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.ast.declare.*;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.16, Shanghai.
 */
public class Identifier extends Expr {
    public String name = "";
    public Position pos;
    public Entity ent = null;
    public Type vartype = null;

    public Identifier(TerminalNode ctx){
        name = ctx.getText();
        pos = new Position(ctx.getSymbol());
    }

    public Identifier(String _name, Position _pos){
        name = _name;
        pos = _pos;
    }

    public Entity getEnt(){
        if(ent == null){
            if(Objects.equals(name, "this")){
                ent = (Entity) nowScope.what("This");
            }else
                ent = (Entity) nowScope.what(name);
        }
        return ent;
    }

    public Type getretype() {
        if(vartype != null){
            return vartype;
        }
        setNowScope(grobalVariable.grobal.now);
        if(Objects.equals(name, "this")){
            ent = (Entity) nowScope.what("This");
        }else
            ent = (Entity) nowScope.what(name);
//        System.out.println(name + " -> " + ent._String());
        if(Objects.equals(name, "")){
            throw new NullPtr();
        }//maybe something wrong
        if(Objects.equals(name, "null")){
            vartype = new NullType(pos);
            return vartype;
        }
        //System.err.println(pos._String());
        Declare d;
//        System.err.println(pos._String());
        if(grobalVariable.inclass){
            if(Objects.equals(name, "this")){
                vartype = new ClassType(grobalVariable.nowclass, pos);
                return vartype;
            }
//            String inclassname = grobalVariable.nowclass + "__" + name;
//            if(grobalVariable.grobal.containsKey(inclassname)){
//                d = grobalVariable.grobal.what(inclassname);
//                return ((VarDecl)d).type;
//            }
        }
        d = grobalVariable.grobal.what(name);///////////
        if(d instanceof ClassDecl){
            vartype = new ClassType(d.getname(), pos);
            return vartype;
        }
//        if(d instanceof FuncDecl){
//            throw new ExpressionError();
//        }
        vartype = ((VarDecl)d).type;
        return vartype;
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Identifier: " + name + pos._String());
    }
}
