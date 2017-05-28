package cn.chips.MAPLE.utils.scope;

import cn.chips.MAPLE.ast.declare.Declare;
import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.ast.type.IntType;
import cn.chips.MAPLE.ast.type.StringType;
import cn.chips.MAPLE.ast.type.VoidType;
import cn.chips.MAPLE.exception.NullPtr;
import cn.chips.MAPLE.exception.TypeNotMatch;
import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;

/**
 * Maple - 2017
 * lijinning, 2017.05.17, Shanghai.
 */
public class ScopeTree extends Project{
    public ScopeNode root;
    public ScopeNode now;
    public ScopeTree(){
        root = new ScopeNode();
        rootScopeInit();
        now = root;
    }

    public void define(String _n, Declare _d){
        now.define(_n, _d);
    }

    public Declare what(String name){
        return now.what(name);
    }

    public void rootScopeInit(){
        FuncDecl builtinFunc;
        builtinFunc = new FuncDecl("print",
                new VoidType());
        builtinFunc.addlist(new StringType(""),"str");
        builtinFunc.pos = new Position(-1, -1);
        root.define("print", builtinFunc);
        builtinFunc = new FuncDecl("println",
                new VoidType());
        builtinFunc.addlist(new StringType(""),"str");
        builtinFunc.pos = new Position(-1, -1);
        root.define("println", builtinFunc);
        builtinFunc = new FuncDecl("getString",
                new StringType(""));
        builtinFunc.pos = new Position(-1, -1);
        root.define("getString", builtinFunc);
        builtinFunc = new FuncDecl("getInt",
                new IntType(0));
        builtinFunc.pos = new Position(-1, -1);
        root.define("getInt", builtinFunc);
        builtinFunc = new FuncDecl("toString",
                new StringType(""));
        builtinFunc.addlist(new IntType(0), "i");
        builtinFunc.pos = new Position(-1, -1);
        root.define("toString", builtinFunc);
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
        root.define("this", new VarDecl(new Position(-1, -1)));
    }

//    public Scope pushScope(){
    public ScopeNode newLayer(){
        ScopeNode p = now;
        now = new ScopeNode();
        p.addchild(now);
        now.addparent(p);
        return now;
    }

//    public Scope popScope(){
    public ScopeNode exitLayer(){
        ScopeNode node = now;
        if(node.parent == null){
            throw new NullPtr();
        }
        now = node.parent;
//        System.out.println("The Layer Include:");
//        now.travers();
        return node;
    }

    public ScopeNode topScope(){
        return now;
    }

    public boolean containsKey(String name){
        if(now == null){
            throw new NullPtr();
        }
        ScopeNode node = now;
        while(node.parent != null){
            if(now.containsKey(name)){
                return true;
            }
            node =node.parent;
            if(node == null){
                throw new NullPtr();
            }
        }
        if(node.containsKey(name)){
            return true;
        }
        return false;
    }

}
