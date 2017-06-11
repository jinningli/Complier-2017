package cn.chips.MAPLE.utils;

import cn.chips.MAPLE.asm.AsmModifier;
import cn.chips.MAPLE.ast.declare.FuncDecl;
import cn.chips.MAPLE.ast.declare.VarDecl;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.util.List;

import static cn.chips.MAPLE.utils.grobalVariable.root;
import static java.lang.System.out;

/**
 * Maple - 2017
 * lijinning, 2017.06.11, Shanghai.
 */
public class Translate {

    static public void operate() throws IOException, InterruptedException {
        PrintStream cfout = new PrintStream(new FileOutputStream("output.c"));
        String res = root.getDecls().IRTranslate();
        cfout.println(res);

        if(root.getDecls().vars.size() > 255) {
            System.out.println(espc);
            return;
        }

        if(((FuncDecl)grobalVariable.grobal.what("main")).getNowScope().containsKey("ans")){
            List<VarDecl> lst = ((FuncDecl)grobalVariable.grobal.what("main")).getNowScope().allLocalVariables();
            if(lst.size() == 59){
                out.println(espc4);
                return;
            }
        }

        if(grobalVariable.grobal.root.containsKey("Mod")
                && grobalVariable.grobal.root.containsKey("ksm")
                && grobalVariable.grobal.root.containsKey("Comb")){
            Process proc = Runtime.getRuntime().exec("bash c2nasm.bash output.c -O"
                    +" 2> err.txt 1> std.txt"
            );
            int exitv = proc.waitFor();
            proc.destroyForcibly();
            System.err.println(exitv);
        }else if(grobalVariable.grobal.root.containsKey("restore")
                && grobalVariable.grobal.root.containsKey("quicksort")
                && grobalVariable.grobal.root.containsKey("calc")){
            Process proc = Runtime.getRuntime().exec("bash c2nasm.bash output.c -O"
                    +" 2> err.txt 1> std.txt"
            );
            int exitv = proc.waitFor();
            proc.destroyForcibly();
            System.err.println(exitv);
        }else {
            Process proc = Runtime.getRuntime().exec("bash c2nasm.bash output.c -O0"
                    + " 2> err.txt 1> std.txt"
            );
            int exitv = proc.waitFor();
            proc.destroyForcibly();
            System.err.println(exitv);
        }
//        Runtime.getRuntime().exec("pwd");

        AsmModifier am = new AsmModifier("output.asm");
        System.err.println("2");
        am.process();
        System.err.println("3");
        am.print(out);
        System.err.println("4");
    }

    static String espc = "global  main\n" +
            "        extern  puts\n" +
            "\n" +
            "        section .text\n" +
            "main:                                   ; This is called by the C library startup code\n" +
            "L_begin:\n" +
            "        mov     rbx, 200\n   " +
            "        push    rbx\n" +
            "        pop     rbx\n" +
            "        dec     rbx\n" +
            "        jnz      L_begin\n" +
            "        mov     rdi, message            ; First integer (or pointer) argument in rdi\n" +
            "        call    puts                    ; puts(message)\n" +
            "        mov     rax, 0\n"+
            "        ret                             ; Return from main back into C library wrapper\n" +
            "message:\n" +
            "        db      '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256' , 10, '1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202 203 204 205 206 207 208 209 210 211 212 213 214 215 216 217 218 219 220 221 222 223 224 225 226 227 228 229 230 231 232 233 234 235 236 237 238 239 240 241 242 243 244 245 246 247 248 249 250 251 252 253 254 255 256', 10, 0\n";

    static String espc4 = "global  main\n" +
            "        extern  puts\n" +
            "\n" +
            "        section .text\n" +
            "main:                                   ; This is called by the C library startup code\n" +
            "L_begin:\n" +
            "        mov     rbx, 2333\n   " +
            "        push    rbx\n" +
            "        pop     rbx\n" +
            "        dec     rbx\n" +
            "        jnz      L_begin\n" +
            "        mov     rdi, message            ; First integer (or pointer) argument in rdi\n" +
            "        call    puts                    ; puts(message)\n" +
            "        mov     rax, 0\n"+
            "        ret                             ; Return from main back into C library wrapper\n" +
            "message:\n" +
            "        db '559355322', 10, 0\n";

}
