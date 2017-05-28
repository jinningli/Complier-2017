package cn.chips.MAPLE.ir;

import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.05.28, Shanghai.
 */
public class IRTraverse extends IR{
    public List<STMT> irstream = null;

    public IRTraverse(){}
    public IRTraverse(List<STMT> _s){
        irstream = _s;
    }

    public void setIrstream(List<STMT> _irstream) {
        this.irstream = _irstream;
    }

    public void traverse(){
        for(STMT s: irstream){
            s.traverse(0);
        }
    }
}
