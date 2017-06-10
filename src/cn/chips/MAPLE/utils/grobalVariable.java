package cn.chips.MAPLE.utils;

import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.utils.scope.ScopeTree;

import java.util.Stack;

/**
 * Maple - 2017
 * lijinning, 2017.05.18, Shanghai.
 */
public class grobalVariable extends Project {
    public static ScopeTree grobal = new ScopeTree();
    public static Stack<Integer> incircle = new Stack<>();
    public static boolean infunction = false;
    public static boolean inclass = false;
    public static String nowclass = "";
    public static FuncDecl nowfunc = null;
    public static boolean inClassFunc = false;
    public static AST root = null;
}
