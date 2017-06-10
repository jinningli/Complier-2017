package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.utils.scope.ScopeNode;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.07, Shanghai.
 */

public abstract class Expr extends Project{
    public ScopeNode nowScope = null;
    public abstract Type getretype();
    public ScopeNode getNowScope(){
        return nowScope;
    }
    public void setNowScope(ScopeNode _s){
        if(nowScope == null)
            nowScope = _s;
    }
    public abstract void print(int depth);
    public abstract Entity getEnt();
}
