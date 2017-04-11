package Compiler.Type;
import AssistantClass.Position;
import Compiler.Error.NoDefined;
import Compiler.FrontEnd.*;

import java.util.Objects;

/**
 * Compiler - 2017
 * lijinning, 2017.04.03, Shanghai.
 */
public class TypeClassifier {
    private Type output;
    public Type Classify(MapleParser.TypeProContext ctx){
            if(ctx.type().VOID()!=null){
                output = new VoidType(new Position(ctx.getStart()));
                if(!(Objects.equals(ctx.ptrBracket().getText(), ""))){
                    System.err.println("Define Error: Void Array:    " +output.getpos()._String());
                    throw new NoDefined();
                }
            }
           // System.err.print(ctx.type().getText());
            switch (ctx.type().getText()){
                case "int":
                    output = new IntType(new Position(ctx.getStart()));
                    break;
                case "string":
                    output = new StringType(new Position(ctx.getStart()));
                    break;
                case "bool":
                    output = new BoolType(new Position(ctx.getStart()));
                     break;
                default:
                    String name = ctx.type().ID().getText();
                    Position pos = new Position(ctx.getStart());
                    output = new ClassType(name, pos);
                    break;
            }
            if(Objects.equals(ctx.ptrBracket().getText(), ""))
                return output;
            int k = 0;
            while(ctx.ptrBracket().getChild(k)!=null)
                k++;
            output = new ArrType(k, output, new Position(ctx.getStart()));
        return output;
    }
    public Type Classify(MapleParser.TypeContext ctx){
        if(ctx.VOID()!=null){
            output = new VoidType(new Position(ctx.getStart()));
        }
        // System.err.print(ctx.type().getText());
        switch (ctx.getText()){
            case "int":
                output = new IntType(new Position(ctx.getStart()));
                break;
            case "string":
                output = new StringType(new Position(ctx.getStart()));
                break;
            case "bool":
                output = new BoolType(new Position(ctx.getStart()));
                break;
            default:
                String name = ctx.ID().getText();
                Position pos = new Position(ctx.getStart());
                output = new ClassType(name, pos);
                break;
        }
        return output;
    }
}
