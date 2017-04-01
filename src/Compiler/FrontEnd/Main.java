package Compiler.FrontEnd;

import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;


public class Main
{
    public static void main(String[] args) throws IOException
    {
        InputStream Filein = new FileInputStream("Example/test.MMP");
        try {
            compile(Filein, System.out);
        } catch (Exception e) {
            System.exit(1);
        }
        System.exit(0);
    }
    public static void compile(InputStream in, OutputStream out) throws Exception
    {
        org.antlr.v4.runtime.ANTLRInputStream input = new org.antlr.v4.runtime.ANTLRInputStream(in);
        MMPLexer lexer = new MMPLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        MMPParser parser = new MMPParser(tokens);
        parser.setErrorHandler(new BailErrorStrategy());
        ParseTree tree = parser.program();
        System.out.println("***String Tree:");
        System.out.println(tree.toStringTree(parser) + "\n***");
    }
}
