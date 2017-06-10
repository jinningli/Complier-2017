package cn.chips.MAPLE.compiler;


import cn.chips.MAPLE.asm.AsmModifier;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ir.IR;
import cn.chips.MAPLE.parser.*;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.omg.SendingContext.RunTime;

import java.io.*;


public class Main
{
    static boolean localtest = false;

//    public static boolean returned = false;
    public static void main(String[] args) throws Exception
    {
        if(localtest) {
            InputStream Filein = new FileInputStream("cn/chips/MAPLE/testcase/test.cpp");
            compile(Filein, System.out);
        }else
        compile(System.in, System.out);
    }
    public static void compile(InputStream in, OutputStream out) throws Exception
    {
        //Initialize
        org.antlr.v4.runtime.ANTLRInputStream input = new org.antlr.v4.runtime.ANTLRInputStream(in);
        MapleLexer lexer = new MapleLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MapleParser parser = new MapleParser(tokens);
        parser.setErrorHandler(new BailErrorStrategy());
        ParseTree tree = parser.program();

        AstBuilder v = new AstBuilder();
        AST root = (AST) v.visit(tree);
        root.check();

//        if(localtest)
//            root.print(0);

        IRGenerator r = new IRGenerator(root);
        IR ir = r.generate();

//        if(localtest) {
//        root.getDecls().IRtraverse();

        PrintStream cfout = new PrintStream(new FileOutputStream("output.c"));
        cfout.println(root.getDecls().IRTranslate());
//        Runtime.getRuntime().exec("bash conv/build.sh");
        Runtime.getRuntime().exec("bash c2nasm.bash ./output.c -O0"
//                " 2> err.txt 1> std.txt"
        );

        AsmModifier am = new AsmModifier("./output.asm");
        am.process();
        am.print();

//        }
//        CodeGenerator c = new CodeGenerator(root.getDecls());
//        c.generate(ir);
//        if(localtest) {
//            PrintStream tmpfout = new PrintStream(new FileOutputStream("cn/chips/MAPLE/testcase/out.asm"));
//            tmpfout.print(c.toSource());
//        }else
//        System.out.println(c.toSource());
//nasm -felf64 cn/chips/MAPLE/testcase/test.asm && gcc cn/chips/MAPLE/testcase/test.o && ./cn/chips/MAPLE/testcase/test.out
//bash c2nasm.bash output.c -O0&&nasm -felf64 output.asm && gcc output.o && ./output.out
    }
}
