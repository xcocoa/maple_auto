package z2;

import org.jdeferred.Promise;

/* JADX INFO: loaded from: classes2.dex */
public class t40<D, F, P> implements Promise<D, F, P> {
    private final Promise<D, F, P> OooO00o;
    public final u30<D, F, P> OooO0O0;

    public t40(u30<D, F, P> u30Var) {
        this.OooO0O0 = u30Var;
        this.OooO00o = u30Var.OooOO0o();
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO(z30<D, D_OUT> z30Var) {
        return this.OooO00o.OooO(z30Var);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooO00o(e40<P> e40Var) {
        return this.OooO00o.OooO00o(e40Var);
    }

    @Override // org.jdeferred.Promise
    public void OooO0O0(long j) throws InterruptedException {
        this.OooO00o.OooO0O0(j);
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0OO(a40<D, D_OUT, F_OUT, P_OUT> a40Var, d40<F, D_OUT, F_OUT, P_OUT> d40Var, g40<P, D_OUT, F_OUT, P_OUT> g40Var) {
        return this.OooO00o.OooO0OO(a40Var, d40Var, g40Var);
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0Oo(a40<D, D_OUT, F_OUT, P_OUT> a40Var, d40<F, D_OUT, F_OUT, P_OUT> d40Var) {
        return this.OooO00o.OooO0Oo(a40Var, d40Var);
    }

    @Override // org.jdeferred.Promise
    public Promise.State OooO0o() {
        return this.OooO00o.OooO0o();
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0o0(a40<D, D_OUT, F_OUT, P_OUT> a40Var) {
        return this.OooO00o.OooO0o0(a40Var);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooO0oO(t30<D, F> t30Var) {
        return this.OooO00o.OooO0oO(t30Var);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooO0oo(y30<D> y30Var) {
        return this.OooO00o.OooO0oo(y30Var);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOO0(b40<F> b40Var) {
        return this.OooO00o.OooOO0(b40Var);
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOOO(y30<D> y30Var) {
        return this.OooO00o.OooOOO(y30Var);
    }

    @Override // org.jdeferred.Promise
    public boolean OooOOO0() {
        return this.OooO00o.OooOOO0();
    }

    @Override // org.jdeferred.Promise
    public void OooOOOO() throws InterruptedException {
        this.OooO00o.OooOOOO();
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOOOo(y30<D> y30Var, b40<F> b40Var) {
        return this.OooO00o.OooOOOo(y30Var, b40Var);
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooOOo(z30<D, D_OUT> z30Var, c40<F, F_OUT> c40Var, f40<P, P_OUT> f40Var) {
        return this.OooO00o.OooOOo(z30Var, c40Var, f40Var);
    }

    @Override // org.jdeferred.Promise
    public boolean OooOOo0() {
        return this.OooO00o.OooOOo0();
    }

    @Override // org.jdeferred.Promise
    public Promise<D, F, P> OooOOoo(y30<D> y30Var, b40<F> b40Var, e40<P> e40Var) {
        return this.OooO00o.OooOOoo(y30Var, b40Var, e40Var);
    }

    @Override // org.jdeferred.Promise
    public <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooOo0(z30<D, D_OUT> z30Var, c40<F, F_OUT> c40Var) {
        return this.OooO00o.OooOo0(z30Var, c40Var);
    }

    @Override // org.jdeferred.Promise
    public boolean OooOo00() {
        return this.OooO00o.OooOo00();
    }
}
