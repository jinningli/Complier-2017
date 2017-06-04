package cn.chips.MAPLE.ir;


/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class LabelStmt extends STMT{
    public Label label;

    public LabelStmt(Label _p){
        label = _p;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + label.str);
    }
}
