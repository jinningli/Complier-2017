package Compiler.Expression;

import AssistantClass.Position;
import Compiler.Declare.Declare;
import Compiler.Declare.FuncDecl;
import Compiler.Error.NameNotMatch;
import Compiler.Error.NullPtr;
import Compiler.Error.NumberNotMatch;
import Compiler.Error.TypeNotMatch;
import Compiler.FrontEnd.Main;
import Compiler.FrontEnd.MapleParser;
import Compiler.Type.NullType;
import Compiler.Type.Type;
import org.antlr.v4.codegen.model.decl.Decl;

import java.util.*;

/**
 * Created by lijinning on 2017/4/2.
 */
public class FunctionCall extends Expr {
    private String name = "";
    private Position pos;
    private List<Expr> flist;
    public FunctionCall(MapleParser.FunctionCallContext ctx){
        name = ctx.ID().getText();
        pos = new Position(ctx.getStart());
        flist = new LinkedList<>();
    }
    public void listadd(Expr _es){
        flist.add(_es);
    }
    public Type getretype() {
        if(Objects.equals(name, "")){
            throw new NullPtr();
        }
       //System.err.println(pos._String());
        Declare d;
        if(Main.inclass) {
            String inclassname = Main.nowclass + "-" + name;
            if (Main.grobal.containsKey(inclassname)) {
                d = Main.grobal.what(inclassname);
                return ((FuncDecl) d).retype;
            }
        }
        d = Main.grobal.what(name);
        if(!(d instanceof FuncDecl)){
            throw new NameNotMatch();
        }
        FuncDecl func = (FuncDecl) d;
        if(func.flist.size() != flist.size()){
            throw new NumberNotMatch();
        }
        for(int i = 0; i < flist.size() ; i ++){
//            System.err.println(flist.get(i).getretype().typename());
//            System.err.println(func.flist.get(i).getFirst().typename());
//            System.err.println(flist.get(i).getretype().typename());
//            System.err.println(func.flist.get(i).getFirst().typename());
            if(flist.get(i).getretype() instanceof NullType) continue;
            if(!Objects.equals(flist.get(i).getretype().typename(), func.flist.get(i).getFirst().typename())){
               System.err.println(pos._String());
                throw new TypeNotMatch();
            }
        }
        /// to be continued;
        return func.retype;
    }

}
