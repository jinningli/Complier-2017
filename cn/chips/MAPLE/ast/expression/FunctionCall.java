package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;
import cn.chips.MAPLE.compiler.Main;
import cn.chips.MAPLE.parser.*;
import cn.chips.MAPLE.ast.declare.*;

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
        setNowScope(grobalVariable.grobal.now);
        if(Objects.equals(name, "")){
            throw new NullPtr();
        }
       //System.err.println(pos._String());
        Declare d;
        if(grobalVariable.inclass) {
            String inclassname = grobalVariable.nowclass + "-" + name;
            if (grobalVariable.grobal.containsKey(inclassname)) {
                d = grobalVariable.grobal.what(inclassname);
                return ((FuncDecl) d).retype;
            }
        }
        d = grobalVariable.grobal.what(name);
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
