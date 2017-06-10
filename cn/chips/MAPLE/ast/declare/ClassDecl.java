package cn.chips.MAPLE.ast.declare;

import  cn.chips.MAPLE.compiler.*;
import  cn.chips.MAPLE.parser.*;
import  cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.utils.scope.ScopeNode;
import org.antlr.v4.codegen.model.decl.Decl;

import java.util.LinkedList;
import java.util.List;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.13, Shanghai.
 */
public class ClassDecl extends Declare{
    public String name;
    public Position pos;
    public List<Declare> DeclList;
    public FuncDecl constructer = null;
    public long size = 0;
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
    public String _String(){
        return "ClassDecl:: " + name;
    }
    public long size(){
        return size;
    }
    public void check(){
        grobalVariable.inclass = true;
        grobalVariable.nowclass = name;
        grobalVariable.grobal.newLayer();

        setNowScope(grobalVariable.grobal.now);
        for(Declare d : DeclList){
            if(d instanceof VarDecl){
                grobalVariable.grobal.define(d.getname(), d);
            }
        }
        for(Declare d : DeclList){
            d.check();
            if(d instanceof VarDecl){
//                size += ((VarDecl) d).length();
                size += 8;
            }
        }
        grobalVariable.grobal.exitLayer();;
        grobalVariable.inclass = false;
        grobalVariable.nowclass = "";
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Class: " + name + " defined in: " + pos._String());
        for(Declare d: DeclList){
            d.print(depth + 1);
        }
    }

    public String declTranslate(){
        String res = "";
        res += "struct " + name + "{\n";
        for(Declare d: DeclList){
            if(d instanceof VarDecl){
                res += ((VarDecl) d).declTranslate() + ";\n";
            }
        }
        res += "};\n";
        return res;
    }

    public String onlyDeclare(){
        String res = "";
        res += "struct " + name + ";\n";
        return res;
    }
}
