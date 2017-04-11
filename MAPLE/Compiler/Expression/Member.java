package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Declare.ClassDecl;
import Compiler.Declare.Declare;
import Compiler.Declare.VarDecl;
import Compiler.Error.NameNotMatch;
import Compiler.Error.NullPtr;
import Compiler.FrontEnd.Main;
import Compiler.Type.ClassType;
import Compiler.Type.StringType;
import Compiler.Type.Type;

import java.util.Objects;

/**
 * Created by lijinning on 2017/4/2.
 */
public class Member extends Expr {
    private Expr body = null;
    private String name = "";
    private Position pos;
    public Member(Expr _ins, String _s, Position _p){
        body = _ins;
        name = _s;
        pos = _p;
    }
    public Type getretype() {
        if(body == null || Objects.equals(name, "")){
            throw new NullPtr();
        }
        Type t = body.getretype();
        if(t instanceof ClassType) {
            if(Objects.equals(t.getname(), "")){
                throw new NullPtr();
            }
            String n = t.getname() + "-" + name;
            Declare dn = Main.grobal.what(n);
            if (!(dn instanceof VarDecl)) {
                throw new NameNotMatch();
            }
            return ((VarDecl) dn).type;
        }else{
            throw new NameNotMatch();
        }
    }
}
