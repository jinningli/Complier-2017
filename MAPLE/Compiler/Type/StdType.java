package Compiler.Type;

import java.util.*;

/**
 *    Compiler - 2017
 *    lijinning, 2017.04.02, Shanghai.
 */
public class StdType extends Type{
    protected final Map<String, Integer> Basetable = new HashMap<String, Integer>();
    public StdType() {
        Basetable.put("null", 0);
        Basetable.put("int", 1);
        Basetable.put("string", 2);
        Basetable.put("identifier", 3);
    }
}
