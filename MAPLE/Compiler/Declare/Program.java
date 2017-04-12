package Compiler.Declare;

import AssistantClass.Position;
import AssistantClass.Project;
import Compiler.Error.NoMain;
import Compiler.FrontEnd.Main;

import java.util.LinkedList;
import java.util.List;

/**
 * Compiler - 2017
 * lijinning, 2017.04.06, Shanghai.
 */
public class Program extends Declare {
    public String name;
    public Position pos;
    private List<Declare> DeclList;
    public Program(){
        name = "Program";
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
    public void check(){
        if(!Main.grobal.containsKey("main")){
            throw new NoMain();
        }
        for(Declare d : DeclList){
            d.check();
        }
    }
}
