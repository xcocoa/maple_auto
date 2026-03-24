package z2;

import android.annotation.SuppressLint;
import android.os.Build;
import java.util.concurrent.ExecutorService;
import org.jdeferred.DeferredManager;
import org.jdeferred.Promise;
import org.jdeferred.android.AndroidExecutionScope;

/* JADX INFO: loaded from: classes2.dex */
public class i40 extends r40 {
    private static Void[] OooO0o0 = new Void[0];

    public i40() {
    }

    public i40(ExecutorService executorService) {
        super(executorService);
    }

    @Override // z2.p40, org.jdeferred.DeferredManager
    public <D, F, P> Promise<D, F, P> OooO(Promise<D, F, P> promise) {
        return promise instanceof j40 ? promise : new j40(promise).OooOO0o();
    }

    @Override // z2.p40, org.jdeferred.DeferredManager
    public Promise<z40, b50, y40> OooO0O0(Promise... promiseArr) {
        return new j40(super.OooO0O0(promiseArr)).OooOO0o();
    }

    @Override // z2.p40, org.jdeferred.DeferredManager
    public <D, P> Promise<D, Throwable, P> OooOO0(w30<D, P> w30Var) {
        return (Promise<D, Throwable, P>) new j40(super.OooOO0(w30Var)).OooOO0o();
    }

    public <D, F, P> Promise<D, F, P> OooOoO(Promise<D, F, P> promise, AndroidExecutionScope androidExecutionScope) {
        return promise instanceof j40 ? promise : new j40(promise, androidExecutionScope).OooOO0o();
    }

    public Promise<z40, b50, y40> OooOoOO(AndroidExecutionScope androidExecutionScope, Promise... promiseArr) {
        return new j40(super.OooO0O0(promiseArr), androidExecutionScope).OooOO0o();
    }

    @SuppressLint({"NewApi"})
    public <Progress, Result> Promise<Result, Throwable, Progress> OooOoo(o40<Void, Progress, Result> o40Var) {
        if (o40Var.OooO0O0() == DeferredManager.StartPolicy.AUTO || (o40Var.OooO0O0() == DeferredManager.StartPolicy.DEFAULT && OooOOOo())) {
            if (Build.VERSION.SDK_INT >= 11) {
                o40Var.executeOnExecutor(OooOo00(), OooO0o0);
            } else {
                o40Var.execute(OooO0o0);
            }
        }
        return o40Var.OooO0Oo();
    }

    public Promise<z40, b50, y40> OooOoo0(AndroidExecutionScope androidExecutionScope, o40<Void, ?, ?>... o40VarArr) {
        OooOOOO(o40VarArr);
        Promise[] promiseArr = new Promise[o40VarArr.length];
        for (int i = 0; i < o40VarArr.length; i++) {
            promiseArr[i] = OooOoo(o40VarArr[i]);
        }
        return OooOoOO(androidExecutionScope, promiseArr);
    }

    public Promise<z40, b50, y40> OooOooO(o40<Void, ?, ?>... o40VarArr) {
        OooOOOO(o40VarArr);
        Promise[] promiseArr = new Promise[o40VarArr.length];
        for (int i = 0; i < o40VarArr.length; i++) {
            promiseArr[i] = OooOoo(o40VarArr[i]);
        }
        return OooO0O0(promiseArr);
    }
}
