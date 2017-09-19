package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Jump extends STMT {
    public Label label = null;

    public Jump(Label _label){
        label = _label;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Jump:");
        System.out.println(indent + "toLabel:");
        label.traverse(depth + 1);
    }

    public String translate(){
        return "goto " + label.str;
    }
}
