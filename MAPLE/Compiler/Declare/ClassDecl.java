package Compiler.Declare;

import AssistantClass.Position;
import Compiler.FrontEnd.MapleParser;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ClassDecl extends Declare{
    public String name;
    public Position pos;
    public List<Declare> DeclList;
    public ClassDecl (MapleParser.ClassDeclContext ctx){
        name = ctx.ID().getText();
        pos = new Position(ctx.ID().getSymbol());
        DeclList = new LinkedList<>();
    }
    public ClassDecl(String _s, Position _p) {
        name = _s;
        pos = _p;
        DeclList = new LinkedList<>();
    }
    public void add(Declare _d){
        DeclList.add(_d);
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
    public void check(){
        for(Declare d : DeclList){
            d.check();
        }
    }
}
