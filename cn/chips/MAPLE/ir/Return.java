package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Return extends STMT {
    private EXPR expr = null;

    public Return(EXPR _e){
        expr = _e;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Return:");
        expr.traverse(depth + 1);
    }
}
