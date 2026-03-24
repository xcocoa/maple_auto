package z2;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import org.jdeferred.DeferredManager;
import org.jdeferred.Promise;

/* JADX INFO: loaded from: classes2.dex */
public class w30<D, P> extends FutureTask<D> {
    public final u30<D, Throwable, P> OoooOoO;
    public final DeferredManager.StartPolicy OoooOoo;

    public w30(Runnable runnable) {
        super(runnable, null);
        this.OoooOoO = new s40();
        this.OoooOoo = DeferredManager.StartPolicy.DEFAULT;
    }

    public w30(Callable<D> callable) {
        super(callable);
        this.OoooOoO = new s40();
        this.OoooOoo = DeferredManager.StartPolicy.DEFAULT;
    }

    public w30(v30<D, P> v30Var) {
        super(v30Var);
        this.OoooOoO = v30Var.OooO00o();
        this.OoooOoo = v30Var.OooO0O0();
    }

    public w30(x30<P> x30Var) {
        super(x30Var, null);
        this.OoooOoO = x30Var.OooO00o();
        this.OoooOoo = x30Var.OooO0O0();
    }

    public DeferredManager.StartPolicy OooO00o() {
        return this.OoooOoo;
    }

    public Promise<D, Throwable, P> OooO0O0() {
        return this.OoooOoO.OooOO0o();
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        try {
            if (isCancelled()) {
                this.OoooOoO.OooOo0o(new CancellationException());
            }
            this.OoooOoO.OooOo0O(get());
        } catch (InterruptedException unused) {
        } catch (ExecutionException e) {
            this.OoooOoO.OooOo0o(e.getCause());
        }
    }
}
