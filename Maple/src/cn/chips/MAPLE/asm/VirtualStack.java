package cn.chips.MAPLE.asm;

import cn.chips.MAPLE.asm.Oprand.MemoryReference;
import cn.chips.MAPLE.asm.Oprand.Register;
import cn.chips.MAPLE.exception.TypeNotMatch;

import java.util.LinkedList;
import java.util.List;

/**
 * Maple - 2017
 * lijinning, 2017.05.31, Shanghai.
 */
public class VirtualStack {
    public long offset;
    public long max;
    public List<MemoryReference> memrefs = new LinkedList<>();
    public final long wordsize = 8;

    public VirtualStack(){
        reset();
    }

    public void reset(){
        offset = 0;
        max = 0;
        memrefs.clear();
    }

    public void extend(long len){
        offset += len;
        max = offset > max ? offset : max;
    }

    void rewind(long len){
        offset -= len;
    }

    public MemoryReference top(){
        MemoryReference mem = relocatableMem(bp(), -offset);
        memrefs.add(mem);
        return mem;
    }

    public MemoryReference relocatableMem(Register base, long offset){
        return new MemoryReference(base, offset);
    }

    public Register bp(){
        return new Register("rbp", 0);
    }

    public void fixOffset(long diff){
        for(MemoryReference mem: memrefs){
            if(mem.fixed = true){
                throw new TypeNotMatch();
            }
            mem.offset = mem.offset + diff;
            mem.fixed = true;
        }
    }

}
