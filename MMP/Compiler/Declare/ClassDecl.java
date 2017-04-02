package Compiler.Declare;

import AssistantClass.Position;

/**
 * Created by lijinning on 2017/4/2.
 */
public class ClassDecl extends Declare{
    public  String name;
    public Position pos;
    public ClassDecl(String _s, Position _p) {
        name = _s;
        pos = _p;
    }
}
