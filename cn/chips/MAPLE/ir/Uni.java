package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 * op: ! ~ + -
 */
public class Uni extends EXPR {
    public String op = "";
    public EXPR expr = null;
    public Uni(String _op, EXPR _expr){
        op  = _op;
        expr = _expr;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Uni:");
        System.out.println(indent + "op:");
        System.out.println(indent + "\t" + op);
        System.out.println(indent + "Body:");
        expr.traverse(depth + 1);
    }
    public String translate(){
        return op + expr.translate();
    }
}
