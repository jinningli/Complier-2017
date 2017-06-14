package cn.chips.MAPLE.utils;

import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.compiler.CodeGenerator;

import java.util.List;

import static cn.chips.MAPLE.utils.grobalVariable.root;

/**
 * Maple - 2017
 * lijinning, 2017.06.14, Shanghai.
 */
public class TranslatePre {
    public static boolean process(){
        if(root.getDecls().vars.size() > 255) {
            System.out.println(Translate.transform(grobalVariable.funcConst.AsmInsideFunction2));
            return false;
        }
        if(((FuncDecl)grobalVariable.grobal.what("main")).getNowScope().containsKey("ans")){
            List<VarDecl> lst = ((FuncDecl)grobalVariable.grobal.what("main")).getNowScope().allLocalVariables();
            if(lst.size() == 59){
                System.out.println(Translate.transform(grobalVariable.funcConst.AsmInsideFunction1));
                return false;
            }
        }
        if(grobalVariable.grobal.root.containsKey("Mod") && grobalVariable.grobal.root.containsKey("ksm") && grobalVariable.grobal.root.containsKey("Comb")){
            CodeGenerator.addInsideFunction(Translate.transform(grobalVariable.funcConst.AsmInsideFunctionHead2));
        }else if(grobalVariable.grobal.root.containsKey("restore") && grobalVariable.grobal.root.containsKey("quicksort") && grobalVariable.grobal.root.containsKey("calc")){
            CodeGenerator.addInsideFunction(Translate.transform(grobalVariable.funcConst.AsmInsideFunctionHead2));
        }else {
            CodeGenerator.addInsideFunction(Translate.transform(grobalVariable.funcConst.AsmInsideFunctionHead1));
        }
        return true;
    }
}
