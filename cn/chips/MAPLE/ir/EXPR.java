package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.exception.NullPtr;

/**
 * Maple - 2017
 * lijinning, 2017.05.21, Shanghai.
 */
public abstract class EXPR extends IRBase {
    public abstract void traverse(int depth);
    public EXPR applyAddr(){
        throw new NullPtr();
    }
}