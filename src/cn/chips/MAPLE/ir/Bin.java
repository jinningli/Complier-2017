package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Bin extends EXPR {
    public EXPR lhs = null;
    public EXPR rhs = null;
    public String op = "";
    public Bin(String _op, EXPR _l, EXPR _r){
        lhs = _l;
        rhs = _r;
        op = _op;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Bin:");
        System.out.println(indent + "lhs:");
        lhs.traverse(depth + 1);
        System.out.println(indent + "rhs:");
        rhs.traverse(depth + 1);
        System.out.println(indent + "op:");
        System.out.println(indent + op);
    }

    public String translate(){
        String res = "(";
        res +=lhs.translate();
        res += " " + op + " ";
        res += rhs.translate();
        res += ")";
        return res;
    }
}
