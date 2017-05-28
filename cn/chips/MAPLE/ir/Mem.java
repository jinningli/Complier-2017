package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Mem extends EXPR {
    public EXPR expr = null;       //the expr to fetch value

    public Mem(EXPR _e){
        expr = _e;
    }
}
