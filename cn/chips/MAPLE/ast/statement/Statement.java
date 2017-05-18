package cn.chips.MAPLE.ast.statement;


import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.17, Shanghai.
 */
public abstract class Statement extends Project {
    public abstract String getname();
    public abstract Position getpos();
    public abstract void  check();
}
