package cn.chips.MAPLE.ast.Declare;

import  cn.chips.MAPLE.compiler.*;
import  cn.chips.MAPLE.parser.*;
import  cn.chips.MAPLE.utils.*;

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
        Main.inclass = true;
        Main.nowclass = name;
        Main.grobal.newLayer();
        for(Declare d : DeclList){
            if(d instanceof VarDecl){
                Main.grobal.define(d.getname(), d);
            }
        }
        for(Declare d : DeclList){
            d.check();
        }
        Main.grobal.exitLayer();;
        Main.inclass = false;
        Main.nowclass = "";
    }
}
