package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class CJump extends STMT {
    private EXPR cond = null;
    private Label thenLabel = null;
    private Label elseLabel = null;
    public CJump(EXPR _cond, Label _then, Label _else){
        cond = _cond;
        thenLabel = _then;
        elseLabel = _else;
    }
}
