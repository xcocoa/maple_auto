package z2;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.jdeferred.DeferredManager;
import org.jdeferred.Promise;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public abstract class p40 implements DeferredManager {
    public final Logger OooO00o = LoggerFactory.getLogger(p40.class);

    /* JADX INFO: Add missing generic type declarations: [D] */
    public class OooO00o<D> extends v30<D, Void> {
        public final /* synthetic */ Future Ooooo00;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OooO00o(DeferredManager.StartPolicy startPolicy, Future future) {
            super(startPolicy);
            this.Ooooo00 = future;
        }

        @Override // java.util.concurrent.Callable
        public D call() throws Exception {
            try {
                return (D) this.Ooooo00.get();
            } catch (InterruptedException e) {
                throw e;
            } catch (ExecutionException e2) {
                if (e2.getCause() instanceof Exception) {
                    throw ((Exception) e2.getCause());
                }
                throw e2;
            }
        }
    }

    @Override // org.jdeferred.DeferredManager
    public <D, F, P> Promise<D, F, P> OooO(Promise<D, F, P> promise) {
        return promise;
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooO00o(Runnable... runnableArr) {
        OooOOOO(runnableArr);
        Promise[] promiseArr = new Promise[runnableArr.length];
        for (int i = 0; i < runnableArr.length; i++) {
            if (runnableArr[i] instanceof x30) {
                promiseArr[i] = OooOO0O((x30) runnableArr[i]);
            } else {
                promiseArr[i] = OooO0o(runnableArr[i]);
            }
        }
        return OooO0O0(promiseArr);
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooO0O0(Promise... promiseArr) {
        OooOOOO(promiseArr);
        return new x40(promiseArr).OooOO0o();
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooO0OO(x30<?>... x30VarArr) {
        OooOOOO(x30VarArr);
        Promise[] promiseArr = new Promise[x30VarArr.length];
        for (int i = 0; i < x30VarArr.length; i++) {
            promiseArr[i] = OooOO0O(x30VarArr[i]);
        }
        return OooO0O0(promiseArr);
    }

    @Override // org.jdeferred.DeferredManager
    public <D> Promise<D, Throwable, Void> OooO0Oo(Future<D> future) {
        return OooOOO(new OooO00o(DeferredManager.StartPolicy.AUTO, future));
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<Void, Throwable, Void> OooO0o(Runnable runnable) {
        return OooOO0(new w30(runnable));
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooO0o0(v30<?, ?>... v30VarArr) {
        OooOOOO(v30VarArr);
        Promise[] promiseArr = new Promise[v30VarArr.length];
        for (int i = 0; i < v30VarArr.length; i++) {
            promiseArr[i] = OooOOO(v30VarArr[i]);
        }
        return OooO0O0(promiseArr);
    }

    @Override // org.jdeferred.DeferredManager
    public <D> Promise<D, Throwable, Void> OooO0oO(Callable<D> callable) {
        return OooOO0(new w30(callable));
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooO0oo(w30<?, ?>... w30VarArr) {
        OooOOOO(w30VarArr);
        Promise[] promiseArr = new Promise[w30VarArr.length];
        for (int i = 0; i < w30VarArr.length; i++) {
            promiseArr[i] = OooOO0(w30VarArr[i]);
        }
        return OooO0O0(promiseArr);
    }

    @Override // org.jdeferred.DeferredManager
    public <D, P> Promise<D, Throwable, P> OooOO0(w30<D, P> w30Var) {
        if (w30Var.OooO00o() == DeferredManager.StartPolicy.AUTO || (w30Var.OooO00o() == DeferredManager.StartPolicy.DEFAULT && OooOOOo())) {
            OooOOo0(w30Var);
        }
        return w30Var.OooO0O0();
    }

    @Override // org.jdeferred.DeferredManager
    public <P> Promise<Void, Throwable, P> OooOO0O(x30<P> x30Var) {
        return OooOO0(new w30((x30) x30Var));
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooOO0o(Callable<?>... callableArr) {
        OooOOOO(callableArr);
        Promise[] promiseArr = new Promise[callableArr.length];
        for (int i = 0; i < callableArr.length; i++) {
            if (callableArr[i] instanceof v30) {
                promiseArr[i] = OooOOO((v30) callableArr[i]);
            } else {
                promiseArr[i] = OooO0oO(callableArr[i]);
            }
        }
        return OooO0O0(promiseArr);
    }

    @Override // org.jdeferred.DeferredManager
    public <D, P> Promise<D, Throwable, P> OooOOO(v30<D, P> v30Var) {
        return OooOO0(new w30<>((v30) v30Var));
    }

    @Override // org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooOOO0(Future<?>... futureArr) {
        OooOOOO(futureArr);
        Promise[] promiseArr = new Promise[futureArr.length];
        for (int i = 0; i < futureArr.length; i++) {
            promiseArr[i] = OooO0Oo(futureArr[i]);
        }
        return OooO0O0(promiseArr);
    }

    public void OooOOOO(Object[] objArr) {
        if (objArr == null || objArr.length == 0) {
            throw new IllegalArgumentException("Arguments is null or its length is empty");
        }
    }

    public abstract boolean OooOOOo();

    public abstract void OooOOo(Callable callable);

    public abstract void OooOOo0(Runnable runnable);
}
