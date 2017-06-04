package cn.chips.MAPLE.asm.assembly;

import cn.chips.MAPLE.asm.Oprand.MemoryReference;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class AsmLabel extends Assembly {
    public String str;
    public MemoryReference memref;
    public boolean isString;

    public AsmLabel(String _str, MemoryReference _memref){
        str = _str;
        memref = _memref;
    }

    public AsmLabel(String _str){
        str = _str;
        memref = null;
    }

    public String toSource(){
        return str + ":";
    }
}
