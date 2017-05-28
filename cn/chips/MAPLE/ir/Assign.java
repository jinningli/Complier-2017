package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Assign extends STMT {
    private EXPR lhs = null;
    private EXPR rhs = null;
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
}
