package z2;

import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import z2.oo000o;

/* JADX INFO: loaded from: classes.dex */
public class o000OO<T> implements Future<T>, oo000o.OooO0O0<T>, oo000o.OooO00o {
    private Request<?> OoooOoO;
    private boolean OoooOoo = false;
    private T Ooooo00;
    private VolleyError Ooooo0o;

    private o000OO() {
    }

    private synchronized T OooO0OO(Long l) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.Ooooo0o != null) {
            throw new ExecutionException(this.Ooooo0o);
        }
        if (this.OoooOoo) {
            return this.Ooooo00;
        }
        long jLongValue = 0;
        if (l == null) {
            wait(jLongValue);
        } else if (l.longValue() > 0) {
            jLongValue = l.longValue();
            wait(jLongValue);
        }
        if (this.Ooooo0o != null) {
            throw new ExecutionException(this.Ooooo0o);
        }
        if (!this.OoooOoo) {
            throw new TimeoutException();
        }
        return this.Ooooo00;
    }

    public static <E> o000OO<E> OooO0Oo() {
        return new o000OO<>();
    }

    @Override // z2.oo000o.OooO00o
    public synchronized void OooO0O0(VolleyError volleyError) {
        this.Ooooo0o = volleyError;
        notifyAll();
    }

    public void OooO0o0(Request<?> request) {
        this.OoooOoO = request;
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean cancel(boolean z) {
        if (this.OoooOoO == null) {
            return false;
        }
        if (isDone()) {
            return false;
        }
        this.OoooOoO.OooO0OO();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        try {
            return OooO0OO(null);
        } catch (TimeoutException e) {
            throw new AssertionError(e);
        }
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return OooO0OO(Long.valueOf(TimeUnit.MILLISECONDS.convert(j, timeUnit)));
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.OoooOoO;
        if (request == null) {
            return false;
        }
        return request.OooOooo();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0012  */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean isDone() {
        boolean z;
        if (this.OoooOoo || this.Ooooo0o != null) {
            z = true;
        } else if (!isCancelled()) {
            z = false;
        }
        return z;
    }

    @Override // z2.oo000o.OooO0O0
    public synchronized void onResponse(T t) {
        this.OoooOoo = true;
        this.Ooooo00 = t;
        notifyAll();
    }
}
