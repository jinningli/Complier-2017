package Compiler.Type;
import AssistantClass.MapleMap;
import AssistantClass.Position;
import Compiler.Error.DefineWrongPos;
import Compiler.Error.NonDefinedClass;
import Compiler.FrontEnd.*;
/**
 * Compiler - 2017
 * lijinning, 2017.04.03, Shanghai.
 */
public class TypeClassifier {
    public MapleMap TypeCheckMap;
    private Type output;
    public TypeClassifier(MapleMap _m){
        TypeCheckMap = _m;
    }
    public Type Classify(MapleParser.TypeProContext ctx){
            if(ctx.type().VOID()!=null){
                output = new VoidType(new Position(ctx.getStart()));
                if(!(ctx.ptrBracket().getText()=="")){
                    System.err.println("NonDefine Type:    " +output.getpos()._String());
                    throw new NonDefinedClass();
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
                    if(!TypeCheckMap.contains(name, MapleMap.MapleMapType.ClassInGrobal)){
                        System.err.println("NonDefine Type:    " + pos._String());
                        throw new NonDefinedClass();
                    }
                    output = new ClassType(name, pos);
                    break;
            }
            if(ctx.ptrBracket().getText()=="")
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
                if(!TypeCheckMap.contains(name, MapleMap.MapleMapType.ClassInGrobal)){
                    System.err.println("NonDefine Type:    " + pos._String());
                    throw new NonDefinedClass();
                }
                output = new ClassType(name, pos);
                break;
        }
        return output;
    }
}
