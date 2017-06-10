package cn.chips.MAPLE.ast.declare;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.ast.statement.*;
import cn.chips.MAPLE.utils.scope.ScopeNode;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.18, Shanghai.
 */
public abstract class Declare extends Statement {
    public ScopeNode nowScope;
    public abstract String getname();
    public abstract Position getpos();
    public abstract void check();
    public abstract void print(int depth);
    public ScopeNode getNowScope(){
        return nowScope;
    }
    public void setNowScope(ScopeNode _s){
        nowScope = _s;
    }
    public abstract String _String();
}
