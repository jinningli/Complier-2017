package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Bin extends EXPR {
    private EXPR lhs = null;
    private EXPR rhs = null;
    private String op = "";
    public Bin(String _op, EXPR _l, EXPR _r){
        lhs = _l;
        rhs = _r;
        op = _op;
    }
}
