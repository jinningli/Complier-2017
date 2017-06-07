package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.exception.NullPtr;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Mem extends EXPR {
    public EXPR expr = null;       //the expr to fetch value

    public Mem(EXPR _e){
        expr = _e;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Mem:");
        expr.traverse(depth + 1);
    }

}
