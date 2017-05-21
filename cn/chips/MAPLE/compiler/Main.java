package cn.chips.MAPLE.compiler;


import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.parser.*;

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;


public class Main
{
//    public static boolean returned = false;
    public static void main(String[] args) throws Exception
    {
        InputStream Filein = new FileInputStream("cn/chips/MAPLE/testcase/test.cpp");
        compile(Filein, System.out);
//        compile(System.in, System.out);
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
//      Walk
//      ParseTreeWalker walker = new ParseTreeWalker();
    }
}
