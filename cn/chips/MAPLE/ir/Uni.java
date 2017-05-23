package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 * op: ! ~ + -
 */
public class Uni extends EXPR {
    private String op = "";
    private EXPR expr = null;
    public Uni(String _op, EXPR _expr){
        op  = _op;
        expr = _expr;
    }
}
