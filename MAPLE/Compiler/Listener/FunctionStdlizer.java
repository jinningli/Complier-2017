package Compiler.Listener;
import Compiler.Declare.ClassDecl;
import Compiler.Declare.FuncDecl;
import Compiler.FrontEnd.*;
import AssistantClass.*;
import Compiler.Statement.Statement;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class FunctionStdlizer extends MapleBaseListener{
    private MapleMap maple;
    private boolean inClass = false;
    private ClassDecl nowClass = null;
    private boolean inFunction = false;
    private FuncDecl nowFunction = null;
    private boolean inStatement = false;
    private Statement nowStatement = null;
    FunctionStdlizer(MapleMap _m){
        maple = _m;
    }
    @Override
    public void enterClassDecl(MapleParser.ClassDeclContext ctx) {
        inClass = true;
    }

    @Override
    public void exitClassDecl(MapleParser.ClassDeclContext ctx) {
    }

    @Override
    public void enterFuncDecl(MapleParser.FuncDeclContext ctx) {

    }
}
