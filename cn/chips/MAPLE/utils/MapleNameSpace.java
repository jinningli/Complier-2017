package cn.chips.MAPLE.utils;

import java.util.*;
import cn.chips.MAPLE.ast.Declare.*;
import cn.chips.MAPLE.ast.Type.*;
import cn.chips.MAPLE.exception.*;
/**
 * Compiler - 2017
 * lijinning, 2017.04.10, Shanghai.
 */
public class MapleNameSpace {

    public Map<String, Stack<Declare>> namestack = new HashMap<>();
    public Stack<Set<String>> layer = new Stack<>();
    private int nowlayer = 0;
    private int maxlayer = 0;

    public MapleNameSpace(){
        grobalLayerInit();
    }

    public Declare what(String name){
        Stack<Declare> sd = namestack.get(name);
       if(sd == null || sd.isEmpty()){
           throw new NoDefined();
       }

       return sd.peek();
    }

    public void grobalLayerInit(){
        layer.push(new HashSet<>());
        FuncDecl builtinFunc;
        builtinFunc = new FuncDecl("print",
                new VoidType());
        builtinFunc.addlist(new StringType(""),"str");
        define("print", builtinFunc);
        builtinFunc = new FuncDecl("println",
                new VoidType());
        builtinFunc.addlist(new StringType(""),"str");
        define("println", builtinFunc);
        builtinFunc = new FuncDecl("getString",
                new StringType(""));
        define("getString", builtinFunc);
        builtinFunc = new FuncDecl("getInt",
                new IntType(0));
        define("getInt", builtinFunc);
        builtinFunc = new FuncDecl("toString",
                new StringType(""));
        builtinFunc.addlist(new IntType(0), "i");
        define("toString", builtinFunc);

//        define("bool", new VarDecl(new Position(-1, -1)));
//        define("int", new VarDecl(new Position(-1, -1)));
//        define("string", new VarDecl(new Position(-1, -1)));
//        define("null", new VarDecl(new Position(-1, -1)));
//        define("void", new VarDecl(new Position(-1, -1)));
//        define("true", new VarDecl(new Position(-1, -1)));
//        define("false", new VarDecl(new Position(-1, -1)));
//        define("if", new VarDecl(new Position(-1, -1)));
//        define("for", new VarDecl(new Position(-1, -1)));
//        define("while", new VarDecl(new Position(-1, -1)));
//        define("break", new VarDecl(new Position(-1, -1)));
//        define("continue", new VarDecl(new Position(-1, -1)));
//        define("return", new VarDecl(new Position(-1, -1)));
//        define("new", new VarDecl(new Position(-1, -1)));
//        define("class", new VarDecl(new Position(-1, -1)));
        define("this", new VarDecl(new Position(-1, -1)));
//        bool int string null void
//        true false
//        if for while
//        break continue return
//                new class this
    }

    public void define(String _n, Declare _d){
        if(layer.peek().contains(_n)){
            throw new ReDefine();
        }
        layer.peek().add(_n);
        Stack<Declare> sd = namestack.get(_n);
        if (sd == null){
            sd = new Stack<>();
            sd.push(_d);
            namestack.put(_n, sd);
        }else{
            namestack.get(_n).push(_d);
        }
    }

    public void newLayer(){
        nowlayer ++;
        maxlayer = nowlayer > maxlayer ? nowlayer : maxlayer;
        layer.push(new HashSet<>());
    }
    public void exitLayer(){
        Set<String> s = layer.peek();
        Iterator<String> it = s.iterator();
        String n;
        while(it.hasNext()){
            n = it.next();
            if((!namestack.containsKey(n)) || namestack.get(n) == null || namestack.get(n).isEmpty()){
                throw new DeclLost();
            }
            namestack.get(n).pop();
        }
        nowlayer --;
        layer.pop();
    }
    public boolean containsKey(String name){
        return namestack.containsKey(name);
    }

}
