package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.asm.Oprand.Oprand;
import cn.chips.MAPLE.exception.NoDefined;
import cn.chips.MAPLE.exception.NullPtr;

/**
 * Maple - 2017
 * lijinning, 2017.05.21, Shanghai.
 */
public abstract class EXPR extends IRBase {
    public abstract void traverse(int depth);
    public abstract String translate();
    public MemoryReference memref(){throw new NoDefined();}
    public Oprand AsmValue(){throw new NoDefined();}
}