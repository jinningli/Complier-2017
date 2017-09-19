package cn.chips.MAPLE.ir;


import cn.chips.MAPLE.asm.Oprand.ImmediateValue;
import cn.chips.MAPLE.asm.Oprand.MemoryReference;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public interface Entity {
    void traverse(int depth);

    void setMemref(MemoryReference _memref);

    MemoryReference getMemref();

    void setAddress(ImmediateValue _immaddr);

    ImmediateValue getAddress();

    public String translate();
}
