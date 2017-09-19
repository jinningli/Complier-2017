package cn.chips.MAPLE.asm.assembly;

import cn.chips.MAPLE.asm.Oprand.Oprand;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class Instruction extends Assembly {
    public String name = null;
    public String suffix = null;
    public Oprand oprand1 = null;
    public Oprand oprand2 = null;
    public boolean needRelocation;

    public Instruction(String _n, Oprand opd1, Oprand opd2){
        name = _n;
        oprand1 = opd1;
        oprand2 = opd2;
    }

    public Instruction(String _n, Oprand opd1){
        name = _n;
        oprand1 = opd1;
    }

    public Instruction(String _n){
        name = _n;
    }

    public String toSource(){
        String res =  "\t" + name;
        if(oprand1 != null){
            res += " " + oprand1.toSource();
        }
        if(oprand2 != null){
            res += ", " + oprand2.toSource();
        }
        return res;
    }

}
