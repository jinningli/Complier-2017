package cn.chips.MAPLE.ast.root;
import cn.chips.MAPLE.ir.STMT;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.declare.*;

import java.util.LinkedList;
import java.util.List;

/**
 * Compiler - 2017
 * lijinning, 2017.04.06, Shanghai.
 */
public class AST extends Declare {
    public String name;
    public Position pos;
    public List<Declare> DeclList;
    public Declarations decls = new Declarations(this);
    public List<STMT> grobalVarIR;

    public AST(){
        name = "AST";
        pos = new Position(0, 0);
        DeclList = new LinkedList<>();
    }
    public void add(Declare _d){
        DeclList.add(_d);
    }
    public String getname(){
        return name;
    }
    public Position getpos() {
        return pos;
    }
    public String _String(){
        return name;
    }
    public void check(){
        if(!grobalVariable.grobal.containsKey("main")){
            throw new NoMain();
        }
        for(Declare d : DeclList){
            d.check();
        }
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "----------Print Process----------\n");
        for(Declare d: DeclList){
            d.print(depth + 1);
        }
    }
    public Declarations getDecls(){
        return decls;
    }
    public void setGrobalVarIR(List<STMT> gvr){
        grobalVarIR = gvr;
    }
}
