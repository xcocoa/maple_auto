package z2;

import org.jdeferred.DeferredManager;

/* JADX INFO: loaded from: classes2.dex */
public abstract class x30<P> implements Runnable {
    private final u30<Void, Throwable, P> OoooOoO;
    private final DeferredManager.StartPolicy OoooOoo;

    public x30() {
        this.OoooOoO = new s40();
        this.OoooOoo = DeferredManager.StartPolicy.DEFAULT;
    }

    public x30(DeferredManager.StartPolicy startPolicy) {
        this.OoooOoO = new s40();
        this.OoooOoo = startPolicy;
    }

    public u30<Void, Throwable, P> OooO00o() {
        return this.OoooOoO;
    }

    public DeferredManager.StartPolicy OooO0O0() {
        return this.OoooOoo;
    }

    public void OooO0OO(P p) {
        this.OoooOoO.OooOO0O(p);
    }
}
