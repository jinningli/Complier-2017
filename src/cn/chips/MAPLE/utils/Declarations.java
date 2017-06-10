package cn.chips.MAPLE.utils;

import cn.chips.MAPLE.ast.declare.ClassDecl;
import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.ast.expression.ConstantExpr;
import cn.chips.MAPLE.ast.root.AST;
import cn.chips.MAPLE.ir.IRTranslate;
import cn.chips.MAPLE.ir.IRTraverse;
import cn.chips.MAPLE.utils.scope.ScopeNode;

import java.util.*;

/**
 * Maple - 2017
 * lijinning, 2017.05.23, Shanghai.
 */
public class Declarations {
    public List<VarDecl> vars = new LinkedList<>();
    public List<FuncDecl> funs = new LinkedList<>();
    public List<ConstantExpr> constants = new LinkedList<>();
    public List<ClassDecl> classes = new LinkedList<>();
    public List<VarDecl> gvars = new LinkedList<>();
    public List<VarDecl> cmvars = new LinkedList<>();

    public AST root;

    public Declarations(AST _root){
        root = _root;
    }
    public List<VarDecl> getVars(){
        return vars;
    }

    public List<FuncDecl> getFuns(){
        return funs;
    }

    public List<ClassDecl> getClasses(){
        return classes;
    }

    public List<ConstantExpr> getConst(){
        return constants;
    }

    public void addVars(VarDecl _vd){
        if(_vd.isGrobal){
            gvars.add(_vd);
        }else{
            cmvars.add(_vd);
        }
        vars.add(_vd);
    }

    public void addFuns(FuncDecl _fd){
        funs.add(_fd);
    }

    public void addConst(ConstantExpr _c){
        constants.add(_c);
    }

    public void addClass(ClassDecl _cd){
        classes.add(_cd);
    }

    public void traverse(){
        for(VarDecl vd: vars){
            System.out.println("VarDecl:: " + vd.getname() + "  " + vd.pos._String());
        }
        for(FuncDecl fd: funs){
            System.out.println("FuncDecl:: " + fd.getname() + "  " + fd.pos._String());
        }
        for(ClassDecl cd: classes){
            System.out.println("ClassDecl:: " + cd.getname() + "  " + cd.pos._String());
        }
        for(ConstantExpr c: constants){
            System.out.println("Const:: " + c._String() + " " );
        }
    }

    public void IRtraverse(){
        IRTraverse k = new IRTraverse();
        System.out.println("\n------------- IRBase Traverse -------------\n");
        System.out.println("**********    Grobal Variable    **********");
        k.setIrstream(root.grobalVarIR);
        k.traverse();
        for(FuncDecl f: funs){
            System.out.println("********** In the Function: " + f.name + " **********");
            k.setIrstream(f.ir);
            k.traverse();
        }
        System.out.println("\n------------- IRBase Traverse End -------------\n");
    }

    public String IRTranslate(){
        String res = "";
        IRTranslate t = new IRTranslate();

        res += ("\n//------------- IRBase Translate -------------\n\n");
        //head
        res += head();

        //fundDecl:
        res += "//Function & Class Declare\n";
        for(ClassDecl cls : classes){
            res += cls.onlyDeclare();
        }
        res += "\n";
        for(FuncDecl f: funs){
            if(!Objects.equals(f.name, "main"))
                res += f.declTranslate() + ";\n";
        }
        res += insideFuncDecl();

        //grobalVariable

//        res += ("\n**********    Grobal Variable    **********\n");
        String grobalInitialize = "";
        res += "//Grobal Variable\n";
        for(VarDecl vd: vars){
            if(vd.isGrobal){
                res += vd.declTranslate();
                if(vd.ir != null){
                    grobalInitialize += vd.name + " = " + vd.ir.translate() + ";\n";
                }
                res += ";\n";
            }
        }
        res += "\n";

        //Inside Function
        res += "//Inside Function\n";
        res += insideFunc();


        //Class
        res += "//Class Body\n";
        for(ClassDecl cls : classes){
            res += cls.declTranslate();
        }

        //Function

        for(FuncDecl f: funs){
//            res += ("\n********** In the Function: " + f.name + " **********\n");
            res += f.declTranslate() + "{\n";
            if(Objects.equals(f.name, "main")){
                res += "//Grobal Variable Initialize\n";
                res += grobalInitialize;
            }
            res += "//Define Local Variable\n";
            res += defineLocalVariable(f);
            res += "//Function Body\n";
            t.setIrstream(f.ir);
            res += t.translate();
            res += "}\n";
        }




        res += ("\n//------------- IRBase Traverse End -------------\n");
        return res;

    }

    public String defineLocalVariable(FuncDecl f){
        List<VarDecl> lvd = getLocalVarDecl(f.nowScope);
        String res = "";

        for(int i = 0; i < f.flist.size(); i ++){
            VarDecl para = ((VarDecl)f.nowScope.what(f.flist.get(i).getSecond()));
            para.name += "_" + cnt++;
            para.renamed = true;
            res += para.declTranslate() + " = " + f.flist.get(i).getSecond() + ";\n";
        }

        for(int i = 0; i < lvd.size(); i ++){
            VarDecl vd = lvd.get(i);
            if(vd.renamed) continue;
            vd.name += "_" + cnt++;
            vd.renamed = true;
            res += lvd.get(i).declTranslate() + ";\n";
        }

        return res;
    }

    int cnt = 0;

    public List<VarDecl> getLocalVarDecl(ScopeNode scope){
        List<VarDecl> lvd = new LinkedList<>();
        for(VarDecl vd: scope.localVariables()){
//            vd.name += "_" + cnt ++;
            lvd.add(vd);
        }
        for(ScopeNode s: scope.child){
            lvd.addAll(getLocalVarDecl(s));
        }
        return lvd;
    }

    public String head(){
        return "#include <stdio.h>\n" +
                "#include <stdlib.h>\n" +
                "#include <string.h>\n\n";
    }

    public String insideFuncDecl(){
        return "long substring(long str, long l, long r);\n" +
                "long ord(long pos, long str);\n" +
                "long parseInt(long x);\n" +
                "long strlength(long idx);\n" +
                "long size(long x);\n" +
                "long toMoStr(char *str);\n" +
                "long str_add(long a, long b);\n" +
                "long getInt();\n" +
                "void print(long null);\n" +
                "void println(long null);\n" +
                "void __lib_printInt(long null);\n" +
                "long __lib_malloc(long null);\n" +
                "long toString(long null);\n" +
                "int main();\n" +
                "long getString();\n" +
                "void __lib_printlnInt(long null);\n\n";
    }

    public String insideFunc(){
        return "long substring(long str, long l, long r){\n" +
                "    int ns = r - l + 1;\n" +
                "    unsigned char *ret = (unsigned char*)malloc(ns + sizeof(int) + 1);\n" +
                "    *((int*)ret) = ns;\n" +
                "    ret += sizeof(int);\n" +
                "    int idx = 0;\n" +
                "    for(int i = l; i <= r; i ++){\n" +
                "        ((char*)ret)[idx++] = ((char*)str)[i];\n" +
                "    }\n" +
                "    ((char*)ret)[idx] = '\\0';\n" +
                "    return (long)ret;\n" +
                "}\n" +
                "long ord(long str, long pos){\n" +
                "    char* ret = (char*)str + pos;\n" +
                "    return (long)*ret;\n" +
                "}\n" +
                "long parseInt(long x){\n" +
                "    int s = (int) strlength(x);\n" +
                "    char* ret = (char*)x;\n" +
                "    int res = 0;\n" +
                "    for(int i = 0; i < s; i ++){\n" +
                "        if(ret[i]>='0' && ret[i] <= '9'){\n" +
                "            res = res * 10 + ret[i] - '0';\n" +
                "        }else{\n" +
                "            break;\n" +
                "        }\n" +
                "    };\n" +
                "    return res;\n" +
                "}\n" +
                "long strlength(long idx){\n" +
                "    int res = *((int *)(idx - sizeof(int)));\n" +
                "    return (long)res;\n" +
                "}\n" +
                "long getInt(){\n" +
                "    int tmp = 0;\n" +
                "    scanf(\"%d\", &tmp);\n" +
                "    return (long)tmp;\n" +
                "}\n" +
                "long getString(){\n" +
                "    int size = 0;\n" +
                "    unsigned char* tmp = (unsigned char*)malloc(2000 + sizeof(int));\n" +
                "    unsigned char* bak = tmp;\n" +
                "    tmp += sizeof(int);\n" +
                "    tmp[size] = (unsigned char)getchar();\n" +
                "    while(tmp[size] !=  '\\n'){\n" +
                "        tmp[++size] = (unsigned char)getchar();\n" +
                "    }\n" +
                "    tmp[size] = '\\0';\n" +
                "    *((int*) bak) = size;\n" +
                "    return (long)(bak + sizeof(int));\n" +
                "}\n" +
                "long size(long x){\n" +
                "    long s = *((long*)(x - sizeof(long)));\n" +
                "    return s;\n" +
                "}\n" +
                "long toMoStr(char *str) {\n" +
                "    int len = strlen(str);\n" +
                "    unsigned char* ret = (unsigned char *) malloc(len + sizeof(int) + 1);\n" +
                "\n" +
                "    *((int *)ret) = len;\n" +
                "    ret += sizeof(int);\n" +
                "\n" +
                "    strcpy((char *)ret, str);\n" +
                "    return (long)ret;\n" +
                "}\n" +
                "long str_add(long a, long b) {\n" +
                "    int l1 = *((int *)(a - sizeof(int)));\n" +
                "    int l2 = *((int *)(b - sizeof(int)));\n" +
                "\n" +
                "    int l = l1 + l2;\n" +
                "\n" +
                "    unsigned char* ret = (unsigned char*) malloc(l + sizeof(int) + 1);\n" +
                "    *((int *)ret) = l;\n" +
                "    ret += sizeof(int);\n" +
                "\n" +
                "\n" +
                "    for (int i =0; i < l1; i++)\n" +
                "        ((char*)ret)[i] = ((char *)a)[i];\n" +
                "\n" +
                "    for (int i = 0; i < l2; i++)\n" +
                "        ((char*)ret)[i+l1] = ((char *)b)[i];\n" +
                "\n" +
                "    ((char*)ret)[l] = 0;\n" +
                "\n" +
                "    return (long)ret;\n" +
                "}\n" +
                "void __lib_printlnInt(long x) {\n" +
                "    printf(\"%ld\\n\", x);\n" +
                "}\n" +
                "\n" +
                "void __lib_printInt(long x) {\n" +
                "    printf(\"%ld\", x);\n" +
                "}\n" +
                "\n" +
                "long __lib_malloc(long x) {\n" +
                "    return (long) malloc(x);\n" +
                "}\n" +
                "\n" +
                "void println(long x) {\n" +
                "    puts((char *)x);\n" +
                "}" +
                "void print(long x){\n" +
                "    printf(\"%s\", (char*)x);\n" +
                "}\n" +
                "long toString(long x) {\n" +
                "    unsigned char *ret = (unsigned char*)malloc(12 + sizeof(int));\n" +
                "    ret += sizeof(int);\n" +
                "    unsigned char *p = ret;\n" +
                "\n" +
                "    if (x < 0) {\n" +
                "        *p++ = '-';\n" +
                "        x = -x;\n" +
                "    }\n" +
                "\n" +
                "    if (x == 0)\n" +
                "        *p++ = '0';\n" +
                "\n" +
                "    unsigned char *begin = p;\n" +
                "    while (x) {\n" +
                "        int next = x / 10;\n" +
                "        *p++ = '0' + x - next * 10;\n" +
                "        x = next;\n" +
                "    }\n" +
                "    *p = 0;\n" +
                "    *(((int *)ret) - 1) = p - ret;\n" +
                "\n" +
                "    p--;\n" +
                "    while (begin <= p) {\n" +
                "        char t = *begin;\n" +
                "        *begin = *p;\n" +
                "        *p = t;\n" +
                "        begin++;\n" +
                "        p--;\n" +
                "    }\n" +
                "\n" +
                "    return (long)ret;\n" +
                "}\n\n";
    }
}
