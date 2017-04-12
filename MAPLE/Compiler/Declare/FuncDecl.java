package Compiler.Declare;


import AssistantClass.Position;
import Compiler.FrontEnd.Main;
import Compiler.FrontEnd.MapleParser;
import Compiler.Statement.Statement;
import Compiler.Type.*;
import AssistantClass.*;

import java.util.LinkedList;
import java.util.List;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class FuncDecl extends Declare {
    public String name = "";
    public Position pos;
    public Type retype = null;
    public List<Pair<Type, String>> flist = null;
    public List<Statement> stmtlist = null;
    public FuncDecl(String _n, Type _rt){
        name = _n;
        retype = _rt;
        stmtlist = new LinkedList<>();
        flist = new LinkedList<>();
    }
    public void addlist(Type _t, String _s){
        flist.add(new Pair<>(_t, _s));
    }
    public FuncDecl (MapleParser.FuncDeclContext ctx){
        stmtlist = new LinkedList<>();
        flist = new LinkedList<>();
        name = ctx.ID().getText();
        pos = new Position(ctx.ID().getSymbol());
        TypeClassifier TC = new TypeClassifier();
        retype = TC.Classify(ctx.typePro());
        int k = 0;
        while (ctx.funcList().typePro(k)!=null){
            flist.add(new Pair<>(TC.Classify(ctx.funcList().typePro(k)), ctx.funcList().ID(k).getText()));
           // System.err.println(typelist.get(k)._String());
            k++;
        }
    }
    public void add(Statement _s){
        stmtlist.add(_s);
    }
    public String getname(){
        return name;
    }
    public Position getpos() {
        return pos;
    }
    public void check(){
        Main.grobal.newLayer();
        if(retype instanceof ClassDecl){
            Main.grobal.what(retype.getname());
        }
        int nflist = flist.size();
        for(int i = 0; i < nflist; i ++){
            Type t = flist.get(i).getFirst();
            if(t instanceof ClassType){
                Main.grobal.what(t.getname());
            }
            if(t instanceof  ArrType){
                if (((ArrType)t).stdtype instanceof ClassType){
                    Main.grobal.what(((ArrType)t).stdtype.getname());
                }
            }
            VarDecl vd = new VarDecl(pos);
            vd.setName(flist.get(i).getSecond());
            vd.setType(flist.get(i).getFirst());
            Main.grobal.define(flist.get(i).getSecond(), vd);
        }
        for(Statement s : stmtlist){
            s.check();
        }
        Main.grobal.exitLayer();
    }
}
