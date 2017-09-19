package cn.chips.MAPLE.asm;

import cn.chips.MAPLE.asm.Oprand.Oprand;
import cn.chips.MAPLE.asm.Oprand.Register;
import cn.chips.MAPLE.asm.assembly.AsmLabel;
import cn.chips.MAPLE.asm.assembly.Assembly;
import cn.chips.MAPLE.asm.assembly.Directive;
import cn.chips.MAPLE.asm.assembly.Instruction;

import java.util.LinkedList;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.05.30, Shanghai.
 */
public class AssemblyCode {
    public List<Assembly> assemblies = new LinkedList<>();
    public VirtualStack vs = new VirtualStack();
    public final long wordsize = 8;
    public LabelTable labeltable;

    public AssemblyCode(LabelTable lb){
        labeltable = lb;
    }

    public void virtualPush(Register reg){
        vs.extend(wordsize);
        _mov(vs.top(), reg);
    }

    public void virtualPop(Register reg){
        _mov(reg, vs.top());
        vs.rewind(wordsize);
    }

    public String toSource(){
        StringBuffer buf = new StringBuffer();
        for(Assembly asm:assemblies){
            buf.append(asm.toSource());
            buf.append("\n");
        }
        return buf.toString();
    }

    public void addDirective(String direc){
        assemblies.add(new Directive(direc));
    }

    public void addDirective(Directive direc){
        assemblies.add(direc);
    }

    public void addInstruction(Instruction ins){
        assemblies.add(ins);
    }

    public void addInstruction(String name, Oprand opd){
//        System.out.println("Instruction: " + name + "\t" + opd.toSource());
        assemblies.add(new Instruction(name, opd));
    }

    public void addInstruction(String name, Oprand opd1, Oprand opd2){
//        System.out.println("Instruction: " + name + "\t" + opd1.toSource() + "\t" + opd2.toSource());
        assemblies.add(new Instruction(name, opd1, opd2));
    }

    public void addInstruction(String name){
//        System.out.println("Instruction: " + name);
        assemblies.add(new Instruction(name));
    }

    // directive

    public void _label(AsmLabel asmLabel){
        assemblies.add(asmLabel);
    }

    public void _text(){addDirective("\t.text");}

    public void _data(){addDirective("\t.data");}

    public void _grobal(String name){addDirective("\tgrobal " + name);}

    public void _extern(String name){
        addDirective("\t extern " + name);
    }

    public void _section(String name){
        addDirective("\t section " + name);
    }


    //instruction

    public void _mov(Oprand opd1, Oprand opd2){
        addInstruction("mov", opd1, opd2);
    }

    public void _syscall(){
        addInstruction("syscall");
    }

    public void _and(Oprand opd1, Oprand opd2){
        addInstruction("and", opd1, opd2);
    }

    public void _or(Oprand opd1, Oprand opd2){
        addInstruction("or", opd1, opd2);
    }

    public void _xor(Oprand opd1, Oprand opd2){
        addInstruction("xor", opd1, opd2);
    }

    public void _add(Oprand opd1, Oprand opd2){
        addInstruction("add", opd1, opd2);
    }

    public void _sub(Oprand opd1, Oprand opd2){
        addInstruction("sub", opd1, opd2);
    }

    public void _imul(Oprand opd1, Oprand opd2){ addInstruction("imul", opd1, opd2); }

    public void _div(Oprand opd1, Oprand opd2){
        addInstruction("div", opd1, opd2);
    }

    public void _mod(Oprand opd1, Oprand opd2){ addInstruction("imod", opd1, opd2); }

    public void _sal(Oprand opd1, Oprand opd2){ addInstruction("sal", opd1, opd2); }

    public void _sar(Oprand opd1, Oprand opd2){ addInstruction("sar", opd1, opd2); }

    public void _inc(Oprand opd1){
        addInstruction("inc", opd1);
    }

    public void _dec(Oprand opd1){
        addInstruction("dec", opd1);
    }

    public void _sete(Oprand opd1){
        addInstruction("sete", opd1);
    }

    public void _setne(Oprand opd1){
        addInstruction("setne", opd1);
    }

    public void _setg(Oprand opd1){
        addInstruction("setg", opd1);
    }

    public void _setge(Oprand opd1){
        addInstruction("setge", opd1);
    }

    public void _setl(Oprand opd1){
        addInstruction("setl", opd1);
    }

    public void _setle(Oprand opd1){
        addInstruction("setle", opd1);
    }

    public void _neg(Oprand opd1){
        addInstruction("neg", opd1);
    }

    public void _not(Oprand opd1){
        addInstruction("not", opd1);
    }


    public void _db(List<String> strlist){
        String value = "";
        for(String s: strlist){
            value = value +  "\'" + s + "\',";
        }
        addInstruction("db\t" + value + "0");
    }

    public void _db(String str){
        addInstruction("db\t" + str);
    }

    public void _dbendl(List<String> strlist){
        String value = "";
        for(String s: strlist){
            value = value +  "\'" + s + "\',";
        }
        value = value + "10,0";
        addInstruction("db\t" + value);
    }

    public void _dbendl(String str){
        addInstruction("db\t" + str + ",10");
    }

    public void _resb(long size){
        addInstruction("resw\t" + size);
    }

    // rdi rsi rdx rcx r8 r9
    //align 16byte
    public void _call(String label){
        addInstruction("call\t" + label);
    }

    public void _ret(){
        addInstruction("ret");
    }

    public void _push(Oprand op){
        addInstruction("push", op);
    }

    public void _pop(Oprand op){
        addInstruction("pop", op);
    }

    public void _jnz(String label){
        addInstruction("jnz\t" + label);
    }

    public void _jz(String label){
        addInstruction("jz\t" + label);
    }

    public void _cmovl(Oprand opd1, Oprand opd2){
        addInstruction("cmovl", opd1, opd2);
    }

    public void _cmp(Oprand opd1, Oprand opd2){
        addInstruction("cmp", opd1, opd2);
    }

    public void _jl(String label){
        addInstruction("jl\t" + label);
    }

    public void _test(Oprand opd1, Oprand opd2){
        addInstruction("test", opd1, opd2);
    }

    public void _jmp(String label){
        addInstruction("jmp\t" + label);
    }

    public void _jne(String label){
        addInstruction("jne\t" + label);
    }

    public void _jnbe(String label){
        addInstruction("jnbe\t" + label);
    }

    public void _jnle(String label){
        addInstruction("jnle\t" + label);
    }

    public void _lea(Oprand opd1, Oprand opd2){
        addInstruction("lea", opd1, opd2);
    }

    public void _align(long bt){
        addInstruction("align\t" + bt);
    }









    //db






}
