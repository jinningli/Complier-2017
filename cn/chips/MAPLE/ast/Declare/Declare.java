package cn.chips.MAPLE.ast.Declare;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.ast.Statement.*;

/**
 * Created by lijinning on 2017/4/2.
 */
public abstract class Declare extends Statement {
    public abstract String getname();
    public abstract Position getpos();
    public abstract void check();
}
