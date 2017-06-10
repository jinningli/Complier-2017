package cn.chips.MAPLE.ast.declare;


import cn.chips.MAPLE.asm.Oprand.ImmediateValue;
import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.ir.STMT;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.parser.*;
import cn.chips.MAPLE.ast.statement.*;
import cn.chips.MAPLE.ast.type.*;


import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class FuncDecl extends Declare implements Entity{
    public String name = "";
    public Position pos;
    public Type retype = null;
    public List<Pair<Type, String>> flist = null;
    public List<VarDecl> para = new LinkedList<>();
    public List<Statement> stmtlist = null;
    public boolean constructFunc = false;
    public boolean classFunc = false;
    public ClassDecl thisptr = null;
    public List<STMT> ir;
    public boolean located = false;

    public MemoryReference memref;
    public ImmediateValue address;

    public void setMemref(MemoryReference _memref){
        memref = _memref;
        located = true;
    }

    public MemoryReference getMemref() {
        if(memref == null){
            throw new NullPtr();
        }
        return memref;
    }

    public void setAddress(ImmediateValue _immaddr){
        address = _immaddr;
    }

    public ImmediateValue getAddress(){
        return address;
    }

    public void setIR(List<STMT> _stmts){
        ir = _stmts;
    }

    public FuncDecl(String _n, Type _rt){
        name = _n;
        retype = _rt;
        stmtlist = new LinkedList<>();
        flist = new LinkedList<>();
    }
    public void addlist(Type _t, String _s){
        flist.add(new Pair<>(_t, _s));
    }
    public FuncDecl (MapleParser.FuncDeclContext ctx, boolean inclass, ClassDecl nowclass){
        stmtlist = new LinkedList<>();
        flist = new LinkedList<>();
        name = ctx.ID().getText();
        pos = new Position(ctx.ID().getSymbol());
        TypeClassifier TC = new TypeClassifier();

        if(inclass){
            classFunc = true;
            thisptr = nowclass;
            name = nowclass.name + "__" + ctx.ID().getText();
            Type thistype = new ClassType(nowclass.name, pos);
            flist.add(new Pair<>(thistype, "This"));
        }

        if(ctx.typePro().type() == null){
            if(!inclass){
                throw new DeclLost();
            }
            if(!Objects.equals(name, nowclass.name + "__" + nowclass.name)){
                throw new DeclLost();
            }
            constructFunc = true;
            nowclass.constructer = this;
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
    public String _String(){
        return "FuncDecl:: " + name;
    }
    public Position getpos() {
        return pos;
    }

    public void check(){
        grobalVariable.infunction = true;
        grobalVariable.nowfunc = this;
        grobalVariable.grobal.newLayer();
        setNowScope(grobalVariable.grobal.now);
//        Main.returned = false;
        if(grobalVariable.inclass && Objects.equals(name, thisptr.name + "__" + "this")){
            throw new TypeNotMatch();
        }
        if(retype instanceof ClassType){
            grobalVariable.grobal.what(retype.getname());
        }
        int nflist = flist.size();
        for(int i = 0; i < nflist; i ++){
            Type t = flist.get(i).getFirst();
            if(t instanceof ClassType){
                grobalVariable.grobal.what(t.getname());
            }
            if(t instanceof  ArrType){
                if (((ArrType)t).stdtype instanceof ClassType){
                    grobalVariable.grobal.what(((ArrType)t).stdtype.getname());
                }
            }
            VarDecl vd = new VarDecl(pos);
            vd.setName(flist.get(i).getSecond());
            vd.setType(flist.get(i).getFirst());
            grobalVariable.grobal.define(flist.get(i).getSecond(), vd);
            para.add(vd);
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
        grobalVariable.grobal.exitLayer();
        grobalVariable.infunction = false;
//        Main.returned = false;
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Function: " + name + " defined in: " + pos._String());
        System.out.println(indent + "\t------Parameter------");
        for(Pair<Type, String> p: flist){
            System.out.println(indent + "\t" + "Parameter: " + p.getFirst()._String() + " " + p.getSecond());
        }
        System.out.println(indent + "\t------Parameter End------");
        for(Statement s: stmtlist) {
            s.print(depth + 1);
        }
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Function: " + name + " defined in: " + pos._String());
    }

    public String translate(){
        return name;
    }

    public String declTranslate(){
        String res = "";
        if(!Objects.equals(name, "main"))
            if(retype == null){
            res += "void";
            }else
             res += retype.typename();
        else
            res += "int";
        res += " " + name + "(";
        for(int i = 0; i < flist.size(); i ++){
            res += flist.get(i).first.typename() + " " + flist.get(i).getSecond();
            if(i != flist.size() - 1) {
                res += ", ";
            }
        }
        res += ")";
        return res;
    }
}
