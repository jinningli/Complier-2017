package AssistantClass;

import java.util.*;
import Compiler.Declare.*;
import Compiler.Error.DefineWrongPos;
import Compiler.Error.ReDefine;
import Compiler.Statement.*;
import AssistantClass.*;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.Redefinable;
import org.antlr.v4.codegen.model.decl.Decl;



/**
 * Compiler - 2017
 * lijinning, 2017.04.02, Shanghai.
 * 定义了MapleMap类，使用StepIn函数可以保持相关的状态。
 */

public class MapleMap {
    public enum MapleMapType {
        ClassInGrobal, FunctionInGrobal, VarInGrobal, FunctionInClass, VarInClass, VarInFunction, VarInStatement
    }
    private List<Map<String, Declare>> DeclNameSpace;
    private Stack<Map<String, Declare>>  StatementStack;
    private boolean inClass = false;
    private boolean inFunction = false;
    private boolean inStatement = false;
    public MapleMap()
    {
        DeclNameSpace = new LinkedList<>();
        StatementStack = new Stack<>();
        for(int i = 0; i < 6; i ++)
        {
            DeclNameSpace.add(new HashMap<>());
        }
    }

    public void put(String name, Declare _d, MapleMapType _type)
    {
        switch (_type) {
            case ClassInGrobal:
                if (!DeclNameSpace.get(0).containsKey(name)) {
                    DeclNameSpace.get(0).put(name, _d);
                } else {
                    System.err.println("Class Redefined:    " + _d.getpos()._String());
                    throw new ReDefine();
                }
                break;
            case FunctionInGrobal:
                if (!DeclNameSpace.get(1).containsKey(name)) {
                    DeclNameSpace.get(1).put(name, _d);
                } else{
                    System.err.println("Function Redefined:    " + _d.getpos()._String());
                    throw new ReDefine();
                }
                break;
            case FunctionInClass:
                if (!DeclNameSpace.get(2).containsKey(name)) {
                    DeclNameSpace.get(2).put(name, _d);
                } else{
                    System.err.println("Function Redefined:    " + _d.getpos()._String());
                    throw new ReDefine();
                }
                break;
            case VarInGrobal:
                if (!DeclNameSpace.get(3).containsKey(name)) {
                    DeclNameSpace.get(3).put(name, _d);
                } else{
                    System.err.println("Statement Redefined:    " + _d.getpos()._String());
                    throw new ReDefine();
                }
                break;
            case VarInClass:
                if (!DeclNameSpace.get(4).containsKey(name)) {
                    DeclNameSpace.get(4).put(name, _d);
                } else{
                    System.err.println("Statement Redefined:    " + _d.getpos()._String());
                    throw new ReDefine();
                }
                break;
            case VarInFunction:
                if (!DeclNameSpace.get(5).containsKey(name)) {
                    DeclNameSpace.get(5).put(name, _d);
                } else{
                    System.err.println("Statement Redefined:    " + _d.getpos()._String());
                    throw new ReDefine();
                }
                break;
            case VarInStatement:
                if (!StatementStack.peek().containsKey(_d.getname())) {
                    StatementStack.peek().put(_d.getname(), _d);
                } else{
                    System.err.println("Statement Redefined:    " + _d.getpos()._String());
                    throw new ReDefine();
                }
                break;
            default:
                break;
        }
    }

    public void StepIn(ClassDecl _c){
        if(inClass){
            System.err.println("Define Class in Class:    " + _c.getpos()._String());
            throw new DefineWrongPos();
        }
        if(inFunction){
            System.err.println("Define Class in Function:    " + _c.getpos()._String());
            throw new DefineWrongPos();
        }
        if(inStatement){
            System.err.println("Define Class in Statement:    " + _c.getpos()._String());
            throw new DefineWrongPos();
        }
        inClass = true;
        put(_c.name, _c, MapleMapType.ClassInGrobal);
    }

    public boolean StepOutClass(){
        inClass = false;
        return true;
    }

    public void StepIn(FuncDecl _f) {
        if(inFunction){
            System.err.println("Define Function in Function:    " + _f.getpos()._String());
            throw new DefineWrongPos();
        }
        if(inStatement){
            System.err.println("Define Function in Statement:    " + _f.getpos()._String());
            throw new DefineWrongPos();
        }
        inFunction = true;
        if(!inClass){
            put(_f.name, _f, MapleMapType.FunctionInGrobal);
        }else{
            put(_f.name, _f, MapleMapType.FunctionInClass);
        }
    }

    public boolean StepOutFunction(){
        inFunction = false;
        return true;
    }

    public void StepIn(VarDecl _v){
        StatementStack.push(new HashMap<>());
        if(!inStatement){
            if(!inFunction){
                if(!inClass){
                    put(_v.getname(), _v, MapleMapType.VarInGrobal);
                }
                put(_v.getname(), _v, MapleMapType.VarInClass);
            }
            put(_v.getname(), _v, MapleMapType.VarInFunction);
        }
        inStatement = true;
        put(_v.getname(), _v, MapleMapType.VarInStatement);
    }

    public  boolean StepOutStatement(){
        inStatement = false;
        StatementStack.pop();
        return true;
    }

    public boolean contains(String name, MapleMapType type){
        switch (type){
            case ClassInGrobal:
                return DeclNameSpace.get(0).containsKey(name);
            case FunctionInGrobal:
                return DeclNameSpace.get(1).containsKey(name);
            case FunctionInClass:
                return DeclNameSpace.get(2).containsKey(name);
            case VarInGrobal:
                return DeclNameSpace.get(3).containsKey(name);
            case VarInClass:
                return DeclNameSpace.get(4).containsKey(name);
            case VarInFunction:
                return DeclNameSpace.get(5).containsKey(name);
            case VarInStatement:
                return StatementStack.peek().containsKey(name);
        }
        return false;
    }
}
