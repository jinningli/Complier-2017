package Compiler.Type;

import AssistantClass.Position;

/**
 * Created by lijinning on 2017/4/2.
        */

public interface Type {
    public String _String();
    public Position getpos();
    public String getname();
    public int getint();
    public boolean getbool();
    public String typename();
}
