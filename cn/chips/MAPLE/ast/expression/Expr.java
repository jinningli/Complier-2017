package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.utils.scope.ScopeNode;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.07, Shanghai.
 */

public abstract class Expr extends Project{
    public ScopeNode nowScope;
    public abstract Type getretype();
    public ScopeNode getNowScope(){
        return nowScope;
    }
    public void setNowScope(ScopeNode _s){
        nowScope = _s;
    }
    public abstract void print(int depth);
}
