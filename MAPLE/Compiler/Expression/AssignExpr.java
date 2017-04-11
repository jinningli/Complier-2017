package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Error.NullPtr;
import Compiler.Error.TypeNotMatch;
import Compiler.Type.Type;

import java.util.Objects;

/**
 * Created by lijinning on 2017/4/2.
 */
public class AssignExpr extends Expr {
    private Expr left = null;
    private Expr right = null;
    private Position pos = null;
    public AssignExpr(Expr _l, Expr _r, Position _p){
        left = _l;
        right = _r;
        pos = _p;
    }
    public Type getretype(){
        if(left == null || right == null){
            throw new NullPtr();
        }
        Type lt = left.getretype();
        Type rt = right.getretype();
        if(!Objects.equals(lt.typename(), rt.typename())){
            throw new TypeNotMatch();
        }
        return left.getretype();
    }
}
