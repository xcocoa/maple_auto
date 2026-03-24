package z2;

import java.lang.reflect.Array;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class p30 implements Iterator<Object> {
    private final Object OoooOoO;
    private int OoooOoo = 0;

    public p30(Object obj) {
        if (!obj.getClass().isArray()) {
            throw new IllegalArgumentException("not an array");
        }
        this.OoooOoO = obj;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.OoooOoo < Array.getLength(this.OoooOoO);
    }

    @Override // java.util.Iterator
    public Object next() {
        Object obj = this.OoooOoO;
        int i = this.OoooOoo;
        this.OoooOoo = i + 1;
        return Array.get(obj, i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("cannot remove items from an array");
    }
}
