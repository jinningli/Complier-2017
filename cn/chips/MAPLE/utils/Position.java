package cn.chips.MAPLE.utils;

import org.antlr.v4.runtime.Token;

/**
 *    Maple - 2017
 *    lijinning, 2017.05.16, Shanghai.
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
