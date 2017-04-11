package AssistantClass;

import Compiler.Declare.Declare;
import Compiler.Error.DeclLost;
import Compiler.Error.NoDefined;
import Compiler.Error.ReDefine;

import java.util.*;

/**
 * Compiler - 2017
 * lijinning, 2017.04.10, Shanghai.
 */
public class MapleNameSpace {

    public Map<String, Stack<Declare>> namestack = new HashMap<>();
    public Stack<Set<String>> layer = new Stack<>();
    private int nowlayer = 0;
    private int maxlayer = 0;

    public MapleNameSpace(){
        grobalLayerInit();
    }

    public Declare what(String name){
        Stack<Declare> sd = namestack.get(name);
       if(sd == null || sd.isEmpty())
           throw new NoDefined();
       return sd.peek();
    }

    public void grobalLayerInit(){
        layer.push(new HashSet<>());
    }

    public void define(String _n, Declare _d){
        if(layer.peek().contains(_n)){
            throw new ReDefine();
        }
        layer.peek().add(_n);
        Stack<Declare> sd = namestack.get(_n);
        if (sd == null){
            sd = new Stack<>();
            sd.push(_d);
            namestack.put(_n, sd);
        }else{
            namestack.get(_n).push(_d);
        }
    }

    public void newLayer(){
        nowlayer ++;
        maxlayer = nowlayer > maxlayer ? nowlayer : maxlayer;
        layer.push(new HashSet<>());
    }
    public void exitLayer(){
        Set<String> s = layer.peek();
        Iterator<String> it = s.iterator();
        String n;
        while(it.hasNext()){
            n = it.next();
            if((!namestack.containsKey(n)) || namestack.get(n) == null || namestack.get(n).isEmpty()){
                throw new DeclLost();
            }
            namestack.get(n).pop();
        }
        nowlayer --;
        layer.pop();
    }

}
