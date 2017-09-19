package cn.chips.MAPLE.ir;

import cn.chips.MAPLE.utils.Declarations;
import cn.chips.MAPLE.utils.scope.ScopeTree;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class IR {
    public Declarations decl = null;
    public ScopeTree scope = null;

    public IR(Declarations _decl, ScopeTree _scope){
        decl = _decl;
        scope = _scope;
    }


}
