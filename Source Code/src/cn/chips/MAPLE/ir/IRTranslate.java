package cn.chips.MAPLE.ir;

import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.06.10, Shanghai.
 */
public class IRTranslate extends IRBase{
    public List<STMT> irstream = null;

    public IRTranslate(){}
    public IRTranslate(List<STMT> _s){
        irstream = _s;
    }

    public void setIrstream(List<STMT> _irstream) {
        this.irstream = _irstream;
    }

    public String translate(){
        StringBuilder res = new StringBuilder();
        for(STMT s: irstream){
            res.append(s.translate() + ";\n");
        }
        return res.toString();
    }
}
