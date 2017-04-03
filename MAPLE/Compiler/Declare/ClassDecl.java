package Compiler.Declare;

import AssistantClass.Position;
import Compiler.FrontEnd.MapleParser;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ClassDecl implements Declare{
    public  String name;
    public Position pos;
    public ClassDecl (MapleParser.ClassDeclContext ctx){
        name = ctx.ID().getText();
        pos = new Position(ctx.ID().getSymbol());
    }
    public ClassDecl(String _s, Position _p) {
        name = _s;
        pos = _p;
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
}
