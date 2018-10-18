package cn.chips.MAPLE.ir;

import java.util.LinkedList;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.06.10, Shanghai.
 */
public class IRLabelTable {
        public List<Label> set= new LinkedList<>();
        public long seq = 0;
        public String base = "__L_";
        public String funcbase = "__Function_";
        public long strseq = 0;
        public String strbase = "__Str_";
        public long grobalseq = 0;
        public String grobalbase = "__Grobal_";


        public Label newGeneralLabel(){
            Label Label = new Label(base + seq++);
            set.add(Label);
            return Label;
        }

        public Label newGeneralLabel(String name){
            Label Label = new Label(base + name + "_" + seq++);
            set.add(Label);
            return Label;
        }

        public Label diyLabel(String name) {
            Label Label = new Label(name);
            set.add(Label);
            return Label;
        }

        public Label newStrLabel(){
            Label Label = new Label(strbase + strseq++);
            set.add(Label);
            return Label;
        }

        public Label newGrobalLabel(){
            Label Label = new Label(grobalbase + grobalseq++);
            set.add(Label);
            return Label;
        }

        public Label newFuncLabel(String funcname){
            Label Label = new Label(funcbase + funcname);
            set.add(Label);
            return Label;
        }

}
