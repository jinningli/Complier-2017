package cn.chips.MAPLE.ir;

import java.util.LinkedList;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Call extends EXPR {
    public EXPR expr = null;                       //represent the function
    public List<EXPR> args = new LinkedList<>();   //represent the argument list
    public Call(EXPR _e){
        expr = _e;
    }
    public Call(EXPR _e, List<EXPR> _args){
        expr = _e;
        args = _args;
    }
    public void addArgs(EXPR _arg){
        args.add(_arg);
    }
}
