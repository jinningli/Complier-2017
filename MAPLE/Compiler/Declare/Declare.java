package Compiler.Declare;

import AssistantClass.Position;
import AssistantClass.Project;
import Compiler.Statement.Statement;

/**
 * Created by lijinning on 2017/4/2.
 */
public abstract class Declare extends Statement {
    public abstract String getname();
    public abstract Position getpos();
    public abstract void check();
}
