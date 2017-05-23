package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Bin extends EXPR {
    private EXPR lhs = null;
    private EXPR rhs = null;
    private String op = "";
    public Bin(EXPR _l, EXPR _r, String _op){
        lhs = _l;
        rhs = _r;
        op = _op;
    }
}
