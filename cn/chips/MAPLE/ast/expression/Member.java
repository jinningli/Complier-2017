package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.ast.declare.*;

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
        if(body instanceof Identifier){
            if(Objects.equals(((Identifier) body).name, "this")){
                return ((VarDecl)Main.grobal.what(Main.nowclass + "-" + name)).type;
            }
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
