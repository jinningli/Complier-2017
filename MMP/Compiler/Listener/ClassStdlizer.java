package Compiler.Listener;

import AssistantClass.Position;
import Compiler.Declare.ClassDecl;
import Compiler.FrontEnd.MMPBaseListener;
import Compiler.FrontEnd.MMPParser;
import java.util.*;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class ClassStdlizer extends MMPBaseListener{
    private Map<String, ClassDecl> classmap = new HashMap<>();
    boolean Error = false;
    @Override
    public void enterClassDecl(MMPParser.ClassDeclContext ctx)
    {
        int IndexCnt = ctx.getRuleIndex();
        String name = ctx.ID().getText();
        Position ClassIdPosition = new Position(ctx.ID().getSymbol());
        ClassDecl ReadinClass = new ClassDecl(name, ClassIdPosition);
        if(!classmap.containsKey(name))
        {
            classmap.put(name, ReadinClass);
        }
        else
        {
            System.err.println("Class Redefined:    " + ClassIdPosition._String());
            Error = true;
        }
        if(ctx.classBlock()==null)
        {
            System.err.println("Class Body Not Found:   " + ClassIdPosition._String());
            Error = true;
        }
        //System.out.println(ctx.getRuleIndex());

    }
}
