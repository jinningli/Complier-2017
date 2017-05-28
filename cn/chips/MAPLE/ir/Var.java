package cn.chips.MAPLE.ir;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Var extends EXPR {
    public Entity ent = null;
    public int size = 0;

    public Var(Entity _ent){
        ent = _ent;
    }
    public Var(int type, Entity _ent) {
        size = type;
        ent = _ent;
    }
}
