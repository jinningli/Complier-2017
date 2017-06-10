package cn.chips.MAPLE.asm;

import cn.chips.MAPLE.ast.declare.Declare;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.utils.grobalVariable;
import cn.chips.MAPLE.utils.scope.ScopeNode;

import java.io.*;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.06.10, Shanghai.
 */
public class AsmModifier {
    String asmFileName;
    String res = "";
    public AsmModifier(String filename){
        asmFileName = filename;
    }

    public void process() throws IOException {
        File f = new File(asmFileName);
        BufferedReader fin = new BufferedReader(new FileReader(f));
        String line;
        while((line = fin.readLine()) != null){
            if(line.contains(".data")){
                res += line + "\n";
                res += "\n";
                res += buildDataField();
                res +="\n";
                continue;
            }
            res += line + "\n";
        }
    }

    public void print(){
        System.out.println(res);
    }

    public String buildDataField(){
        String res = "";
        ScopeNode scope = grobalVariable.grobal.root;
        List<VarDecl> grobal =  scope.localVariables();
        for(VarDecl vd : grobal){
            if(vd.isGrobal){
                res += vd.name + ":\n";
                res += "\tdq 0,0\n";
            }
        }
        return res;
    }
}
