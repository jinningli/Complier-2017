package Compiler.Statement;

import AssistantClass.Position;
import Compiler.Declare.ClassDecl;
import Compiler.Declare.Declare;
import Compiler.Declare.FuncDecl;
import Compiler.Declare.VarDecl;
import Compiler.Error.DefineWrongPos;
import Compiler.Error.NullPtr;
import Compiler.FrontEnd.Main;

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
