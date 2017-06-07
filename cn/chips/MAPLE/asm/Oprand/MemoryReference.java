package cn.chips.MAPLE.asm.Oprand;

import cn.chips.MAPLE.asm.assembly.AsmLabel;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class MemoryReference extends Oprand {
    public Register base = null;
    public Register mul = null;
    public AsmLabel asmLabel = null;
    public long scale;
    public long offset;
    public int para;
    public boolean fixed;
    public String str;

    public MemoryReference(Register _base){
        base = _base;
        para = 1;
        fixed = false;
    }

    public MemoryReference(Register _base, Register _mul, long _scale){
        base = _base;
        mul = _mul;
        scale = _scale;
        para = 12;
        fixed = false;
    }

    public MemoryReference(Register _base, Register _mul, long _scale, long _offset){
        base = _base;
        mul = _mul;
        scale = _scale;
        offset = _offset;
        para = 123;
        fixed = false;
    }

    public MemoryReference(Register _base, long _offset){
        base = _base;
        offset = _offset;
        para = 13;
        fixed = false;
    }

    public MemoryReference(long _offset){
        offset = _offset;
        para = 3;
        fixed = false;
    }

    public MemoryReference(AsmLabel _Asm_label){
        asmLabel = _Asm_label;
        para = 4;
        fixed = false;
    }

    public String toSource(){
        if(asmLabel != null && asmLabel.isString){
            return str;
        }
        switch (para){
            case 1:
                str = base.type;
                break;
            case 12:
                str =  base.type + "+" + mul.type + "*" + scale;
                break;
            case 123:
                str =base.type + "+" + mul.type + "*" + scale + "+" + offset;
                break;
            case 13:
                str = base.type + "+" + offset;
                break;
            case 3:
                str = "" + offset;
                break;
            default: break;
        }
        return "qword [" + str + "]";
    }
}
