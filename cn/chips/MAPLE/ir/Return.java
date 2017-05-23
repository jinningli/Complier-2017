package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Return extends STMT {
    private EXPR expr = null;

    public Return(EXPR _e){
        expr = _e;
    }
}
