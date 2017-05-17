package cn.chips.MAPLE.ast.Declare;


import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.parser.*;
import cn.chips.MAPLE.ast.Statement.*;
import cn.chips.MAPLE.ast.Type.*;


import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

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
    public boolean constructFunc = false;
    public FuncDecl(String _n, Type _rt){
        name = _n;
        retype = _rt;
        stmtlist = new LinkedList<>();
        flist = new LinkedList<>();
    }
    public void addlist(Type _t, String _s){
        flist.add(new Pair<>(_t, _s));
    }
    public FuncDecl (MapleParser.FuncDeclContext ctx, boolean inclass, String nowclass){
        stmtlist = new LinkedList<>();
        flist = new LinkedList<>();
        name = ctx.ID().getText();
        pos = new Position(ctx.ID().getSymbol());
        TypeClassifier TC = new TypeClassifier();

        if(ctx.typePro().type() == null){
            if(!inclass){
                throw new DeclLost();
            }
            if(!Objects.equals(name, nowclass)){
                throw new DeclLost();
            }
            constructFunc = true;
        }
        else retype = TC.Classify(ctx.typePro());
        int k = 0;
        while (ctx.funcList().typePro(k)!=null){
            flist.add(new Pair<>(TC.Classify(ctx.funcList().typePro(k)), ctx.funcList().ID(k).getText()));
           // System.err.println(typelist.get(k)._String());
            k++;
        }
        if(Objects.equals(name, "main") && (!(retype instanceof IntType))){
            throw new ConstructError();
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
        Main.infunction = true;
        Main.nowfunc = this;
        Main.grobal.newLayer();
//        Main.returned = false;
        if(retype instanceof ClassType){
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


//        boolean returned = false;
        for(Statement s : stmtlist){
            s.check();
//            System.err.println(s.getpos()._String());
        }
//        if((!(retype instanceof VoidType)) && (!Main.returned) && !Objects.equals(name, "main")){
//            System.err.println(pos._String());
//            throw new DeclLost();
//        }
        Main.grobal.exitLayer();
        Main.infunction = false;
//        Main.returned = false;
    }
}
