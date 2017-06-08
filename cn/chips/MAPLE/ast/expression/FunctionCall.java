package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.parser.*;
import cn.chips.MAPLE.ast.declare.*;

import java.util.*;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.21, Shanghai.
 */
public class FunctionCall extends Expr {
    public Identifier id;
    public Position pos;
    public List<Expr> flist;
    public Type funcretype = null;

    public Entity getEnt(){
        return id.getEnt();
    }
    public FunctionCall(MapleParser.FunctionCallContext ctx){
        id = new Identifier(ctx.ID());
        pos = new Position(ctx.getStart());
        flist = new LinkedList<>();
    }
    public void listadd(Expr _es){
        flist.add(_es);
    }
    public Type getretype() {
        if(funcretype != null){
            return funcretype;
        }
        setNowScope(grobalVariable.grobal.now);
        id.setNowScope(grobalVariable.grobal.now);
        String name = id.name;
        if(Objects.equals(name, "")){
            throw new NullPtr();
        }
       //System.err.println(pos._String());
        Declare d;
        if(grobalVariable.inclass) {
            String inclassname = grobalVariable.nowclass + "-" + name;
            if (grobalVariable.grobal.containsKey(inclassname)) {
                d = grobalVariable.grobal.what(inclassname);
                id.ent = (Entity) d;
                for(Expr e: flist){
                    e.getretype();//////
                }
                funcretype = ((FuncDecl) d).retype;
                return funcretype;
            }
        }
        d = grobalVariable.grobal.what(name);
        if(!(d instanceof FuncDecl)){
            throw new NameNotMatch();
        }
        FuncDecl func = (FuncDecl) d;
        if(func.flist.size() != flist.size()){
            throw new NumberNotMatch();
        }
        for(int i = 0; i < flist.size() ; i ++){
//            System.err.println(flist.get(i).getretype().typename());
//            System.err.println(func.flist.get(i).getFirst().typename());
//            System.err.println(flist.get(i).getretype().typename());
//            System.err.println(func.flist.get(i).getFirst().typename());
            if(flist.get(i).getretype() instanceof NullType) continue;
            if(!Objects.equals(flist.get(i).getretype().typename(), func.flist.get(i).getFirst().typename())){
               System.err.println(pos._String());
                throw new TypeNotMatch();
            }
        }
        funcretype = func.retype;
        return funcretype;
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "FunctionCall: " + id.name + pos._String());
        for(Expr e: flist){
            e.print(depth + 1);
        }
    }
}
