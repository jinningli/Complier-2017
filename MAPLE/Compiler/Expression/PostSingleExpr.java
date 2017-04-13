package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Error.ExpressionError;
import Compiler.Error.NameNotMatch;
import Compiler.Error.NullPtr;
import Compiler.Error.TypeNotMatch;
import Compiler.Type.BoolType;
import Compiler.Type.IntType;
import Compiler.Type.Type;
import javafx.geometry.Pos;

import java.security.PrivateKey;
import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class PostSingleExpr extends Expr {
    private String opt = "";
    private Expr body = null;
    private Position pos;
    public PostSingleExpr(Expr _b, String _o, Position _p){
        body = _b;
        opt = _o;
        pos = _p;
    }
    public Type getretype() {
        if((Objects.equals(opt, "")) || (body == null)){
            throw new NullPtr();
        }
        if(body instanceof PostSingleExpr){
            throw new ExpressionError();
        }
        if(!(body.getretype() instanceof IntType || body.getretype() instanceof BoolType)){
            throw new TypeNotMatch();
        }
        return body.getretype();
    }
}
