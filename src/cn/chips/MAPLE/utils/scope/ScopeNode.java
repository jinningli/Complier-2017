package cn.chips.MAPLE.utils.scope;

import cn.chips.MAPLE.ast.declare.Declare;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.exception.NoDefined;
import cn.chips.MAPLE.exception.ReDefine;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Maple - 2017
 * lijinning, 2017.05.17, Shanghai.
 */
public class ScopeNode{
    public Map<String, Declare> namestore = new HashMap<>();
    public List<ScopeNode> child = new LinkedList<>();
    public ScopeNode parent = null;

    public ScopeNode(){}
    public Declare what(String _s){
        ScopeNode node = parent;
        if(namestore.containsKey(_s)){
            return namestore.get(_s);
        }
        while(node != null){
            if(node.namestore.containsKey(_s)){
                return node.namestore.get(_s);
            }
            node = node.parent;
        }
        throw new NoDefined();
    }

    public List<VarDecl> localVariables(){
        List<VarDecl> vdlist = new LinkedList<>();
        for(Map.Entry e: namestore.entrySet()){
            if(e.getValue() instanceof VarDecl){
                vdlist.add((VarDecl) e.getValue());
            }
        }
        return vdlist;
    }

    public List<VarDecl> localVariables(ScopeNode now){
        List<VarDecl> vdlist = new LinkedList<>();
        for(Map.Entry e: now.namestore.entrySet()){
            if(e.getValue() instanceof VarDecl){
                vdlist.add((VarDecl) e.getValue());
            }
        }
        return vdlist;
    }

    public List<VarDecl> allLocalVariables(){
        return allLocalVariables(this);
    }

    public List<VarDecl> allLocalVariables(ScopeNode now){
        List<VarDecl> varlist = new LinkedList<>();
        for(ScopeNode s: now.child){
            varlist.addAll(allLocalVariables(s));
        }
        varlist.addAll(localVariables(now));
        return varlist;
    }

    public boolean containsKey(String _s){
        return namestore.containsKey(_s);
    }

    public void addparent(ScopeNode _p){
        if(parent != null){
            throw new ReDefine();
        }
        parent = _p;
    }

    public void addchild(ScopeNode _s){
        if(child.contains(_s)){
            throw new ReDefine();
        }
        child.add(_s);
    }

    public void define(String _n, Declare _d){
        if(namestore.containsKey(_n)){
            throw new ReDefine();
        }
        namestore.put(_n, _d);
    }
    public void travers(){
        System.out.println("---------------------\nThe Scope: " + this +" Contains: ");
        for(Map.Entry<String, Declare> data : namestore.entrySet()){
            String n = data.getKey();
            Declare d = data.getValue();
            System.out.println("The Key:  " + n
                    + "  direct to  " + d.getname()
                    + "  in initial line:  " + d.getpos()._String());
        }
        System.out.println("---------------------\n");
        ScopeNode node = parent;
        while(node != null) {
            node.travers();
            node = node.parent;
        }
    }
}
