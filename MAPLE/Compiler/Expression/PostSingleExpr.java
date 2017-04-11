package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Error.NameNotMatch;
import Compiler.Error.NullPtr;
import Compiler.Error.TypeNotMatch;
import Compiler.Type.BoolType;
import Compiler.Type.IntType;
import Compiler.Type.Type;

import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.07, Shanghai.
 */
public class PostSingleExpr extends Expr {
    private String opt = "";
    private Expr body = null;
    public PostSingleExpr(Expr _b, String _o){
        body = _b;
        opt = _o;
    }
    public Type getretype() {
        if((Objects.equals(opt, "")) || (body == null)){
            throw new NullPtr();
        }
        if(!(body.getretype() instanceof IntType || body.getretype() instanceof BoolType)){
            throw new TypeNotMatch();
        }
        if(Objects.equals(opt, "!")){
            return new BoolType(new Position(-1, -1));
        }else if(Objects.equals(opt, "~")){
            return body.getretype();
        }else if(Objects.equals(opt, "-") || Objects.equals(opt, "+")){
            return body.getretype();
        }else if(Objects.equals(opt, "--") || Objects.equals(opt, "++")){
            return body.getretype();
        }
        throw new NameNotMatch();
    }
}
