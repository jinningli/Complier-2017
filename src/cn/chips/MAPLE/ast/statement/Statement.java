package cn.chips.MAPLE.ast.statement;


import cn.chips.MAPLE.utils.Position;
import cn.chips.MAPLE.utils.Project;
import cn.chips.MAPLE.utils.scope.ScopeNode;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.17, Shanghai.
 */
public abstract class Statement extends Project {
    public ScopeNode nowScope;
    public abstract String getname();
    public abstract Position getpos();
    public abstract void  check();
    public abstract void print(int depth);
    public ScopeNode getNowScope(){
        return nowScope;
    }
    public void setNowScope(ScopeNode _s){
        nowScope = _s;
    }
}
