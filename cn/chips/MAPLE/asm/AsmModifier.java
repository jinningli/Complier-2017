package cn.chips.MAPLE.asm;

import java.io.*;

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
            if(line.contains("[rel n]")){
                continue;
            }
            res += line + "\n";
        }
    }

    public void print(){
        System.out.println(res);
    }
}
