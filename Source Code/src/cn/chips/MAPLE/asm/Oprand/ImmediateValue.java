package cn.chips.MAPLE.asm.Oprand;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class ImmediateValue extends Oprand {
    public long value;

    public ImmediateValue(long _value){
        value = _value;
    }
    public String toSource(){
        return "" + value;
    }
}
