package z2;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class o2<T, Y> {
    private final Map<T, Y> OooO00o = new LinkedHashMap(100, 0.75f, true);
    private final long OooO0O0;
    private long OooO0OO;
    private long OooO0Oo;

    public o2(long j) {
        this.OooO0O0 = j;
        this.OooO0OO = j;
    }

    private void OooOO0() {
        OooOOo0(this.OooO0OO);
    }

    public synchronized boolean OooO(@NonNull T t) {
        return this.OooO00o.containsKey(t);
    }

    public void OooO0O0() {
        OooOOo0(0L);
    }

    public synchronized void OooO0OO(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
        this.OooO0OO = Math.round(this.OooO0O0 * f);
        OooOO0();
    }

    public synchronized long OooO0Oo() {
        return this.OooO0Oo;
    }

    public synchronized long OooO0o0() {
        return this.OooO0OO;
    }

    @Nullable
    public synchronized Y OooOO0O(@NonNull T t) {
        return this.OooO00o.get(t);
    }

    public synchronized int OooOO0o() {
        return this.OooO00o.size();
    }

    public void OooOOO(@NonNull T t, @Nullable Y y) {
    }

    public int OooOOO0(@Nullable Y y) {
        return 1;
    }

    @Nullable
    public synchronized Y OooOOOO(@NonNull T t, @Nullable Y y) {
        long jOooOOO0 = OooOOO0(y);
        if (jOooOOO0 >= this.OooO0OO) {
            OooOOO(t, y);
            return null;
        }
        if (y != null) {
            this.OooO0Oo += jOooOOO0;
        }
        Y yPut = this.OooO00o.put(t, y);
        if (yPut != null) {
            this.OooO0Oo -= (long) OooOOO0(yPut);
            if (!yPut.equals(y)) {
                OooOOO(t, yPut);
            }
        }
        OooOO0();
        return yPut;
    }

    @Nullable
    public synchronized Y OooOOOo(@NonNull T t) {
        Y yRemove;
        yRemove = this.OooO00o.remove(t);
        if (yRemove != null) {
            this.OooO0Oo -= (long) OooOOO0(yRemove);
        }
        return yRemove;
    }

    public synchronized void OooOOo0(long j) {
        while (this.OooO0Oo > j) {
            Iterator<Map.Entry<T, Y>> it = this.OooO00o.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.OooO0Oo -= (long) OooOOO0(value);
            T key = next.getKey();
            it.remove();
            OooOOO(key, value);
        }
    }
}
