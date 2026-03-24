package z2;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class i80 {
    private final List<r20<?>> OooO00o = new ArrayList();

    private r20<Throwable> OooO0O0() {
        return this.OooO00o.size() == 1 ? OooO0Oo(this.OooO00o.get(0)) : k20.OooO00o(OooO0o0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private r20<Throwable> OooO0Oo(r20<?> r20Var) {
        return r20Var;
    }

    private List<r20<? super Throwable>> OooO0o0() {
        return new ArrayList(this.OooO00o);
    }

    public void OooO00o(r20<?> r20Var) {
        this.OooO00o.add(r20Var);
    }

    public r20<Throwable> OooO0OO() {
        return e80.OooOO0(OooO0O0());
    }

    public boolean OooO0o() {
        return !this.OooO00o.isEmpty();
    }
}
