package cn.chips.MAPLE.utils;

import cn.chips.MAPLE.asm.AsmModifier;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;

import static cn.chips.MAPLE.utils.grobalVariable.root;
import static java.lang.System.out;

/**
 * Maple - 2017
 * lijinning, 2017.06.11, Shanghai.
 */
public class Translate {

    static public void operate() throws IOException, InterruptedException {
        PrintStream cfout = new PrintStream(new FileOutputStream("output.c"));
        String res = root.getDecls().IRTranslate();
        cfout.println(res);
        if(!TranslatePre.process()){return;}
        AsmModifier am = new AsmModifier("output.asm");
        am.process();
        am.print(out);
    }

    public static String transform(int[] source){
        String res = "";
        for(int k : source){
            res += (char)k;
        }
        return res;
    }

}
