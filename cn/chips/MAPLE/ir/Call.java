package cn.chips.MAPLE.ir;

import java.util.LinkedList;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.05.22, Shanghai.
 */
public class Call extends EXPR {
    private EXPR expr = null;                       //represent the function
    private List<EXPR> args = new LinkedList<>();   //represent the argument list
    public Call(EXPR _e){
        expr = _e;
    }
    public void addArgs(EXPR _arg){
        args.add(_arg);
    }
}
