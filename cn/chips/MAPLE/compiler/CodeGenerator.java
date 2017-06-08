package cn.chips.MAPLE.compiler;

import cn.chips.MAPLE.asm.AssemblyCode;
import cn.chips.MAPLE.asm.LabelTable;
import cn.chips.MAPLE.asm.Oprand.ImmediateValue;
import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.asm.Oprand.Oprand;
import cn.chips.MAPLE.asm.Oprand.Register;
import cn.chips.MAPLE.asm.assembly.AsmLabel;
import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;
import cn.chips.MAPLE.ast.expression.ConstantExpr;
import cn.chips.MAPLE.ast.type.StringType;
import cn.chips.MAPLE.exception.NoDefined;
import cn.chips.MAPLE.ir.*;
import cn.chips.MAPLE.utils.Declarations;
import cn.chips.MAPLE.utils.grobalVariable;
import cn.chips.MAPLE.utils.scope.ScopeNode;

import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class CodeGenerator {
    public Declarations decls = null;
    public LabelTable labeltable = null;

    public AssemblyCode text = null;
    public AssemblyCode data = null;

    public AsmLabel epilogue = null;

    public AssemblyCode nowAsm;

    public Register[] register = new Register[16];
    public boolean[] usedRegister = new boolean[16];

    public CodeGenerator(){
        decls = null;
        labeltable = new LabelTable();
        text = new AssemblyCode(labeltable);
        data = new AssemblyCode(labeltable);
        registInit();
        inlineFuncInit();
    }

    public CodeGenerator(Declarations _decls){
        decls = _decls;
        labeltable = new LabelTable();
        text = new AssemblyCode(labeltable);
        data = new AssemblyCode(labeltable);
        registInit();
        inlineFuncInit();
    }

    public void inlineFuncInit(){
        FuncDecl func;
        func = (FuncDecl) grobalVariable.grobal.what("print");
        func.setMemref(new MemoryReference(labeltable.diyLabel("print")));

        func = (FuncDecl) grobalVariable.grobal.what("println");
        func.setMemref(new MemoryReference(labeltable.diyLabel("println")));

        func = (FuncDecl) grobalVariable.grobal.what("getString");
        func.setMemref(new MemoryReference(labeltable.diyLabel("getString")));

        func = (FuncDecl) grobalVariable.grobal.what("getInt");
        func.setMemref(new MemoryReference(labeltable.diyLabel("getInt")));

        func = (FuncDecl) grobalVariable.grobal.what("toString");
        func.setMemref(new MemoryReference(labeltable.diyLabel("toString")));

        func = (FuncDecl) grobalVariable.grobal.what("parseInt");
        func.setMemref(new MemoryReference(labeltable.diyLabel("ParseInt")));

        func = (FuncDecl) grobalVariable.grobal.what("ord");
        func.setMemref(new MemoryReference(labeltable.diyLabel("ord")));

        func = (FuncDecl) grobalVariable.grobal.what("mallocFunc");
        func.setMemref(new MemoryReference(labeltable.diyLabel("malloc")));
    }

    public void registInit(){
        register[0] = new Register("rax");
        register[1] = new Register("rcx");
        register[2] = new Register("rdx");
        register[3] = new Register("rbx");
        register[4] = new Register("rsp");
        register[5] = new Register("rbp");
        register[6] = new Register("rsi");
        register[7] = new Register("rdi");
    }

    static final String dotL = ".L";

    public void generate(IR ir){
        decls = ir.decl;
        text.addDirective("\tsection .text");
        data.addDirective("\tsection .data");

        data._label(labeltable.newStrLabel());
        data._db("%d,0");
        data._label(labeltable.newStrLabel());
        data._db("%s,0");
        data._label(labeltable.diyLabel("__nullptr"));
        data._db("0,0");

        locateGrobalVariable();
        compileText();
        text.addDirective(insideFunc);
//        compileText();
    }

    public String toSource(){
        for(VarDecl vd: decls.getVars()){
            if (vd.memref != null){
                System.err.println("Mem locate to: " + vd.getname() + " at " + vd.getMemref().toSource());
            }
        }
        return pre + data.toSource() + "\n\n" +text.toSource();
    }

    public void locateGrobalVariable(){
        List<VarDecl> gvars = decls.gvars;
        List<ConstantExpr> cons = decls.constants;

        for(VarDecl vd : gvars){
            AsmLabel l = labeltable.newGrobalLabel();
            data._label(l);
            data._db("" + 8);
            vd.setMemref(new MemoryReference(l));
        }
        for(ConstantExpr c: cons){
            if(c.type instanceof StringType){
                String str = c.type.getname();
                data._db("" + str.length());
                AsmLabel l = labeltable.newStrLabel();
                data._label(l);
                data._db("\'" + str +"\',0");
                c.setMemref(new MemoryReference(l));
            }
        }
    }

    public void compileText(){
        for(FuncDecl f: decls.funs) {
            if(Objects.equals(f.name, "main")){
                AsmLabel funcLabel = labeltable.diyLabel("main");
                text._label(funcLabel);
                f.setMemref(new MemoryReference(funcLabel));
                compileFunction(f);
                return;
            }
            AsmLabel funcLabel = labeltable.newFuncLabel(f.name);
            text._label(funcLabel);
            f.setMemref(new MemoryReference(funcLabel));
            compileFunction(f);
        }
    }

    class StackFrameInfo {
        List<Register> saveRegs = new LinkedList<>();
        long lvarSize;
        long tempSize;

        long saveRegsSize() { return saveRegs.size() * 8; }
        long lvarOffset() { return saveRegsSize(); }
        long tempOffset() { return saveRegsSize() + lvarSize; }
        long frameSize() { return saveRegsSize() + lvarSize + tempSize; }
    }

    int callee[] = {0, 0, 1, 0, 1,
                    1, 1, 0, 0, 0,
                    0, 0, 0, 0, 0,
                    0, 0, 0, 0, 0};

    public void compileFunction(FuncDecl f){
        nowAsm = new AssemblyCode(labeltable);
        AssemblyCode textback = text;
        text = nowAsm;

        StackFrameInfo frame = new StackFrameInfo();
        locateParameter(f.para);
        frame.lvarSize =  locateLocalVariables(f.nowScope);

        compileStmts(f);

        collectreg(frame);

        frame.tempSize = text.vs.max;
        fixLocalVarDeclOffset(f.nowScope, frame.lvarOffset());
        fixTempVariableOffset(text, frame.tempOffset());

        nowAsm = text;
        text = textback;

        generateFunctionBody(frame);
//        temp = labeltable.newGeneralLabel();
//        for(STMT s: f.ir){
//            visit(s);
//        }
//        text._label(temp);
    }

    public void collectreg(StackFrameInfo sf){
        for(int i = 0; i <= 15; i ++){
            if(usedRegister[i] && callee[i] > 0){
                sf.saveRegs.add(register[i]);
            }
            usedRegister[i] = false;
        }
    }

    public void generateFunctionBody(StackFrameInfo frame){
//        addprologue();
        text._push(RBP());
        text._mov(RBP(), RSP());
        for(Register reg: frame.saveRegs){
            text.virtualPush(reg);
        }
        extendStack(text, frame.frameSize());

        text._label(labeltable.newGeneralLabel("start"));

        text.assemblies.addAll(nowAsm.assemblies);

//        text._label(labeltable.newGeneralLabel("end"));
        //        addepilogue();
        for(int i = frame.saveRegs.size() - 1; i >= 0; i --){
            text.virtualPop(frame.saveRegs.get(i));
        }
        text._mov(RSP(), RBP());
        text._pop(RBP());
        text._ret();

    }


    public void fixTempVariableOffset(AssemblyCode asm, long len){
        asm.vs.offset -= len;
    }

    public void fixLocalVarDeclOffset(ScopeNode s, long len){
        for(VarDecl vd: s.allLocalVariables()){
            vd.getMemref().offset -= len;
        }
    }


    public void compileStmts(FuncDecl f){
        epilogue = labeltable.newGeneralLabel("epilogue");
        for(STMT s : f.ir){
            compileStmt(s);
        }
        text._label(epilogue);
    }

    public void compileStmt(STMT s){
        visit(s);
    }

    public long locateLocalVariables(ScopeNode scope){
        return locateLocalVariables(scope, 0);
    }

    public long locateLocalVariables(ScopeNode scope, long parentlen){
        long len = parentlen;
        for(VarDecl vd: scope.localVariables()){
            len += 8;
            vd.setMemref(new MemoryReference(RBP(), -len));
//            System.err.println("Mem locate to: " + vd.getname() + " at " + vd.getMemref().toSource());
        }
        long maxlen = len;
        for(ScopeNode s: scope.child){
            long childLen = locateLocalVariables(s, len);
            maxlen = maxlen > childLen ? maxlen : childLen;
        }
        return maxlen;
    }

    public void locateParameter(List<VarDecl> parameters){
        long offset = 8;
        for(VarDecl vd: parameters){
            vd.setMemref(new MemoryReference(RBP(), offset));
            offset += 8;
        }
    }

    public void visit(IRBase node){
        if(node instanceof Addr){
            visit((Addr)node);
            return;
        }
        if(node instanceof Assign){
            visit((Assign)node);
            return;
        }
        if(node instanceof Bin){
            visit((Bin)node);
            return;
        }
        if(node instanceof Call){
            visit((Call)node);
            return;
        }
        if(node instanceof CJump){
            visit((CJump)node);
            return;
        }
        if(node instanceof ExprStmt){
            visit((ExprStmt)node);
            return;
        }
        if(node instanceof Int){
            visit((Int)node);
            return;
        }
        if(node instanceof Jump){
            visit((Jump)node);
            return;
        }
        if(node instanceof Label){
            visit((Label)node);
            return;
        }
        if(node instanceof LabelStmt){
            visit((LabelStmt)node);
            return;
        }
        if(node instanceof Mem){
            visit((Mem)node);
            return;
        }
        if(node instanceof Return){
            visit((Return)node);
            return;
        }
        if(node instanceof Str){
            visit((Str)node);
            return;
        }
        if(node instanceof Uni){
            visit((Uni)node);
            return;
        }
        if(node instanceof Var){
            visit((Var)node);
            return;
        }
    }

    private void store(Register reg, MemoryReference mem) {
        text._mov(mem, reg);
    }

    public void visit(Addr node) {
        loadAddress(node.ent, RAX());
    }

    public void loadAddress(Entity var, Register reg){
        if(var.getAddress() != null){
            text._mov(reg, var.getAddress());
        }else {
            text._lea(reg, var.getAddress());
        }
    }

    public void loadConstant(EXPR node, Register reg){
        if(node instanceof Int){
            Int intnode = (Int)node;
            if(intnode.AsmValue() != null){
                text._mov(reg, intnode.AsmValue());
            }else if(intnode.memref() != null){
                text._lea(reg, intnode.memref());
            }
        }else if(node instanceof Str){
            Str strnode = (Str) node;
            if(strnode.AsmValue() != null){
                text._mov(reg, strnode.AsmValue());
            }else if(strnode.memref() != null){
                text._lea(reg, strnode.memref());
            }
        }
        else
            throw new NoDefined();
    }

    public void visit(Assign node) {
        if (node.lhs instanceof Addr && ((Addr) node.lhs).ent.getMemref() != null) {
            visit(node.rhs);
            store(RAX(), ((Addr) node.lhs).ent.getMemref());
        }else if(node.rhs instanceof Int || node.rhs instanceof Str){
            visit(node.lhs);
            text._mov(RCX(), RAX());
            store(RAX(), new MemoryReference(RCX()));
        }else {
            visit(node.rhs);
            text.virtualPush(RAX());
            visit(node.lhs);
            text._mov(RCX(), RAX());
            text.virtualPop(RAX());
            text._mov(new MemoryReference(RCX()), RAX());
        }
    }

    public void visit(Bin node) {
        String op = node.op;

        if(node.rhs instanceof Int || node.rhs instanceof Str){
            if(!needReg(op)){
                visit(node.lhs);
                if(node.rhs instanceof Int)
                    compileBinaryOp(op, RAX(), ((Int) node.rhs).AsmValue());
                else
                    compileBinaryOp(op, RAX(), ((Str)node.rhs).asmValue());
            }else{
                visit(node.lhs);
                loadConstant(node.rhs, RAX());
                compileBinaryOp(op, RAX(), RCX());
            }
        }else if(node.rhs instanceof Var){
            visit(node.lhs);
            loadVariable((Var)node.rhs, RCX());
            compileBinaryOp(op, RAX(), RCX());
        }else if(node.rhs instanceof Addr){
            visit(node.lhs);
            loadAddress(((Addr) node.rhs).ent, RCX());
        }else if(node.lhs instanceof Int
                || node.lhs instanceof Str
                || node.lhs instanceof Var
                || node.lhs instanceof Addr){
            visit(node.rhs);
            text._mov(RCX(), RAX());
            visit(node.lhs);
            compileBinaryOp(op, RAX(), RCX());
        }else {
            visit(node.rhs);
            text.virtualPush(RAX());
            visit(node.lhs);
            text.virtualPop(RCX());
            compileBinaryOp(op, RAX(), RCX());
        }
    }

    public boolean needReg(String op){
        switch (op){
            case "/":
            case "%":
            case "<<":
            case ">>":
                return true;
            default:
                return false;
        }
    }

    public void compileBinaryOp(String op, Register lhs, Oprand rhs){
        switch (op){
            case "+":
                text._add(lhs, rhs);
                break;
            case "-":
                text._sub(lhs, rhs);
                break;
            case "*":
                text._imul(lhs, rhs);
                break;
            case "/":
                text._div(lhs, rhs);
                break;
            case "%":
                text._mod(lhs, rhs);
                break;
            case "&":
                text._and(lhs, rhs);
                break;
            case "|":
                text._or(lhs, rhs);
                break;
            case "^":
                text._xor(lhs, rhs);
                break;
            case "<<":
                text._sal(lhs, RCX());
                break;
            case ">>":
                text._sar(lhs, RCX());
                break;

            default:
                text._cmp(RAX(), rhs);
                switch (op){
                    case "==":  text._sete(RAX());break;
                    case "!=":  text._setne(RAX());break;
                    case ">":   text._setg(RAX());break;
                    case ">=":   text._setge(RAX());break;
                    case "<":   text._setl(RAX());break;
                    case "<=":   text._setle(RAX());break;
                    default:
                         throw new NoDefined();
                }
                if(lhs.type != "rax")//
                    text._mov(lhs, RAX());
        }
    }

    public void visit(Call node) {
        int argsize = node.args.size();
        for(int i = argsize - 1; i >= 0; i --){
            visit(node.args.get(i));
            text._push(RAX());
        }
        text._call(node.ent.getMemref().asmLabel.str);
        rewindStack(text, argsize * 8);
    }

    public void visit(CJump node) {
        visit(node.cond);
        text._test(RAX(), RAX());
        text._jnz(node.thenLabel.str);
        text._jmp(node.elseLabel.str);
    }

    public void visit(ExprStmt node) {
        visit(node.expr);
    }

    public void visit(Int node) {
        text._mov(RAX(), new ImmediateValue(node.value));
    }

    public void visit(Jump node) {
        text._jmp(node.label.str);
    }

    public void visit(LabelStmt node) {
        text._label(new AsmLabel(node.label.str));
    }

    public void visit(Mem node) {
        visit(node.expr);
        text._mov(RAX(), new MemoryReference(RAX()));
    }

    public void visit(Return node) {
        if(node.expr != null){
            visit(node.expr);
        }
        text._jmp(epilogue.str);


    }

    public void visit(Str node) {
        if(node.asmValue() != null){
            text._mov(RAX(), node.asmValue());
            return;
        }else if(node.memref() != null){
            text._lea(RAX(), node.memref());
            return;
        }
        throw new NoDefined();
    }


    public void visit(Uni node) {
        visit(node.expr);
        switch (node.op){
            case "-":
                text._neg(RAX());
                break;
            case "~":
                text._not(RAX());
                break;
            case "!":
                text._test(RAX(), RAX());
                break;
            default:
                throw new NoDefined();
        }
    }

    public void visit(Var node) {
        loadVariable(node, RAX());
    }

    public void loadVariable(Var var, Register dest){
        if(var.ent.getMemref() == null){
            text._mov(dest, var.ent.getAddress());
            text._mov(dest, new MemoryReference(dest));
        }else{
            text._mov(dest, var.ent.getMemref());
        }
    }

    public void extendStack(AssemblyCode file, long len){
        if(len > 0){
            file._sub(RSP(), new ImmediateValue(len));
        }
    }

    public void rewindStack(AssemblyCode file, long len){
        if(len > 0){
            file._add(RSP(), new ImmediateValue(len));
        }
    }

    Register RAX(){
        usedRegister[0] = true;
        return register[0];
    }

    Register RCX(){
        usedRegister[1] = true;
        return register[1];
    }
    Register RDX(){
        usedRegister[2] = true;
        return register[2];
    }

    Register RBX(){
        usedRegister[3] = true;
        return register[3];
    }

    Register RSP(){
        usedRegister[4] = true;
        return register[4];
    }

    Register RBP(){
        usedRegister[5] = true;
        return register[5];
    }

    Register RSI(){
        usedRegister[6] = true;
        return register[6];
    }

    Register RDI(){
        usedRegister[7] = true;
        return register[7];
    }

    String pre = "default rel\n" +
            "\n" +
            "global __string__connect__\n" +
            "global __string__length__\n" +
            "global __string__ord__\n" +
            "global __string__parseInt__\n" +
            "global __array__size__\n" +
            "global getString\n" +
            "global getInt\n" +
            "global print\n" +
            "global println\n" +
            "global toString\n" +
            "global __string__substring__\n" +
            "global __string__less__\n" +
            "global __string__greater__\n" +
            "global __string__equals__\n" +
            "global __string__neq__\n" +
            "global main\n" +
            "extern puts\n" +
            "extern _IO_putc\n" +
            "extern stdout\n" +
            "extern _IO_getc\n" +
            "extern stdin\n" +
            "extern gets\n" +
            "extern malloc\n" +
            "\n";
    String insideFunc = ";----------Inside Function----------\n" +
                   "ALIGN   8\n" +
                   "\n" +
                   "__string__connect__:\n" +
                   "        push    r14\n" +
                   "        push    r13\n" +
                   "        mov     r13, rsi\n" +
                   "        push    r12\n" +
                   "        mov     r12, rdi\n" +
                   "        push    rbp\n" +
                   "        push    rbx\n" +
                   "        mov     rbx, qword [rdi-8H]\n" +
                   "        mov     rbp, qword [rsi-8H]\n" +
                   "        lea     r14, [rbx+rbp]\n" +
                   "        lea     rdi, [r14+9H]\n" +
                   "        call    malloc\n" +
                   "        test    rbx, rbx\n" +
                   "        mov     rcx, rax\n" +
                   "        mov     qword [rax], r14\n" +
                   "        lea     rax, [rax+8H]\n" +
                   "        jle     L_002\n" +
                   "        lea     rdx, [rcx+18H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        lea     rdx, [r12+10H]\n" +
                   "        setae   sil\n" +
                   "        cmp     rax, rdx\n" +
                   "        setae   dl\n" +
                   "        or      sil, dl\n" +
                   "        je      L_007\n" +
                   "        cmp     rbx, 15\n" +
                   "        jbe     L_007\n" +
                   "        mov     rdi, rbx\n" +
                   "        xor     esi, esi\n" +
                   "        xor     r8d, r8d\n" +
                   "        shr     rdi, 4\n" +
                   "        mov     rdx, rdi\n" +
                   "        shl     rdx, 4\n" +
                   "L_001:  movdqu  xmm0, oword [r12+rsi]\n" +
                   "        add     r8, 1\n" +
                   "        movdqu  oword [rcx+rsi+8H], xmm0\n" +
                   "        add     rsi, 16\n" +
                   "        cmp     rdi, r8\n" +
                   "        ja      L_001\n" +
                   "        cmp     rbx, rdx\n" +
                   "        je      L_002\n" +
                   "        movzx   esi, byte [r12+rdx]\n" +
                   "        mov     byte [rcx+rdx+8H], sil\n" +
                   "        lea     rsi, [rdx+1H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+1H]\n" +
                   "        lea     rsi, [rdx+2H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+9H], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+2H]\n" +
                   "        lea     rsi, [rdx+3H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+0AH], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+3H]\n" +
                   "        lea     rsi, [rdx+4H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+0BH], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+4H]\n" +
                   "        lea     rsi, [rdx+5H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+0CH], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+5H]\n" +
                   "        lea     rsi, [rdx+6H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+0DH], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+6H]\n" +
                   "        lea     rsi, [rdx+7H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+0EH], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+7H]\n" +
                   "        lea     rsi, [rdx+8H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+0FH], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+8H]\n" +
                   "        lea     rsi, [rdx+9H]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+10H], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+9H]\n" +
                   "        lea     rsi, [rdx+0AH]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+11H], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+0AH]\n" +
                   "        lea     rsi, [rdx+0BH]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+12H], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+0BH]\n" +
                   "        lea     rsi, [rdx+0CH]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+13H], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+0CH]\n" +
                   "        lea     rsi, [rdx+0DH]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+14H], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edi, byte [r12+rdx+0DH]\n" +
                   "        lea     rsi, [rdx+0EH]\n" +
                   "        cmp     rbx, rsi\n" +
                   "        mov     byte [rcx+rdx+15H], dil\n" +
                   "        jle     L_002\n" +
                   "        movzx   edx, byte [r12+rdx+0EH]\n" +
                   "        mov     byte [rcx+rsi+8H], dl\n" +
                   "L_002:  test    rbp, rbp\n" +
                   "        jle     L_004\n" +
                   "        lea     rsi, [rcx+rbx]\n" +
                   "        lea     r8, [r13+10H]\n" +
                   "        lea     rdx, [rsi+18H]\n" +
                   "        cmp     r13, rdx\n" +
                   "        lea     rdx, [rsi+8H]\n" +
                   "        setae   dil\n" +
                   "        cmp     r8, rdx\n" +
                   "        setbe   dl\n" +
                   "        or      dil, dl\n" +
                   "        je      L_005\n" +
                   "        cmp     rbp, 15\n" +
                   "        jbe     L_005\n" +
                   "        mov     r8, rbp\n" +
                   "        xor     edi, edi\n" +
                   "        xor     r9d, r9d\n" +
                   "        shr     r8, 4\n" +
                   "        mov     rdx, r8\n" +
                   "        shl     rdx, 4\n" +
                   "L_003:  movdqu  xmm0, oword [r13+rdi]\n" +
                   "        add     r9, 1\n" +
                   "        movdqu  oword [rsi+rdi+8H], xmm0\n" +
                   "        add     rdi, 16\n" +
                   "        cmp     r8, r9\n" +
                   "        ja      L_003\n" +
                   "        cmp     rbp, rdx\n" +
                   "        je      L_004\n" +
                   "        movzx   esi, byte [r13+rdx]\n" +
                   "        add     rbx, rax\n" +
                   "        mov     byte [rbx+rdx], sil\n" +
                   "        lea     rsi, [rdx+1H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+1H]\n" +
                   "        lea     rsi, [rdx+2H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+1H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+2H]\n" +
                   "        lea     rsi, [rdx+3H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+2H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+3H]\n" +
                   "        lea     rsi, [rdx+4H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+3H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+4H]\n" +
                   "        lea     rsi, [rdx+5H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+4H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+5H]\n" +
                   "        lea     rsi, [rdx+6H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+5H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+6H]\n" +
                   "        lea     rsi, [rdx+7H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+6H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+7H]\n" +
                   "        lea     rsi, [rdx+8H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+7H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+8H]\n" +
                   "        lea     rsi, [rdx+9H]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+8H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+9H]\n" +
                   "        lea     rsi, [rdx+0AH]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+9H], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+0AH]\n" +
                   "        lea     rsi, [rdx+0BH]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+0AH], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+0BH]\n" +
                   "        lea     rsi, [rdx+0CH]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+0BH], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+0CH]\n" +
                   "        lea     rsi, [rdx+0DH]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+0CH], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edi, byte [r13+rdx+0DH]\n" +
                   "        lea     rsi, [rdx+0EH]\n" +
                   "        cmp     rbp, rsi\n" +
                   "        mov     byte [rdx+rbx+0DH], dil\n" +
                   "        jle     L_004\n" +
                   "        movzx   edx, byte [r13+rdx+0EH]\n" +
                   "        mov     byte [rbx+rsi], dl\n" +
                   "L_004:  mov     byte [rcx+r14+8H], 0\n" +
                   "        pop     rbx\n" +
                   "        pop     rbp\n" +
                   "        pop     r12\n" +
                   "        pop     r13\n" +
                   "        pop     r14\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_005:  xor     edx, edx\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_006:  movzx   edi, byte [r13+rdx]\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        add     rdx, 1\n" +
                   "        cmp     rdx, rbp\n" +
                   "        jnz     L_006\n" +
                   "        mov     byte [rcx+r14+8H], 0\n" +
                   "        pop     rbx\n" +
                   "        pop     rbp\n" +
                   "        pop     r12\n" +
                   "        pop     r13\n" +
                   "        pop     r14\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_007:  xor     edx, edx\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_008:  movzx   esi, byte [r12+rdx]\n" +
                   "        mov     byte [rcx+rdx+8H], sil\n" +
                   "        add     rdx, 1\n" +
                   "        cmp     rdx, rbx\n" +
                   "        jnz     L_008\n" +
                   "        jmp     L_002\n" +
                   "\n" +
                   "\n" +
                   "__string__length__:\n" +
                   "        mov     rax, qword [rdi-8H]\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "__string__ord__:\n" +
                   "        movsx   rax, byte [rdi+rsi]\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "__string__parseInt__:\n" +
                   "        movsx   ecx, byte [rdi]\n" +
                   "        mov     rax, qword [rdi-8H]\n" +
                   "        cmp     cl, 45\n" +
                   "        jz      L_013\n" +
                   "        test    rax, rax\n" +
                   "        jle     L_011\n" +
                   "        lea     edx, [rcx-30H]\n" +
                   "        cmp     dl, 9\n" +
                   "        ja      L_011\n" +
                   "        lea     rdx, [rdi+1H]\n" +
                   "        add     rdi, rax\n" +
                   "        xor     eax, eax\n" +
                   "        jmp     L_010\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_009:  movsx   ecx, byte [rdx]\n" +
                   "        add     rdx, 1\n" +
                   "        lea     esi, [rcx-30H]\n" +
                   "        cmp     sil, 9\n" +
                   "        ja      L_012\n" +
                   "L_010:  sub     ecx, 48\n" +
                   "        lea     rax, [rax+rax*4]\n" +
                   "        cmp     rdx, rdi\n" +
                   "        movsxd  rcx, ecx\n" +
                   "        lea     rax, [rcx+rax*2]\n" +
                   "        jnz     L_009\n" +
                   "\n" +
                   "        ret\n" +
                   "\n" +
                   "L_011:  xor     eax, eax\n" +
                   "        nop\n" +
                   "L_012:\n" +
                   "\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_013:  cmp     rax, 1\n" +
                   "        jle     L_011\n" +
                   "        movsx   ecx, byte [rdi+1H]\n" +
                   "        lea     edx, [rcx-30H]\n" +
                   "        cmp     dl, 9\n" +
                   "        ja      L_011\n" +
                   "        lea     rdx, [rdi+2H]\n" +
                   "        add     rdi, rax\n" +
                   "        xor     eax, eax\n" +
                   "        jmp     L_015\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_014:  movsx   ecx, byte [rdx]\n" +
                   "        add     rdx, 1\n" +
                   "        lea     esi, [rcx-30H]\n" +
                   "        cmp     sil, 9\n" +
                   "        ja      L_012\n" +
                   "L_015:  lea     rax, [rax+rax*4]\n" +
                   "        sub     ecx, 48\n" +
                   "        movsxd  rcx, ecx\n" +
                   "        add     rax, rax\n" +
                   "        sub     rax, rcx\n" +
                   "        cmp     rdx, rdi\n" +
                   "        jnz     L_014\n" +
                   "\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "        nop\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "__array__size__:\n" +
                   "        mov     rax, qword [rdi-8H]\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "getString:\n" +
                   "        sub     rsp, 8\n" +
                   "        mov     edi, 508\n" +
                   "        call    malloc\n" +
                   "        lea     rdi, [rax+8H]\n" +
                   "        call    gets\n" +
                   "        xor     edx, edx\n" +
                   "        cmp     byte [rax], 0\n" +
                   "        mov     qword [rax-8H], 0\n" +
                   "        jz      L_017\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_016:  add     rdx, 1\n" +
                   "        mov     qword [rax-8H], rdx\n" +
                   "        cmp     byte [rax+rdx], 0\n" +
                   "        jnz     L_016\n" +
                   "L_017:  add     rsp, 8\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "getInt:\n" +
                   "        mov     rdi, qword [rel stdin]\n" +
                   "        push    rbx\n" +
                   "        call    _IO_getc\n" +
                   "        cmp     al, 45\n" +
                   "        movsx   edx, al\n" +
                   "        jz      L_020\n" +
                   "        sub     eax, 48\n" +
                   "        xor     ebx, ebx\n" +
                   "        cmp     al, 9\n" +
                   "        ja      L_019\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_018:  mov     rdi, qword [rel stdin]\n" +
                   "        lea     rax, [rbx+rbx*4]\n" +
                   "        sub     edx, 48\n" +
                   "        movsxd  rdx, edx\n" +
                   "        lea     rbx, [rdx+rax*2]\n" +
                   "        call    _IO_getc\n" +
                   "        movsx   edx, al\n" +
                   "        sub     eax, 48\n" +
                   "        cmp     al, 9\n" +
                   "        jbe     L_018\n" +
                   "L_019:  mov     rax, rbx\n" +
                   "        pop     rbx\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_020:  xor     ebx, ebx\n" +
                   "        jmp     L_022\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_021:  lea     rbx, [rbx+rbx*4]\n" +
                   "        movsx   eax, al\n" +
                   "        sub     eax, 48\n" +
                   "        add     rbx, rbx\n" +
                   "        cdqe\n" +
                   "        sub     rbx, rax\n" +
                   "L_022:  mov     rdi, qword [rel stdin]\n" +
                   "        call    _IO_getc\n" +
                   "        lea     edx, [rax-30H]\n" +
                   "        cmp     dl, 9\n" +
                   "        jbe     L_021\n" +
                   "        mov     rax, rbx\n" +
                   "        pop     rbx\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "print:\n" +
                   "        push    rbx\n" +
                   "        mov     rbx, rdi\n" +
                   "        movsx   edi, byte [rdi]\n" +
                   "        test    dil, dil\n" +
                   "        jz      L_024\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_023:  mov     rsi, qword [rel stdout]\n" +
                   "        add     rbx, 1\n" +
                   "        call    _IO_putc\n" +
                   "        movsx   edi, byte [rbx]\n" +
                   "        test    dil, dil\n" +
                   "        jnz     L_023\n" +
                   "L_024:  pop     rbx\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "\n" +
                   "println:\n" +
                   "        jmp     puts\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "toString:\n" +
                   "        push    r13\n" +
                   "        push    r12\n" +
                   "        push    rbp\n" +
                   "        push    rbx\n" +
                   "        mov     rbx, rdi\n" +
                   "        sub     rsp, 8\n" +
                   "        test    rdi, rdi\n" +
                   "        je      L_031\n" +
                   "        js      L_030\n" +
                   "        mov     edi, 10\n" +
                   "        xor     ebp, ebp\n" +
                   "        mov     r12d, 1\n" +
                   "L_025:  cmp     rbx, 9\n" +
                   "        jle     L_032\n" +
                   "        mov     rcx, rbx\n" +
                   "        mov     rsi, qword 6666666666666667H\n" +
                   "L_026:  mov     rax, rcx\n" +
                   "        sar     rcx, 63\n" +
                   "        add     r12, 1\n" +
                   "        imul    rsi\n" +
                   "        sar     rdx, 2\n" +
                   "        sub     rdx, rcx\n" +
                   "        cmp     rdx, 9\n" +
                   "        mov     rcx, rdx\n" +
                   "        jg      L_026\n" +
                   "        lea     rdi, [r12+9H]\n" +
                   "        lea     r13, [r12-1H]\n" +
                   "L_027:  call    malloc\n" +
                   "        lea     r9, [rax+8H]\n" +
                   "        lea     rcx, [rax+r13]\n" +
                   "        mov     r8, rax\n" +
                   "        mov     qword [rax], r12\n" +
                   "        mov     rdi, qword 6666666666666667H\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_028:  mov     rax, rbx\n" +
                   "        mov     rsi, rbx\n" +
                   "        sub     rcx, 1\n" +
                   "        imul    rdi\n" +
                   "        sar     rsi, 63\n" +
                   "        sar     rdx, 2\n" +
                   "        sub     rdx, rsi\n" +
                   "        lea     rsi, [rdx+rdx*4]\n" +
                   "        add     rsi, rsi\n" +
                   "        sub     rbx, rsi\n" +
                   "        add     ebx, 48\n" +
                   "        mov     byte [rcx+9H], bl\n" +
                   "        test    rdx, rdx\n" +
                   "        mov     rbx, rdx\n" +
                   "        jnz     L_028\n" +
                   "        cmp     rbp, 1\n" +
                   "        mov     rax, r9\n" +
                   "        jz      L_029\n" +
                   "        add     rsp, 8\n" +
                   "        pop     rbx\n" +
                   "        pop     rbp\n" +
                   "        pop     r12\n" +
                   "        pop     r13\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_029:  mov     byte [r8+8H], 45\n" +
                   "        add     rsp, 8\n" +
                   "        pop     rbx\n" +
                   "        pop     rbp\n" +
                   "        pop     r12\n" +
                   "        pop     r13\n" +
                   "        ret\n" +
                   "\n" +
                   "L_030:  neg     rbx\n" +
                   "        mov     edi, 11\n" +
                   "        mov     ebp, 1\n" +
                   "        mov     r12d, 2\n" +
                   "        jmp     L_025\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_031:  mov     edi, 10\n" +
                   "        call    malloc\n" +
                   "        mov     qword [rax], 1\n" +
                   "        mov     byte [rax+8H], 48\n" +
                   "        add     rax, 8\n" +
                   "        mov     byte [rax+1H], 0\n" +
                   "        add     rsp, 8\n" +
                   "        pop     rbx\n" +
                   "        pop     rbp\n" +
                   "        pop     r12\n" +
                   "        pop     r13\n" +
                   "        ret\n" +
                   "\n" +
                   "L_032:  mov     r13, rbp\n" +
                   "        jmp     L_027\n" +
                   "\n" +
                   "\n" +
                   "__string__substring__:\n" +
                   "        push    r13\n" +
                   "        mov     r13, rdx\n" +
                   "        sub     r13, rsi\n" +
                   "        push    r12\n" +
                   "        mov     r12, rdx\n" +
                   "        push    rbp\n" +
                   "        mov     rbp, rdi\n" +
                   "        lea     rdi, [r13+0AH]\n" +
                   "        push    rbx\n" +
                   "        mov     rbx, rsi\n" +
                   "        sub     rsp, 8\n" +
                   "        call    malloc\n" +
                   "        lea     rdx, [r13+1H]\n" +
                   "        cmp     r12, rbx\n" +
                   "        mov     rsi, rax\n" +
                   "        lea     rax, [rax+8H]\n" +
                   "        mov     qword [rax-8H], rdx\n" +
                   "        jl      L_034\n" +
                   "        lea     rcx, [rbp+rbx]\n" +
                   "        lea     rdi, [rsi+18H]\n" +
                   "        cmp     rcx, rdi\n" +
                   "        lea     rdi, [rcx+10H]\n" +
                   "        setae   r8b\n" +
                   "        cmp     rax, rdi\n" +
                   "        setae   dil\n" +
                   "        or      r8b, dil\n" +
                   "        je      L_035\n" +
                   "        cmp     rdx, 15\n" +
                   "        jbe     L_035\n" +
                   "        mov     r9, rdx\n" +
                   "        xor     r8d, r8d\n" +
                   "        xor     r10d, r10d\n" +
                   "        shr     r9, 4\n" +
                   "        mov     rdi, r9\n" +
                   "        shl     rdi, 4\n" +
                   "L_033:  movdqu  xmm0, oword [rcx+r8]\n" +
                   "        add     r10, 1\n" +
                   "        movdqu  oword [rsi+r8+8H], xmm0\n" +
                   "        add     r8, 16\n" +
                   "        cmp     r9, r10\n" +
                   "        ja      L_033\n" +
                   "        cmp     rdx, rdi\n" +
                   "        lea     rcx, [rbx+rdi]\n" +
                   "        je      L_034\n" +
                   "        movzx   edx, byte [rbp+rcx]\n" +
                   "        mov     byte [rsi+rdi+8H], dl\n" +
                   "        lea     rdx, [rcx+1H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+1H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+2H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+2H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+3H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+3H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+4H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+4H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+5H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+5H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+6H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+6H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+7H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+7H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+8H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+8H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+9H]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+9H]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+0AH]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+0AH]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+0BH]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+0BH]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+0CH]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+0CH]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+0DH]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   edi, byte [rbp+rcx+0DH]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], dil\n" +
                   "        lea     rdx, [rcx+0EH]\n" +
                   "        cmp     r12, rdx\n" +
                   "        jl      L_034\n" +
                   "        movzx   ecx, byte [rbp+rcx+0EH]\n" +
                   "        sub     rdx, rbx\n" +
                   "        mov     byte [rsi+rdx+8H], cl\n" +
                   "L_034:  mov     byte [rax+r13+1H], 0\n" +
                   "        add     rsp, 8\n" +
                   "        pop     rbx\n" +
                   "        pop     rbp\n" +
                   "        pop     r12\n" +
                   "        pop     r13\n" +
                   "        ret\n" +
                   "\n" +
                   "L_035:  add     r12, 1\n" +
                   "        sub     rsi, rbx\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_036:  movzx   edx, byte [rbp+rbx]\n" +
                   "        mov     byte [rsi+rbx+8H], dl\n" +
                   "        add     rbx, 1\n" +
                   "        cmp     rbx, r12\n" +
                   "        jnz     L_036\n" +
                   "        jmp     L_034\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "__string__less__:\n" +
                   "        cmp     byte [rdi], 0\n" +
                   "        jnz     L_038\n" +
                   "        test    rsi, rsi\n" +
                   "        jnz     L_038\n" +
                   "\n" +
                   "\n" +
                   "        movzx   eax, byte [abs 0H]\n" +
                   "        test    al, al\n" +
                   "        jg      L_039\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_037:  test    al, al\n" +
                   "        jz      L_037\n" +
                   "L_038:  xor     eax, eax\n" +
                   "        ret\n" +
                   "\n" +
                   "L_039:  mov     eax, 1\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "\n" +
                   "__string__greater__:\n" +
                   "        cmp     byte [rdi], 0\n" +
                   "        jnz     L_041\n" +
                   "        test    rsi, rsi\n" +
                   "        jnz     L_041\n" +
                   "\n" +
                   "\n" +
                   "        movzx   eax, byte [abs 0H]\n" +
                   "        test    al, al\n" +
                   "        jg      L_041\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_040:  test    al, al\n" +
                   "        jz      L_040\n" +
                   "        mov     eax, 1\n" +
                   "        ret\n" +
                   "\n" +
                   "L_041:  xor     eax, eax\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "\n" +
                   "__string__equals__:\n" +
                   "        cmp     byte [rdi], 0\n" +
                   "        jnz     L_044\n" +
                   "        test    rsi, rsi\n" +
                   "        jnz     L_044\n" +
                   "\n" +
                   "\n" +
                   "        cmp     byte [abs 0H], 0\n" +
                   "        jnz     L_043\n" +
                   "L_042:  jmp     L_042\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_043:  xor     eax, eax\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "L_044:  mov     eax, 1\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   8\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "\n" +
                   "__string__neq__:\n" +
                   "        cmp     byte [rdi], 0\n" +
                   "        jnz     L_047\n" +
                   "        test    rsi, rsi\n" +
                   "        jnz     L_047\n" +
                   "\n" +
                   "\n" +
                   "        cmp     byte [abs 0H], 0\n" +
                   "        jnz     L_046\n" +
                   "L_045:  jmp     L_045\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_046:  mov     eax, 1\n" +
                   "        ret\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "\n" +
                   "ALIGN   16\n" +
                   "L_047:  xor     eax, eax\n" +
                   "        ret\n";
}
