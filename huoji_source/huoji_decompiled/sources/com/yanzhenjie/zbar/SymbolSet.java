package com.yanzhenjie.zbar;

import java.util.AbstractCollection;
import java.util.Iterator;
import z2.ev;

/* JADX INFO: loaded from: classes2.dex */
public class SymbolSet extends AbstractCollection<Symbol> {
    private long peer;

    static {
        System.loadLibrary("zbar");
        init();
    }

    public SymbolSet(long j) {
        this.peer = j;
    }

    private native void destroy(long j);

    private native long firstSymbol(long j);

    private static native void init();

    public synchronized void destroy() {
        long j = this.peer;
        if (j != 0) {
            destroy(j);
            this.peer = 0L;
        }
    }

    public void finalize() {
        destroy();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator<Symbol> iterator() {
        long jFirstSymbol = firstSymbol(this.peer);
        return jFirstSymbol == 0 ? new ev(null) : new ev(new Symbol(jFirstSymbol));
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public native int size();
}
