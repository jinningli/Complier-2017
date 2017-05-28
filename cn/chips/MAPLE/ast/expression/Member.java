package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.ast.declare.*;

import java.util.Objects;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.24, Shanghai.
 */
public class Member extends Expr {
    public Expr body = null;
    public String name = "";
    public Entity vardeclent = null;
    public Position pos;
    public Type retype = null;

    public Entity getEnt(){
        if(vardeclent == null){
            vardeclent = (Entity)nowScope.what(name);
        }
        return vardeclent;
    }
    public Member(Expr _ins, String _s, Position _p){
        body = _ins;
        name = _s;
        pos = _p;
    }
    public Type getretype() {
        if(retype != null){
            return retype;
        }
        setNowScope(grobalVariable.grobal.now);
        if(body == null || Objects.equals(name, "")){
            throw new NullPtr();
        }
        if(body instanceof Identifier){
            if(Objects.equals(((Identifier) body).name, "this")){
                retype = ((VarDecl)grobalVariable.grobal.what(grobalVariable.nowclass + "-" + name)).type;
                return retype;
            }
        }
        Type t = body.getretype();
        if(t instanceof ClassType) {
            if(Objects.equals(t.getname(), "")){
                throw new NullPtr();
            }
            String n = t.getname() + "-" + name;
            Declare dn = grobalVariable.grobal.what(n);
            if (!(dn instanceof VarDecl)) {
                throw new NameNotMatch();
            }
            vardeclent = (VarDecl)dn;
            retype = ((VarDecl) dn).type;
            return retype;
        }else{
            throw new NameNotMatch();
        }
    }
    public long getoffset(){
        VarDecl vls = (VarDecl)vardeclent;
        return vls.offset;
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Member: " + pos._String());
        System.out.println(indent + "Body:");
        if(body == null){
            System.out.println(indent + "\tnull");
        }else {
            body.print(depth + 1);
        }
        System.out.println(indent + "dot." + name);
    }
}
