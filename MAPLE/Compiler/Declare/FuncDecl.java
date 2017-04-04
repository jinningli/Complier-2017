package Compiler.Declare;


import AssistantClass.Position;
import Compiler.Error.NonDefinedClass;
import Compiler.FrontEnd.Main;
import Compiler.FrontEnd.MapleParser;
import Compiler.Type.*;
import AssistantClass.*;

import java.util.LinkedList;
import java.util.List;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class FuncDecl implements Declare {
    public String name;
    public Position pos;
    public Type retype;
    public List<Type> typelist;
    public List<String> nameList;
    public MapleMap map;
    public FuncDecl (MapleParser.FuncDeclContext ctx){
        typelist = new LinkedList<>();
        nameList = new LinkedList<>();
        name = ctx.ID().getText();
        pos = new Position(ctx.ID().getSymbol());
        TypeClassifier TC = new TypeClassifier(Main.FMap);
        retype = TC.Classify(ctx.typePro());
        int k = 0;
        while (ctx.funcList().typePro(k)!=null){
            Type t = TC.Classify(ctx.funcList().typePro(k));
            if(t.getType()==Type.TypeList.Class){
                if(!Main.FMap.contains(t.getname(),MapleMap.MapleMapType.ClassInGrobal)){
                    System.err.println("NonDefine Class: " + t.getpos()._String());
                    throw new NonDefinedClass();
                }
            }
            typelist.add(TC.Classify(ctx.funcList().typePro(k)));
           // System.err.println(typelist.get(k)._String());
            k++;
        }
        k = 0;
        while (ctx.funcList().ID(k)!=null){
            nameList.add(ctx.funcList().ID(k).getText());
            //System.err.println(nameList.get(k));
            k ++;
        }
    }

    public String getname(){
        return name;
    }
    public Position getpos() {
        return pos;
    }
}
