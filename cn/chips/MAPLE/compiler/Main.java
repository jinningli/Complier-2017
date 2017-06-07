package cn.chips.MAPLE.compiler;


import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ir.IR;
import cn.chips.MAPLE.parser.*;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.*;


public class Main
{
//    public static boolean returned = false;
    public static void main(String[] args) throws Exception
    {
//        InputStream Filein = new FileInputStream("cn/chips/MAPLE/testcase/test.cpp");
//        compile(Filein, System.out);
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
//        System.out.pccfrintln("\n***String Tree:");
//        System.out.println(tree.toStringTree(parser) + "\n***");

        AstBuilder v = new AstBuilder();
        AST root = (AST) v.visit(tree);
        root.check();

//        root.print(0);

        IRGenerator r = new IRGenerator(root);
        IR ir = r.generate();

//        root.getDecls().IRtraverse();

        CodeGenerator c = new CodeGenerator(root.getDecls());
        c.generate(ir);

//        PrintStream tmpfout = new PrintStream(new FileOutputStream("cn/chips/MAPLE/testcase/test.asm"));
//        tmpfout.print(c.toSource());
        System.out.println(c.toSource());

    }
}
