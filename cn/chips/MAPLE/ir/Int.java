package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Int extends EXPR {
    public long value = 0;
    public Int(long k){
        value = k;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Int:");
        System.out.println(indent + "Value: " + value);
    }
}
