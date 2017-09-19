package cn.chips.MAPLE.asm;

import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.asm.assembly.AsmLabel;
import cn.chips.MAPLE.exception.NoDefined;

import java.util.*;

/**
 * Maple - 2017
 * lijinning, 2017.06.01, Shanghai.
 */
public class LabelTable {
    public List<AsmLabel> set= new LinkedList<>();
    public long seq = 0;
    public String base = "__L_";
    public String funcbase = "__Function_";
    public long strseq = 0;
    public String strbase = "__Str_";
    public long grobalseq = 0;
    public String grobalbase = "__Grobal_";

    public AsmLabel newGeneralLabel(MemoryReference memref){
        AsmLabel asmLabel = new AsmLabel(base + seq++, memref);
        set.add(asmLabel);
        return asmLabel;
    }

//    public AsmLabel newFuncLabel(MemoryReference memref){
//        AsmLabel asmLabel = new AsmLabel(funcbase, memref);
//        set.add(asmLabel);
//        return asmLabel;
//    }

    public AsmLabel newStrLabel(MemoryReference memref){
        AsmLabel asmLabel = new AsmLabel(strbase + strseq++, memref);
        asmLabel.isString = true;
        set.add(asmLabel);
        return asmLabel;
    }

    public AsmLabel newGrobalLabel(MemoryReference memref){
        AsmLabel asmLabel = new AsmLabel(grobalbase + grobalseq++, memref);
        asmLabel.isString = true;
        set.add(asmLabel);
        return asmLabel;
    }

    public AsmLabel newGeneralLabel(){
        AsmLabel asmLabel = new AsmLabel(base + seq++,null);
        set.add(asmLabel);
        return asmLabel;
    }

    public AsmLabel newGeneralLabel(String name){
        AsmLabel asmLabel = new AsmLabel(base + name + "_" + seq++,null);
        set.add(asmLabel);
        return asmLabel;
    }

    public AsmLabel diyLabel(String name){
        AsmLabel asmLabel = new AsmLabel(name);
        set.add(asmLabel);
        return asmLabel;
    }

//    public AsmLabel newFuncLabel(){
//        AsmLabel asmLabel = new AsmLabel(funcbase, null);
//        set.add(asmLabel);
//        return asmLabel;
//    }

    public AsmLabel newStrLabel(){
        AsmLabel asmLabel = new AsmLabel(strbase + strseq++);
        asmLabel.isString = true;
        set.add(asmLabel);
        return asmLabel;
    }

    public AsmLabel newGrobalLabel(){
        AsmLabel asmLabel = new AsmLabel(grobalbase + grobalseq++);
        asmLabel.isString = true;
        set.add(asmLabel);
        return asmLabel;
    }

    public AsmLabel newFuncLabel(String funcname){
        AsmLabel asmLabel = new AsmLabel(funcbase + funcname, null);
        set.add(asmLabel);
        return asmLabel;
    }

    public void setMemref(AsmLabel asmLabel, MemoryReference memref){
        if(!set.contains(asmLabel)){
            throw new NoDefined();
        }
        set.get(set.indexOf(asmLabel)).memref = memref;
    }

}
