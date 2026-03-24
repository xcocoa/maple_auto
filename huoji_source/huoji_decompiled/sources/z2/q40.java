package z2;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.jdeferred.Promise;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public abstract class q40<D, F, P> implements Promise<D, F, P> {
    public D OooO0oO;
    public F OooO0oo;
    public final Logger OooO00o = LoggerFactory.getLogger(q40.class);
    public volatile Promise.State OooO0O0 = Promise.State.PENDING;
    public final List<y30<D>> OooO0OO = new CopyOnWriteArrayList();
    public final List<b40<F>> OooO0Oo = new CopyOnWriteArrayList();
    public final List<e40<P>> OooO0o0 = new CopyOnWriteArrayList();
    public final List<t30<D, F>> OooO0o = new CopyOnWriteArrayList();

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO(z30<D, D_OUT> z30Var) {
        return new u40(this, z30Var, null, null);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooO00o(e40<P> e40Var) {
        this.OooO0o0.add(e40Var);
        return this;
    }

    @Override // org.jdeferred.Promise
    public void OooO0O0(long j) throws InterruptedException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            while (OooOo00()) {
                if (j <= 0) {
                    try {
                        wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        throw e;
                    }
                } else {
                    wait(j - (System.currentTimeMillis() - jCurrentTimeMillis));
                }
                if (j > 0 && System.currentTimeMillis() - jCurrentTimeMillis >= j) {
                    return;
                }
            }
        }
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0OO(a40<D, D_OUT, F_OUT, P_OUT> a40Var, d40<F, D_OUT, F_OUT, P_OUT> d40Var, g40<P, D_OUT, F_OUT, P_OUT> g40Var) {
        return new w40(this, a40Var, d40Var, g40Var);
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0Oo(a40<D, D_OUT, F_OUT, P_OUT> a40Var, d40<F, D_OUT, F_OUT, P_OUT> d40Var) {
        return new w40(this, a40Var, d40Var, null);
    }

    @Override // org.jdeferred.Promise
    public Promise.State OooO0o() {
        return this.OooO0O0;
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0o0(a40<D, D_OUT, F_OUT, P_OUT> a40Var) {
        return new w40(this, a40Var, null, null);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooO0oO(t30<D, F> t30Var) {
        synchronized (this) {
            if (OooOo00()) {
                this.OooO0o.add(t30Var);
            } else {
                OooOo(t30Var, this.OooO0O0, this.OooO0oO, this.OooO0oo);
            }
        }
        return this;
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooO0oo(y30<D> y30Var) {
        return OooOOO(y30Var);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOO0(b40<F> b40Var) {
        synchronized (this) {
            if (OooOOO0()) {
                OooOoo(b40Var, this.OooO0oo);
            } else {
                this.OooO0Oo.add(b40Var);
            }
        }
        return this;
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOOO(y30<D> y30Var) {
        synchronized (this) {
            if (OooOOo0()) {
                OooOoOO(y30Var, this.OooO0oO);
            } else {
                this.OooO0OO.add(y30Var);
            }
        }
        return this;
    }

    @Override // org.jdeferred.Promise
    public boolean OooOOO0() {
        return this.OooO0O0 == Promise.State.REJECTED;
    }

    @Override // org.jdeferred.Promise
    public void OooOOOO() throws InterruptedException {
        OooO0O0(-1L);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOOOo(y30<D> y30Var, b40<F> b40Var) {
        OooOOO(y30Var);
        OooOO0(b40Var);
        return this;
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooOOo(z30<D, D_OUT> z30Var, c40<F, F_OUT> c40Var, f40<P, P_OUT> f40Var) {
        return new u40(this, z30Var, c40Var, f40Var);
    }

    @Override // org.jdeferred.Promise
    public boolean OooOOo0() {
        return this.OooO0O0 == Promise.State.RESOLVED;
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOOoo(y30<D> y30Var, b40<F> b40Var, e40<P> e40Var) {
        OooOOO(y30Var);
        OooOO0(b40Var);
        OooO00o(e40Var);
        return this;
    }

    public void OooOo(t30<D, F> t30Var, Promise.State state, D d, F f) {
        t30Var.OooO0O0(state, d, f);
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooOo0(z30<D, D_OUT> z30Var, c40<F, F_OUT> c40Var) {
        return new u40(this, z30Var, c40Var, null);
    }

    @Override // org.jdeferred.Promise
    public boolean OooOo00() {
        return this.OooO0O0 == Promise.State.PENDING;
    }

    public void OooOoO(D d) {
        Iterator<y30<D>> it = this.OooO0OO.iterator();
        while (it.hasNext()) {
            try {
                OooOoOO(it.next(), d);
            } catch (Exception e) {
                this.OooO00o.error("an uncaught exception occured in a DoneCallback", (Throwable) e);
            }
        }
        this.OooO0OO.clear();
    }

    public void OooOoO0(Promise.State state, D d, F f) {
        Iterator<t30<D, F>> it = this.OooO0o.iterator();
        while (it.hasNext()) {
            try {
                OooOo(it.next(), state, d, f);
            } catch (Exception e) {
                this.OooO00o.error("an uncaught exception occured in a AlwaysCallback", (Throwable) e);
            }
        }
        this.OooO0o.clear();
        synchronized (this) {
            notifyAll();
        }
    }

    public void OooOoOO(y30<D> y30Var, D d) {
        y30Var.OooO0O0(d);
    }

    public void OooOoo(b40<F> b40Var, F f) {
        b40Var.OooO0O0(f);
    }

    public void OooOoo0(F f) {
        Iterator<b40<F>> it = this.OooO0Oo.iterator();
        while (it.hasNext()) {
            try {
                OooOoo(it.next(), f);
            } catch (Exception e) {
                this.OooO00o.error("an uncaught exception occured in a FailCallback", (Throwable) e);
            }
        }
        this.OooO0Oo.clear();
    }

    public void OooOooO(P p) {
        Iterator<e40<P>> it = this.OooO0o0.iterator();
        while (it.hasNext()) {
            try {
                OooOooo(it.next(), p);
            } catch (Exception e) {
                this.OooO00o.error("an uncaught exception occured in a ProgressCallback", (Throwable) e);
            }
        }
    }

    public void OooOooo(e40<P> e40Var, P p) {
        e40Var.OooO0O0(p);
    }
}
