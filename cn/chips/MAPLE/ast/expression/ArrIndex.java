package cn.chips.MAPLE.ast.expression;

import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.ir.Entity;
import cn.chips.MAPLE.utils.*;
import cn.chips.MAPLE.exception.*;
import cn.chips.MAPLE.ast.type.*;

import java.util.LinkedList;
import java.util.List;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.18, Shanghai.
 */
public class ArrIndex extends Expr {
    public Expr body = null;
    public Expr index = null;
    public VarDecl refDecl = null;
    public Type retype = null;
    public Position pos;

    public ArrIndex(Expr _b, Expr _i, Position _p){
        body = _b;
        index = _i;
        pos = _p;
    }

    public long elemsize(){
        if(refDecl == null)
        refDecl = getRefDecl(body);
        return refDecl.elemsize();
    }

    public VarDecl getRefDecl(Expr _e){
        if(refDecl != null) return refDecl;

        if(_e instanceof Identifier){
            return (VarDecl) ((Identifier)_e).getEnt();
        }

        if(body instanceof ArrIndex){
            refDecl = getRefDecl(body);
        }else if(body instanceof Identifier){
            refDecl = (VarDecl) ((Identifier)body).getEnt();
        }else{
            throw new NoDefined();
        }
        return refDecl;
    }

    public Entity getEnt(){
        if(refDecl == null){
            refDecl = getRefDecl(body);
        }
        return refDecl;
    }

    public void collectIndex(List<IntType> idx){
        if(body instanceof ArrIndex){
            ((ArrIndex) body).collectIndex(idx);
        }
        idx.add((IntType) index.getretype());
        return;
    }

    public long offset(){
        List<IntType> iniind = ((ArrType)getRefDecl(body).type).dmsList;
        List<IntType> idxlist = new LinkedList<>();
        collectIndex(idxlist);
        long ans = 0;
        int idxsize = idxlist.size();
        for(int i = 0; i < idxsize; i ++){
            int tmp = 1;
            for(int j = idxsize - 2; j >= 0 ; j --){
                tmp *= iniind.get(j).getint();
            }
            ans += tmp * idxlist.get(i).getint();
        }
//        ans *= elemsize();
        return ans;
    }
//    public long length(){
////        if(refDecl == null){
////            refDecl = getRefDecl(body);
////        }
//        if(retype == null){
//            throw new NoDefined();
//        }
//
////        return retype.length();
//    }

    public Type getretype(){
        if(retype != null){
            return retype;
        }
        setNowScope(grobalVariable.grobal.now);
        if(retype != null)
            return retype;
        if(index == null || body == null)
            throw new NullPtr();
        Type br =  body.getretype();
        if(br instanceof ArrType){
            if(((ArrType) br).dmsList.size() < ((ArrType) br).dimension - 1 && index.getretype().getint() == 1){
                throw new TypeNotMatch();
            }
        }
        Type ir = index.getretype();
        if(!(ir instanceof IntType)){
            throw new WrongType();
        }
        if(!(br instanceof ArrType)){
//            return br;
            throw new WrongType();
        }
        Type brstdtype = ((ArrType)br).stdtype;
        if(brstdtype instanceof ClassType){
            String n = ((ClassType)brstdtype).getname();
            grobalVariable.grobal.what(n);
        }
        if(((ArrType) br).dimension == 1){
            throw new WrongIndex();
        }
        if(((ArrType) br).dimension == 2){
            retype = ((ArrType) br).stdtype;
            return retype;
        }else{
            ArrType rbr = (ArrType) br;
            retype = new ArrType(rbr.dimension - 1, rbr.stdtype, rbr.pos, rbr.dmsList);
            return retype;
        }
    }
    public void print(int depth){
        String indent = "";
        int dep = depth;
        while(dep > 0){
            indent += "\t";
            dep --;
        }
        System.out.println(indent + "ArrIndex:");
        System.out.println(indent + "body:");
        if(body == null){
            System.out.println(indent + "\tnull");
        }else {
            body.print(depth + 1);
        }
        System.out.println(indent + "index:");
        if(body == null){
            System.out.println(indent + "\tnull");
        }else {
            index.print(depth + 1);
        }
        System.out.println(indent + "retype:");
        if(body == null){
            System.out.println(indent + "\tnull");
        }else {
            System.out.println(indent + "\t" +retype._String());
        }
        System.out.println(indent + "RefDecl:");
        if(refDecl == null){
            System.out.println(indent + "\tnull");
        }else {
            System.out.println(indent + "\t" +refDecl._String());
        }
    }
}
