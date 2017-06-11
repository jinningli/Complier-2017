package cn.chips.MAPLE.compiler;


import cn.chips.MAPLE.asm.AsmModifier;
import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ast.type.StringType;
import cn.chips.MAPLE.ir.IR;
import cn.chips.MAPLE.parser.*;

import cn.chips.MAPLE.utils.Translate;
import cn.chips.MAPLE.utils.grobalVariable;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.*;
import java.util.List;


public class Main
{
    static boolean localtest = false;
    static boolean o3 = false;
//    public static boolean returned = false;
    public static void main(String[] args) throws Exception
    {
        if (args.length != 0 && args[0].equals("--add-global"))
        {
            AsmModifier am = new AsmModifier("output.asm");
            am.process();
            am.print(System.out);
        }else {
            if (localtest) {
                InputStream Filein = new FileInputStream("test.c");
                compile(Filein, System.out);
            } else
                compile(System.in, System.out);
        }
    }
    public static void compile(InputStream in, PrintStream out) throws Exception
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

        if(localtest)
            root.print(0);

        IRGenerator r = new IRGenerator(root);
        IR ir = r.generate();

        if(localtest) {
            root.getDecls().IRtraverse();
        }

        Translate.operate();

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

