package Compiler.Statement;

import AssistantClass.*;
/**
 * Created by lijinning on 2017/4/2.
 */
public abstract class Statement extends Project{
    public abstract String getname();
    public abstract Position getpos();
    public abstract void  check();
}
