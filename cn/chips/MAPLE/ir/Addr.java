package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Addr extends EXPR {
    private Entity ent = null;       //the expr pf address
    public Addr(Entity _addr){
        ent = _addr;
    }
    public Entity entity(){
        return ent;
    }

}
