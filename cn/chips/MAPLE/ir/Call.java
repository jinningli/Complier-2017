package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.ast.declare.FuncDecl;

import java.util.LinkedList;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Call extends EXPR {
    public FuncDecl ent;                       //represent the function
    public List<EXPR> args = new LinkedList<>();   //represent the argument list

    public Call(FuncDecl _f){
        ent = _f;
    }
    public Call(FuncDecl _f, List<EXPR> _args){
        ent = _f;
        args = _args;
    }
    public void addArgs(EXPR _arg){
        args.add(_arg);
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Call:");
        System.out.println(indent + "Function:");
        ent.traverse(depth + 1);
        System.out.println(indent + "args:");
        for(EXPR e: args){
           e.traverse(depth + 1);
        }
    }
}
