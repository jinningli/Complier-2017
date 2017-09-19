package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.ast.declare.VarDecl;

import java.util.Objects;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Assign extends STMT {
    public EXPR lhs = null;
    public EXPR rhs = null;
    public Assign(EXPR _l, EXPR _r){
        lhs = _l;
        rhs = _r;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Assign:");
        System.out.println(indent + "lhs:");
        lhs.traverse(depth + 1);
        System.out.println(indent + "rhs:");
        rhs.traverse(depth + 1);
    }

    public String translate(){
        String res;
        if(lhs instanceof Addr){

            if(((Addr) lhs).ent instanceof VarDecl && ((VarDecl)((Addr) lhs).ent).isGrobal){
                    res = lhs.translate();
            }else
            res = lhs.translate();
        }else {
            res = "*((long*)" + lhs.translate() + ")";
        }

        res += " = ";
        res += rhs.translate();
        return res;
    }
}
