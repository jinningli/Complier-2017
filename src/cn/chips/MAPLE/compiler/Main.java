package cn.chips.MAPLE.compiler;


import cn.chips.MAPLE.asm.AsmModifier;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ir.IR;
import cn.chips.MAPLE.parser.*;

import cn.chips.MAPLE.utils.Translate;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.*;


public class Main
{
    static boolean localtest = false;
    public static void main(String[] args) throws Exception
    {
        if (localtest) {
            InputStream Filein = new FileInputStream("test.c");
            compile(Filein, System.out);
        } else
            compile(System.in, System.out);
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
        try {
            CodeGenerator c = new CodeGenerator(root.getDecls());
            c.generate(ir);
            if(localtest) {
                PrintStream tmpfout = new PrintStream(new FileOutputStream("chips.asm"));
                tmpfout.print(c.toSource());
            }else
                System.err.println(c.toSource());
        }catch (Exception e){
            return;
        }
    }



}

