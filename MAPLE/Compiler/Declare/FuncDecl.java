package Compiler.Declare;


import AssistantClass.Position;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class FuncDecl implements Declare {
    public String name;
    public Position pos;

    public String getname(){
        return name;
    }
    public Position getpos() {
        return pos;
    }
}
