package cn.chips.MAPLE.ast.declare;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.ast.statement.*;

/**
 * Created by lijinning on 2017/4/2.
 */
public abstract class Declare extends Statement {
    public abstract String getname();
    public abstract Position getpos();
    public abstract void check();
}
