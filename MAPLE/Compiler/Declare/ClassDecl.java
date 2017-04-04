package Compiler.Declare;

import AssistantClass.Position;
import Compiler.FrontEnd.MapleParser;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ClassDecl implements Declare{
    public  String name;
    public Position pos;
    public List<FuncDecl> funcDeclList;
    public List<VarDecl> varDeclList;
    public ClassDecl (MapleParser.ClassDeclContext ctx){
        name = ctx.ID().getText();
        pos = new Position(ctx.ID().getSymbol());
        funcDeclList = new LinkedList<>();
        varDeclList = new LinkedList<>();
    }
    public ClassDecl(String _s, Position _p) {
        name = _s;
        pos = _p;
        funcDeclList = new LinkedList<>();
        varDeclList = new LinkedList<>();
    }
    public void add(FuncDecl _f){
        funcDeclList.add(_f);
    }
    public void add(VarDecl _v){
        varDeclList.add(_v);
    }
    public String getname(){
        return name;
    }
    public Position getpos(){
        return pos;
    }
}
