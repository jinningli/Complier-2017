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
    public String name = "block";
    public Position pos;
    public List<Statement> stmtlist = new LinkedList<>();

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
        grobalVariable.grobal.newLayer();
        setNowScope(grobalVariable.grobal.now);
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
        grobalVariable.grobal.exitLayer();
    }
    public void print(int depth) {
        String indent = "";
        int dep = depth;
        while (dep > 0) {
            indent += "\t";
            dep--;
        }
        System.out.println(indent + "BlockStmt:" + pos._String());
        for(Statement s: stmtlist){
            s.print(depth + 1);
        }
    }
}
