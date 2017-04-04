package AssistantClass;

import java.util.*;
import Compiler.Declare.*;
import Compiler.Statement.*;
import AssistantClass.*;
import org.antlr.v4.codegen.model.decl.Decl;

import javax.swing.plaf.nimbus.State;


/**
 * Compiler - 2017
 * lijinning, 2017.04.02, Shanghai.
 * 定义了MapleMap类，使用StepIn函数可以保持相关的状态。
 */

public class MapleMap {
    public enum MapleMapType {
        ClassInGrobal, FunctionInGrobal, StatementInGrobal, FunctionInClass, StatementInClass, StatementInFunction, StatementInStatement
    }
    private List<Map<String, Declare>> DeclNameSpace;
    private List<Map<String, Statement>> StatementNameSpace;
    private Stack<Map<String, Statement>>  StatementStack;
    private boolean inClass = false;
    private boolean inFunction = false;
    private boolean inStatement = false;

    public MapleMap()
    {
        DeclNameSpace = new LinkedList<>();
        StatementNameSpace = new LinkedList<>();
        StatementStack = new Stack<>();
        for(int i = 0; i < 3; i ++)
        {
            DeclNameSpace.add(new HashMap<>());
        }
        for(int i = 0; i < 3; i ++)
        {
            StatementNameSpace.add(new HashMap<>());
        }
    }

    public boolean put(String name, Declare _d, MapleMapType _type)
    {
        switch (_type) {
            case ClassInGrobal:
                if (!DeclNameSpace.get(0).containsKey(name)) {
                    DeclNameSpace.get(0).put(name, _d);
                } else {
                    System.err.println("Class Redefined:    " + _d.getpos()._String());
                    return false;
                }
                break;
            case FunctionInGrobal:
                if (!DeclNameSpace.get(1).containsKey(name)) {
                    DeclNameSpace.get(1).put(name, _d);
                } else{
                    System.err.println("Function Redefined:    " + _d.getpos()._String());
                    return false;
                }
                break;
            case FunctionInClass:
                if (!DeclNameSpace.get(2).containsKey(name)) {
                    DeclNameSpace.get(2).put(name, _d);
                } else{
                    System.err.println("Function Redefined:    " + _d.getpos()._String());
                    return false;
                }
                break;
            default:
                break;
        }
        return true;
    }
    public boolean put(String name, Statement _s, MapleMapType _type)
    {
        switch (_type) {
            case StatementInGrobal:
                if (!StatementNameSpace.get(0).containsKey(name)) {
                    StatementNameSpace.get(0).put(name, _s);
                } else{
                    System.err.println("Statement Redefined:    " + _s.getpos()._String());
                    return false;
                }
                break;
            case StatementInClass:
                if (!StatementNameSpace.get(1).containsKey(name)) {
                    StatementNameSpace.get(1).put(name, _s);
                } else{
                    System.err.println("Statement Redefined:    " + _s.getpos()._String());
                    return false;
                }
                break;
            case StatementInFunction:
                if (!StatementNameSpace.get(2).containsKey(name)) {
                    StatementNameSpace.get(2).put(name, _s);
                } else{
                    System.err.println("Statement Redefined:    " + _s.getpos()._String());
                    return false;
                }
                break;
            case StatementInStatement:
                if (!StatementStack.peek().containsKey(_s.getname())) {
                    StatementStack.peek().put(_s.getname(), _s);
                } else{
                    System.err.println("Statement Redefined:    " + _s.getpos()._String());
                    return false;
                }
            default:
                break;
        }
        return true;
    }

    public boolean StepIn(ClassDecl _c){
        if(inClass){
            System.err.println("Define Class in Class:    " + _c.getpos()._String());
            return false;
        }
        if(inFunction){
            System.err.println("Define Class in Function:    " + _c.getpos()._String());
            return false;
        }
        if(inStatement){
            System.err.println("Define Class in Statement:    " + _c.getpos()._String());
            return false;
        }
        inClass = true;
        return put(_c.name, _c, MapleMapType.ClassInGrobal);
    }

    public boolean StepOutClass(){
        inClass = false;
        return true;
    }

    public boolean StepIn(FuncDecl _f) {
        if(inFunction){
            System.err.println("Define Function in Function:    " + _f.getpos()._String());
            return false;
        }
        if(inStatement){
            System.err.println("Define Function in Statement:    " + _f.getpos()._String());
            return false;
        }
        inFunction = true;
        if(!inClass){
            return put(_f.name, _f, MapleMapType.FunctionInGrobal);
        }else{
            return put(_f.name, _f, MapleMapType.FunctionInClass);
        }
    }

    public boolean StepOutFunction(){
        inFunction = false;
        return true;
    }

    public boolean StepIn(Statement _s){
        StatementStack.push(new HashMap<>());
        if(!inStatement){
            if(!inFunction){
                if(!inClass){
                    return put(_s.getname(), _s, MapleMapType.StatementInGrobal);
                }
                return put(_s.getname(), _s, MapleMapType.StatementInClass);
            }
            return put(_s.getname(), _s, MapleMapType.StatementInFunction);
        }
        inStatement = true;
        return put(_s.getname(), _s, MapleMapType.StatementInStatement);
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
            case StatementInGrobal:
                return StatementNameSpace.get(0).containsKey(name);
            case StatementInClass:
                return StatementNameSpace.get(1).containsKey(name);
            case StatementInFunction:
                return StatementNameSpace.get(2).containsKey(name);
            case StatementInStatement:
                return StatementStack.peek().containsKey(name);
        }
        return false;
    }
}
