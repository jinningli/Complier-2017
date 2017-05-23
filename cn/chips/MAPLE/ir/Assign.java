package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Assign extends STMT {
    private EXPR lhs = null;
    private EXPR rhs = null;
    public Assign(EXPR _l, EXPR _r){
        lhs = _l;
        rhs = _r;
    }

}
