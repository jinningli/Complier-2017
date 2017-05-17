package cn.chips.MAPLE.ast.Expression;

import org.antlr.v4.runtime.tree.TerminalNode;
import java.util.Objects;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.Type.*;
import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.ast.Declare.*;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.16, Shanghai.
 */
public class Identifier extends Expr {
    public String name = "";
    public Position pos;
    public Identifier(TerminalNode ctx){
        name = ctx.getText();
        pos = new Position(ctx.getSymbol());
    }
    public Type getretype() {
        if(Objects.equals(name, "")){
            throw new NullPtr();
        }//maybe something wrong
        if(Objects.equals(name, "null")){
            return new NullType(pos);
        }
        //System.err.println(pos._String());
        Declare d;
//        System.err.println(pos._String());
        if(Main.inclass){
            if(Objects.equals(name, "this")){
                return new ClassType(Main.nowclass, pos);
            }
//            String inclassname = Main.nowclass + "-" + name;
//            if(Main.grobal.containsKey(inclassname)){
//                d = Main.grobal.what(inclassname);
//                return ((VarDecl)d).type;
//            }
        }
        d = Main.grobal.what(name);///////////
        if(d instanceof ClassDecl){
            return new ClassType(d.getname(), pos);
        }
        if(d instanceof FuncDecl){
            throw new ExpressionError();
        }
        return ((VarDecl)d).type;
    }
}
