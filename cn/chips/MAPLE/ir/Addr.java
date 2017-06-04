package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Addr extends EXPR {
    public Entity ent = null;       //the expr pf address


    public Addr(Entity _addr){
        ent = _addr;
    }
    public Entity entity(){
        return ent;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Addr:");
        ent.traverse(depth + 1);
    }
}
