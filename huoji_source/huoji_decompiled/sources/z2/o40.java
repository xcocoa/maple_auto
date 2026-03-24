package z2;

import android.os.AsyncTask;
import java.util.concurrent.CancellationException;
import org.jdeferred.DeferredManager;
import org.jdeferred.Promise;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o40<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {
    public final Logger OooO00o;
    private final s40<Result, Throwable, Progress> OooO0O0;
    private final DeferredManager.StartPolicy OooO0OO;
    private Throwable OooO0Oo;

    public o40() {
        this.OooO00o = LoggerFactory.getLogger(o40.class);
        this.OooO0O0 = new s40<>();
        this.OooO0OO = DeferredManager.StartPolicy.DEFAULT;
    }

    public o40(DeferredManager.StartPolicy startPolicy) {
        this.OooO00o = LoggerFactory.getLogger(o40.class);
        this.OooO0O0 = new s40<>();
        this.OooO0OO = startPolicy;
    }

    public abstract Result OooO00o(Params... paramsArr) throws Exception;

    public DeferredManager.StartPolicy OooO0O0() {
        return this.OooO0OO;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void OooO0OO(Progress progress) {
        publishProgress(progress);
    }

    public Promise<Result, Throwable, Progress> OooO0Oo() {
        return this.OooO0O0.OooOO0o();
    }

    @Override // android.os.AsyncTask
    public final Result doInBackground(Params... paramsArr) {
        try {
            return OooO00o(paramsArr);
        } catch (Throwable th) {
            this.OooO0Oo = th;
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public final void onCancelled() {
        this.OooO0O0.OooOo0o(new CancellationException());
    }

    @Override // android.os.AsyncTask
    public final void onCancelled(Result result) {
        this.OooO0O0.OooOo0o(new CancellationException());
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(Result result) {
        Throwable th = this.OooO0Oo;
        if (th != null) {
            this.OooO0O0.OooOo0o(th);
        } else {
            this.OooO0O0.OooOo0O(result);
        }
    }

    @Override // android.os.AsyncTask
    public final void onProgressUpdate(Progress... progressArr) {
        if (progressArr == null || progressArr.length == 0) {
            this.OooO0O0.OooOO0O(null);
        } else if (progressArr.length > 0) {
            this.OooO00o.warn("There were multiple progress values.  Only the first one was used!");
            this.OooO0O0.OooOO0O(progressArr[0]);
        }
    }
}
