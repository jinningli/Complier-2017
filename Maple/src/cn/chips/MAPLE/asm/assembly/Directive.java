package cn.chips.MAPLE.asm.assembly;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class Directive extends Assembly {
    public String content;

    public Directive(String _cont){
        content = _cont;
    }
    public String toSource(){
        return content;
    }
}
