package org.jdeferred;

import z2.a40;
import z2.b40;
import z2.c40;
import z2.d40;
import z2.e40;
import z2.f40;
import z2.g40;
import z2.t30;
import z2.y30;
import z2.z30;

/* JADX INFO: loaded from: classes2.dex */
public interface Promise<D, F, P> {

    public enum State {
        PENDING,
        REJECTED,
        RESOLVED
    }

    <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO(z30<D, D_OUT> z30Var);

    Promise<D, F, P> OooO00o(e40<P> e40Var);

    void OooO0O0(long j) throws InterruptedException;

    <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0OO(a40<D, D_OUT, F_OUT, P_OUT> a40Var, d40<F, D_OUT, F_OUT, P_OUT> d40Var, g40<P, D_OUT, F_OUT, P_OUT> g40Var);

    <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0Oo(a40<D, D_OUT, F_OUT, P_OUT> a40Var, d40<F, D_OUT, F_OUT, P_OUT> d40Var);

    State OooO0o();

    <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooO0o0(a40<D, D_OUT, F_OUT, P_OUT> a40Var);

    Promise<D, F, P> OooO0oO(t30<D, F> t30Var);

    Promise<D, F, P> OooO0oo(y30<D> y30Var);

    Promise<D, F, P> OooOO0(b40<F> b40Var);

    Promise<D, F, P> OooOOO(y30<D> y30Var);

    boolean OooOOO0();

    void OooOOOO() throws InterruptedException;

    Promise<D, F, P> OooOOOo(y30<D> y30Var, b40<F> b40Var);

    <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooOOo(z30<D, D_OUT> z30Var, c40<F, F_OUT> c40Var, f40<P, P_OUT> f40Var);

    boolean OooOOo0();

    Promise<D, F, P> OooOOoo(y30<D> y30Var, b40<F> b40Var, e40<P> e40Var);

    <D_OUT, F_OUT, P_OUT> Promise<D_OUT, F_OUT, P_OUT> OooOo0(z30<D, D_OUT> z30Var, c40<F, F_OUT> c40Var);

    boolean OooOo00();
}
