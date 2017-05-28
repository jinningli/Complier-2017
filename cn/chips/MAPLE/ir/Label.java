package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public class Label extends EXPR {
    public static int labelcnt = 0;
    public String str;
    public int id = 0;

    public Label(){
        id = labelcnt ++;
        str = "Label" + id;
    }
    public Label(String _str){
        str = _str;
    }
    public Label(String _str, boolean nocnt){
        str = _str;
        if(nocnt){
            labelcnt --;
            id = -1;
        }
    }
    public String getname(){
        return str;
    }
    public String toString(){
        return str;
    }
    public void traverse(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "Label:");
        System.out.println(indent + "Id: " + str);
    }
}
