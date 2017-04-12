package Compiler.FrontEnd;


import AssistantClass.MapleNameSpace;
import Compiler.Declare.Program;
import Compiler.Visitor.Constructor;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;


public class Main
{
    public static MapleNameSpace grobal = new MapleNameSpace();
    public static boolean incircle = false;
    public static boolean infunction = false;
    public static boolean inclass = false;
    public static String nowclass = "";
    public static void main(String[] args) throws Exception
    {
        InputStream Filein = new FileInputStream("MAPLE/Example/test.Maple");
//        try {
//            compile(System.in, System.out);
//        } catch (Exception e) {
//            System.exit(1);
//        }
//        System.exit(0);
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
//        System.out.println("\n***String Tree:");
//        System.out.println(tree.toStringTree(parser) + "\n***");

        Constructor v = new Constructor();
        Program root = (Program) v.visit(tree);
        root.check();
//      Walk
//      ParseTreeWalker walker = new ParseTreeWalker();
    }
}
