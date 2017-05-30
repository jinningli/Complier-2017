package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.exception.NullPtr;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Var extends EXPR {
    public Entity ent = null;
    public int size = 0;

    public Var(Entity _ent){
        ent = _ent;
    }
    public Var(int type, Entity _ent) {
        size = type;
        ent = _ent;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Var with size: " + size);
        ent.traverse(depth + 1);
    }
    public EXPR applyAddr(){
        return new Addr(ent);
    }
}
