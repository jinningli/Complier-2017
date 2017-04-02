package AssistantClass;

import Compiler.FrontEnd.*;
import org.antlr.v4.runtime.Token;

/**
 * Created by lijinning on 2017/4/2.
 */
public class Position {
    private final int line;
    private final int column;
    public Position(int _line, int _column)
    {
        line = _line;
        column = _column;
    }
    public Position(Token token)
    {
        line = token.getLine();
        column = token.getCharPositionInLine();
    }
    //To be continued;
    public String _String()
    {
        return ">> In    Line: " + line + "    Column: " + column;
    }
}
