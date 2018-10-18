package cn.chips.MAPLE.utils;

/**
 * Compiler - 2017
 * lijinning, 2017.04.03, Shanghai.
 */
public class Pair<E, F> {
    public E first;
    public F second;

    public Pair(){}
    public Pair(E _e, F _f){
        first = _e;
        second = _f;
    }
    public E getFirst() {
        return first;
    }
    public void setFirst(E first) {
        this.first = first;
    }
    public F getSecond() {
        return second;
    }
    public void setSecond(F second) {
        this.second = second;
    }
}