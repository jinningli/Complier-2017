package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Declare.ClassDecl;
import Compiler.Declare.Declare;
import Compiler.Declare.FuncDecl;
import Compiler.Declare.VarDecl;
import Compiler.Error.ExpressionError;
import Compiler.Error.NullPtr;
import Compiler.FrontEnd.Main;
import Compiler.Type.ClassType;
import Compiler.Type.NullType;
import Compiler.Type.Type;
import org.antlr.v4.runtime.tree.TerminalNode;

import java.util.Objects;

/**
 * Created by lijinning on 2017/4/2.
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
        //System.err.println(pos._String());
        if(Main.inclass){
            if(Objects.equals(name, "this")){
                return new ClassType(name, pos);
            }
            String inclassname = Main.nowclass + "-" + name;
            if(Main.grobal.containsKey(inclassname)){
                d = Main.grobal.what(inclassname);
                return ((VarDecl)d).type;
            }
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
