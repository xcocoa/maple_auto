package z2;

import java.util.Queue;
import z2.oO00OOOo;

/* JADX INFO: loaded from: classes.dex */
public abstract class oO000Oo<T extends oO00OOOo> {
    private static final int OooO0O0 = 20;
    private final Queue<T> OooO00o = t2.OooO0o(20);

    public abstract T OooO00o();

    public T OooO0O0() {
        T tPoll = this.OooO00o.poll();
        return tPoll == null ? (T) OooO00o() : tPoll;
    }

    public void OooO0OO(T t) {
        if (this.OooO00o.size() < 20) {
            this.OooO00o.offer(t);
        }
    }
}
