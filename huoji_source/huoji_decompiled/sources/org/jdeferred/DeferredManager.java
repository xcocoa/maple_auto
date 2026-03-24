package org.jdeferred;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import z2.b50;
import z2.v30;
import z2.w30;
import z2.x30;
import z2.y40;
import z2.z40;

/* JADX INFO: loaded from: classes2.dex */
public interface DeferredManager {

    public enum StartPolicy {
        DEFAULT,
        AUTO,
        MANAUL
    }

    <D, F, P> Promise<D, F, P> OooO(Promise<D, F, P> promise);

    Promise<z40, b50, y40> OooO00o(Runnable... runnableArr);

    Promise<z40, b50, y40> OooO0O0(Promise... promiseArr);

    Promise<z40, b50, y40> OooO0OO(x30<?>... x30VarArr);

    <D> Promise<D, Throwable, Void> OooO0Oo(Future<D> future);

    Promise<Void, Throwable, Void> OooO0o(Runnable runnable);

    Promise<z40, b50, y40> OooO0o0(v30<?, ?>... v30VarArr);

    <D> Promise<D, Throwable, Void> OooO0oO(Callable<D> callable);

    Promise<z40, b50, y40> OooO0oo(w30<?, ?>... w30VarArr);

    <D, P> Promise<D, Throwable, P> OooOO0(w30<D, P> w30Var);

    <P> Promise<Void, Throwable, P> OooOO0O(x30<P> x30Var);

    Promise<z40, b50, y40> OooOO0o(Callable<?>... callableArr);

    <D, P> Promise<D, Throwable, P> OooOOO(v30<D, P> v30Var);

    Promise<z40, b50, y40> OooOOO0(Future<?>... futureArr);
}
