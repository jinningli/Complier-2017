package Compiler.Listener;

import AssistantClass.MapleMap;
import AssistantClass.Position;
import Compiler.Declare.ClassDecl;
import Compiler.FrontEnd.MapleBaseListener;
import Compiler.FrontEnd.MapleParser;

import static AssistantClass.MapleMap.MapleMapType.*;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class ClassStdlizer extends MapleBaseListener {
    private MapleMap maple;
    private boolean Right = true;
    public ClassStdlizer(MapleMap _m)
    {
        maple = _m;
    }
    @Override
    public void enterClassDecl(MapleParser.ClassDeclContext ctx) {
        ClassDecl Entering = new ClassDecl(ctx);//to store?
        maple.StepIn(Entering);//to throw?
        //System.out.println(ctx.getRuleIndex());
    }
    @Override
    public void exitClassDecl(MapleParser.ClassDeclContext ctx){
        maple.StepOutClass();
    }
}
