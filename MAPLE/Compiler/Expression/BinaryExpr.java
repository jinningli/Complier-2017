package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Error.NullPtr;
import Compiler.Error.TypeNotMatch;
import Compiler.Error.WrongType;
import Compiler.Type.BoolType;
import Compiler.Type.IntType;
import Compiler.Type.Type;

import java.util.Objects;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class BinaryExpr extends Expr {
    private Expr left = null;
    private Expr right = null;
    private String opt = "";
    private Position pos;
    public BinaryExpr(Expr _l, Expr _r, String _o, Position _p){
        left = _l;
        right = _r;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if(left == null || right == null){
            throw new NullPtr();
        }
        if(!Objects.equals(left.getretype().typename(), right.getretype().typename())) {
            throw new WrongType();
        }
        return left.getretype();
    }
}
