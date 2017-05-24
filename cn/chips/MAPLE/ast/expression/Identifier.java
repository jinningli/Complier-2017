package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.scope.ScopeNode;
import org.antlr.v4.runtime.tree.TerminalNode;
import java.util.Objects;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.ast.declare.*;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.16, Shanghai.
 */
public class Identifier extends Expr {
    public String name = "";
    public Position pos;
    public Entity ent = null;

    public Identifier(TerminalNode ctx){
        name = ctx.getText();
        pos = new Position(ctx.getSymbol());
    }
    public Type getretype() {
        setNowScope(grobalVariable.grobal.now);
        ent = (Entity) nowScope.what(name); // convert to declare ???constant?
//        System.out.println(name + " -> " + ent._String());
        if(Objects.equals(name, "")){
            throw new NullPtr();
        }//maybe something wrong
        if(Objects.equals(name, "null")){
            return new NullType(pos);
        }
        //System.err.println(pos._String());
        Declare d;
//        System.err.println(pos._String());
        if(grobalVariable.inclass){
            if(Objects.equals(name, "this")){
                return new ClassType(grobalVariable.nowclass, pos);
            }
//            String inclassname = grobalVariable.nowclass + "-" + name;
//            if(grobalVariable.grobal.containsKey(inclassname)){
//                d = grobalVariable.grobal.what(inclassname);
//                return ((VarDecl)d).type;
//            }
        }
        d = grobalVariable.grobal.what(name);///////////
        if(d instanceof ClassDecl){
            return new ClassType(d.getname(), pos);
        }
//        if(d instanceof FuncDecl){
//            throw new ExpressionError();
//        }
        return ((VarDecl)d).type;
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
