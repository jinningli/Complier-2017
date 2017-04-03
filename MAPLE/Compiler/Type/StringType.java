package Compiler.Type;

import AssistantClass.Position;

/**
 * Compiler - 2017
 * lijinning, 2017.04.02, Shanghai.
 */
public class StringType extends StdType {
    public String data;
    public Position pos;
    public StringType(String _d)
    {
        data = _d;
        pos = new Position(-1, -1);
    }
    public StringType(String _d, Position _pos)
    {
        data = _d;
        pos = _pos;
    }
}
