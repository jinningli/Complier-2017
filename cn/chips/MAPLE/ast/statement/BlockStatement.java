package cn.chips.MAPLE.ast.statement;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.ast.declare.*;

import java.util.*;
/**
 * Compiler - 2017
 * lijinning, 2017.04.08, Shanghai.
 */
public class BlockStatement extends Statement {
    private String name = "block";
    private Position pos;
    private List<Statement> stmtlist = new LinkedList<>();
    public BlockStatement(Position _p){
        pos = _p;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void add(Statement _s){
        if(_s == null) return;
        stmtlist.add(_s);
    }
    public void check(){
        Main.grobal.newLayer();
        for(Statement stmt : stmtlist){
           if(stmt instanceof Declare){
               if(stmt instanceof ClassDecl || stmt instanceof FuncDecl){
                   throw new DefineWrongPos();
               }else if(stmt instanceof VarDecl){
                   stmt.check();
               }else{
                   throw new NullPtr();
               }
           }else{
               stmt.check();
           }
        }
        Main.grobal.exitLayer();
    }
}
