package z2;

import java.util.Iterator;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k30<T> extends i20<T> {
    private final Iterable<r20<? super T>> OoooOoO;

    public k30(Iterable<r20<? super T>> iterable) {
        this.OoooOoO = iterable;
    }

    @Override // z2.r20
    public abstract boolean OooO0O0(Object obj);

    public void OooO0Oo(n20 n20Var, String str) {
        n20Var.OooO00o("(", o4.OooO00o.OooO0Oo + str + o4.OooO00o.OooO0Oo, ")", this.OoooOoO);
    }

    public boolean OooO0o0(Object obj, boolean z) {
        Iterator<r20<? super T>> it = this.OoooOoO.iterator();
        while (it.hasNext()) {
            if (it.next().OooO0O0(obj) == z) {
                return z;
            }
        }
        return !z;
    }

    @Override // z2.t20
    public abstract void describeTo(n20 n20Var);
}
