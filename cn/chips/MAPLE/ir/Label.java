package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public class Label extends IR {
    public static int labelcnt = 0;
    public String str = "";
    public  int id = labelcnt ++;
    public Label(){}
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
}
