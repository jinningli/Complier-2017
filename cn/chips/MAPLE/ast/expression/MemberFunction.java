package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.compiler.Main;
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
    private Expr left = null;
    private String name = "";
    private Position pos;
    private List<Expr> flist;
    public MemberFunction(MapleParser.MemberFunctionContext ctx){
        name = ctx.ID().getText();
        pos = new Position(ctx.getStart());
        flist = new LinkedList<>();
    }
    public void listadd(Expr _es) {
        if(left == null){
            left = _es;
        }else{
            flist.add(_es);
        }
    }
    public Type getretype() {
        setNowScope(grobalVariable.grobal.now);
        if(Objects.equals(name, "") || left == null){
            throw new NullPtr();
        }
        Type t = left.getretype();
        if(t instanceof ClassType){
            if(Objects.equals(t.getname(), "")){
                throw new NullPtr();
            }
            String n = t.getname() + "-" + name;
            Declare nd = grobalVariable.grobal.what(n);
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
            return ((FuncDecl)nd).retype;
        }
        if(t instanceof StringType){
            if(Objects.equals(name, "length")){
                return new IntType(0);
            }else if(Objects.equals(name, "substring")){
                return new StringType("");
            }else if(Objects.equals(name, "parseInt")){
                return new IntType(0);
            }else if(Objects.equals(name, "ord")){
                return new IntType(0);
            }else throw new NoDefined();
        }
        if(t instanceof ArrType && Objects.equals(name, "size")){
            return new IntType(0);
        }
        throw new NameNotMatch();
    }
    public void print(int depth){
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
        System.out.println(indent + "dot." + name);
        System.out.println(indent + "\t" + "Parameter: ");
        for(Expr e: flist){
            e.print(depth + 1);
        }
    }
}