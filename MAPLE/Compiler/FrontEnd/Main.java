package Compiler.FrontEnd;

import Compiler.Listener.ClassStdlizer;
import AssistantClass.*;

import Compiler.Listener.FunctionStdlizer;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.ParseTreeWalker;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;


public class Main
{
    public static MapleMap FMap = new MapleMap();
    public static MapleMap SMap = new MapleMap();
    public static MapleMap TMap = new MapleMap();

    public static void main(String[] args) throws Exception
    {
        InputStream Filein = new FileInputStream("MAPLE/Example/test.Maple");

        try {
            compile(Filein, System.out);
        } catch (Exception e) {
            System.exit(1);
        }
        System.exit(0);

        compile(Filein, System.out);
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
      //  System.out.println("\n***String Tree:");
        // System.out.println(tree.toStringTree(parser) + "\n***");

        //Walk
        ClassStdlizer CSL = new ClassStdlizer(FMap);
        ParseTreeWalker walker = new ParseTreeWalker();
        walker.walk(CSL, tree);
        FunctionStdlizer FSL = new FunctionStdlizer(SMap);
        walker.walk(FSL, tree);
    }
}
