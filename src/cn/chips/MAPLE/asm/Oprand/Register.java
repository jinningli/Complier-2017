package cn.chips.MAPLE.asm.Oprand;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class Register extends Oprand {
    public String type;
    public  long value;

    public Register(String _type, long _value){
        type = _type;
        value = _value;
    }

    public Register(String _type){
        type = _type;
        value = 0;
    }

    public String toSource(){
        return type;
    }

}
