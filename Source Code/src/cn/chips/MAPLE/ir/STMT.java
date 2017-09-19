package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.21, Shanghai.
 */
public abstract class STMT extends IRBase {
    public abstract void traverse(int depth);
    public abstract String translate();
}
