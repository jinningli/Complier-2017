package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class CJump extends STMT {
    public  EXPR cond = null;
    public Label thenLabel = null;
    public Label elseLabel = null;
    public CJump(EXPR _cond, Label _then, Label _else){
        cond = _cond;
        thenLabel = _then;
        elseLabel = _else;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "CJump:");
        System.out.println(indent + "Cond:");
        cond.traverse(depth + 1);
        System.out.println(indent + "thenLabel:");
        thenLabel.traverse(depth + 1);
        System.out.println(indent + "elseLabel:");
        elseLabel.traverse(depth + 1);
    }
}
