package Compiler.Listener;
import Compiler.Declare.ClassDecl;
import Compiler.Declare.FuncDecl;
import Compiler.Declare.VarDecl;
import Compiler.FrontEnd.*;
import AssistantClass.*;
import Compiler.Statement.Statement;

import java.util.List;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class FunctionStdlizer extends MapleBaseListener{
    private MapleMap maple;
    private ClassDecl Grobal = new ClassDecl("Grobal", new Position(0, 0));
    private boolean inClass = false;
    private ClassDecl nowClass = null;
    private boolean inFunction = false;
    private FuncDecl nowFunction = null;
    private boolean inStatement = false;
    private Statement nowStatement = null;
    public FunctionStdlizer(MapleMap _m){
        maple = _m;
    }
    @Override
    public void enterClassDecl(MapleParser.ClassDeclContext ctx) {
        inClass = true;
        nowClass = new ClassDecl(ctx);
        maple.StepIn(nowClass);
    }

    @Override
    public void exitClassDecl(MapleParser.ClassDeclContext ctx) {
        inClass = false;
        nowClass = null;
        maple.StepOutClass();
    }
    //getchild 假如没有的话返回null

    @Override public void enterClassBlock(MapleParser.ClassBlockContext ctx) {
        /*
        List<MapleParser.VarDeclContext> vardeclctx = ctx.varDecl();
        List<MapleParser.FuncDeclContext> funcdeclctx = ctx.funcDecl();
        int nchild = ctx.getChildCount();

        System.err.println(ctx.getChildCount());
        System.err.println(ctx.getText());
        System.err.println(ctx.getChild(0));
        */
    }

    @Override
    public void enterFuncDecl(MapleParser.FuncDeclContext ctx) {
        inFunction = true;
        nowFunction = new FuncDecl(ctx);
        maple.StepIn(nowFunction);
        if(inClass){
            nowClass.add(nowFunction);
        }else {
            Grobal.add(nowFunction);
        }
    }

    @Override
    public void exitFuncDecl(MapleParser.FuncDeclContext ctx) {
        inFunction = false;
        nowFunction = null;
        maple.StepOutFunction();
    }







}
