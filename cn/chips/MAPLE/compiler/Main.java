package cn.chips.MAPLE.compiler;


import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.utils.MapleNameSpace;
import cn.chips.MAPLE.parser.*;

import cn.chips.MAPLE.utils.scope.ScopeTree;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Stack;


public class Main
{
    public static ScopeTree grobal = new ScopeTree();
    public static Stack<Integer> incircle = new Stack<>();
    public static boolean infunction = false;
    public static boolean inclass = false;
    public static String nowclass = "";
    public static FuncDecl nowfunc = null;
//    public static boolean returned = false;
    public static void main(String[] args) throws Exception
    {
//        InputStream Filein = new FileInputStream("cn/chips/MAPLE/testcase/test.Maple");
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
//        System.out.println("\n***String Tree:");
//        System.out.println(tree.toStringTree(parser) + "\n***");

        AstBuilder v = new AstBuilder();
        AST root = (AST) v.visit(tree);
        root.check();
//      Walk
//      ParseTreeWalker walker = new ParseTreeWalker();
    }
}
