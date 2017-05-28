package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.ast.declare.*;
import cn.chips.MAPLE.parser.*;

import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.11, Shanghai.
 */
public class MemberFunction extends Expr {
    public Identifier id = null;
    public Position pos;
    public List<Expr> flist;
    public Entity ent = null;
    public Type funcretype = null;

    public Entity getEnt(){
        if(ent == null){
            ent = (Entity) nowScope.what(id.name);
        }
        return ent;
    }
    public MemberFunction(MapleParser.MemberFunctionContext ctx){
        id = new Identifier(ctx.ID());
        pos = new Position(ctx.getStart());
        flist = new LinkedList<>();
    }
    public void listadd(Expr _es) {
        flist.add(_es);
    }
    public Type getretype() {
        setNowScope(grobalVariable.grobal.now);
        id.setNowScope(grobalVariable.grobal.now);
        Expr left = flist.get(0);
        if(Objects.equals(id.name, "") || left == null){
            throw new NullPtr();
        }
        Type t = left.getretype();
        if(t instanceof ClassType){
            if(Objects.equals(t.getname(), "")){
                throw new NullPtr();
            }
            id.name = t.getname() + "-" + id.name;
            Declare nd = grobalVariable.grobal.what(id.name);
            if(!(nd instanceof FuncDecl)){
                throw new NameNotMatch();
            }
            if(((FuncDecl) nd).flist.size() != flist.size()){
                throw new NumberNotMatch();
            }
            for(int i = 0; i < flist.size(); i ++){
                if(!Objects.equals(((FuncDecl) nd).flist.get(i).getFirst().typename(),
                        flist.get(i).getretype().typename())){
                    throw new TypeNotMatch();
                }
            }
            ent = (Entity) nd;
            funcretype = ((FuncDecl)nd).retype;
            return funcretype;
        }
        if(t instanceof StringType){
            if(Objects.equals(id.name, "length")){
                return new IntType(0);
            }else if(Objects.equals(id.name, "substring")){
                return new StringType("");
            }else if(Objects.equals(id.name, "parseInt")){
                return new IntType(0);
            }else if(Objects.equals(id.name, "ord")){
                return new IntType(0);
            }else throw new NoDefined();
        }
        if(t instanceof ArrType && Objects.equals(id.name, "size")){
            return new IntType(0);
        }
        throw new NameNotMatch();
    }
    public void print(int depth){
        Expr left = flist.get(0);
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "MemberFunction: " + pos._String());
        System.out.println(indent + "Body:");
        if(left == null){
            System.out.println(indent + "\tnull");
        }else {
            left.print(depth + 1);
        }
        System.out.println(indent + "dot." + id.name);
        System.out.println(indent + "\t" + "Parameter: ");
        for(Expr e: flist){
            e.print(depth + 1);
        }
    }
}
