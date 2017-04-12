package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Error.NullPtr;
import Compiler.Error.WrongIndex;
import Compiler.FrontEnd.MapleParser;
import Compiler.Type.ArrType;
import Compiler.Type.IntType;
import Compiler.Type.Type;
import Compiler.Type.TypeClassifier;
import javafx.geometry.Pos;

import java.util.LinkedList;
import java.util.List;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.08, Shanghai.
 */
public class NewExpr extends Expr {
    private Type type = null;
    public List<Expr> exprlist = new LinkedList<>();
    private int dimension = 0;
    public Position pos;
    public NewExpr(MapleParser.TypeContext ctx){
        type = new TypeClassifier().Classify(ctx);
        pos = new Position(ctx.getStart());
    }
    public void add(Expr _e){
       exprlist.add(_e);
    }
    public void setDimension(int _d){
        dimension = _d;
    }
    public int getDimension(){
        return dimension;
    }
    public Type getretype() {
        for(Expr k : exprlist){
            if(!(k.getretype() instanceof IntType)){
                throw new WrongIndex();
            }
        }
        if(type == null || dimension == 0){
            throw new NullPtr();
        }
        if(dimension > 1) {
            return new ArrType(dimension, type, new Position(-1, -1));
        }
        else {
            return type;
        }
    }
    public boolean issugur(){
        int size = exprlist.size();
        if(size + 1 == dimension)
            return true;
        else return false;
    }
}
