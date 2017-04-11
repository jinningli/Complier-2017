package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Error.NullPtr;
import Compiler.Error.TypeNotMatch;
import Compiler.Type.BoolType;
import Compiler.Type.Type;

import java.util.Objects;

/**
 * Created by lijinning on 2017/4/2.
 */
public class LogicExpr extends Expr {
    private Expr left = null;
    private Expr right = null;
    private String opt = "";
    private Position pos;
    public LogicExpr(Expr _l, Expr _r, String _o, Position _p){
        left = _l;
        right = _r;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if(Objects.equals(opt, "")){
            throw new NullPtr();
        }
        if(left == null || right == null){
            throw new NullPtr();
        }
        Type lt = left.getretype();
        Type rt = right.getretype();
        if(!Objects.equals(lt.typename(), rt.typename())){
            throw new TypeNotMatch();
        }
        return new BoolType(new Position(-1, -1));
    }
}
