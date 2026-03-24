package z2;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class px implements tw {
    public final ox OoooOoO;
    public final zy OoooOoo;
    public final h00 Ooooo00;

    @Nullable
    private gx Ooooo0o;
    public final qx OooooO0;
    public final boolean OooooOO;
    private boolean OooooOo;

    public class OooO00o extends h00 {
        public OooO00o() {
        }

        @Override // z2.h00
        public void OooOo0O() {
            px.this.cancel();
        }
    }

    public final class OooO0O0 extends yx {
        public static final /* synthetic */ boolean Ooooo0o = false;
        private final uw OoooOoo;

        public OooO0O0(uw uwVar) {
            super("OkHttp %s", px.this.OooO0o());
            this.OoooOoo = uwVar;
        }

        @Override // z2.yx
        public void OooOO0o() {
            IOException e;
            sx sxVarOooO0Oo;
            px.this.Ooooo00.OooOOO0();
            boolean z = true;
            try {
                try {
                    sxVarOooO0Oo = px.this.OooO0Oo();
                } catch (IOException e2) {
                    e = e2;
                    z = false;
                }
                try {
                    if (px.this.OoooOoo.OooO0Oo()) {
                        this.OoooOoo.onFailure(px.this, new IOException("Canceled"));
                    } else {
                        this.OoooOoo.onResponse(px.this, sxVarOooO0Oo);
                    }
                } catch (IOException e3) {
                    e = e3;
                    IOException iOExceptionOooO0oo = px.this.OooO0oo(e);
                    if (z) {
                        uz.OooOO0O().OooOOo(4, "Callback failure for " + px.this.OooO(), iOExceptionOooO0oo);
                    } else {
                        px.this.Ooooo0o.OooO0O0(px.this, iOExceptionOooO0oo);
                        this.OoooOoo.onFailure(px.this, iOExceptionOooO0oo);
                    }
                }
            } finally {
                px.this.OoooOoO.OooOO0o().OooO0o(this);
            }
        }

        public px OooOOO() {
            return px.this;
        }

        public void OooOOO0(ExecutorService executorService) {
            try {
                try {
                    executorService.execute(this);
                } catch (RejectedExecutionException e) {
                    InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                    interruptedIOException.initCause(e);
                    px.this.Ooooo0o.OooO0O0(px.this, interruptedIOException);
                    this.OoooOoo.onFailure(px.this, interruptedIOException);
                    px.this.OoooOoO.OooOO0o().OooO0o(this);
                }
            } catch (Throwable th) {
                px.this.OoooOoO.OooOO0o().OooO0o(this);
                throw th;
            }
        }

        public String OooOOOO() {
            return px.this.OooooO0.OooOO0O().OooOOOo();
        }

        public qx OooOOOo() {
            return px.this.OooooO0;
        }
    }

    private px(ox oxVar, qx qxVar, boolean z) {
        this.OoooOoO = oxVar;
        this.OooooO0 = qxVar;
        this.OooooOO = z;
        this.OoooOoo = new zy(oxVar, z);
        OooO00o oooO00o = new OooO00o();
        this.Ooooo00 = oooO00o;
        oooO00o.OooO0oo(oxVar.OooO0o0(), TimeUnit.MILLISECONDS);
    }

    private void OooO0O0() {
        this.OoooOoo.OooO(uz.OooOO0O().OooOOOO("response.body().close()"));
    }

    public static px OooO0o0(ox oxVar, qx qxVar, boolean z) {
        px pxVar = new px(oxVar, qxVar, z);
        pxVar.Ooooo0o = oxVar.OooOOO().OooO00o(pxVar);
        return pxVar;
    }

    public String OooO() {
        StringBuilder sb = new StringBuilder();
        sb.append(isCanceled() ? "canceled " : "");
        sb.append(this.OooooOO ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb.append(" to ");
        sb.append(OooO0o());
        return sb.toString();
    }

    @Override // z2.tw
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public px mo15clone() {
        return OooO0o0(this.OoooOoO, this.OooooO0, this.OooooOO);
    }

    public sx OooO0Oo() throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.OoooOoO.OooOOo());
        arrayList.add(this.OoooOoo);
        arrayList.add(new qy(this.OoooOoO.OooOO0O()));
        arrayList.add(new cy(this.OoooOoO.OooOOoo()));
        arrayList.add(new ky(this.OoooOoO));
        if (!this.OooooOO) {
            arrayList.addAll(this.OoooOoO.OooOo00());
        }
        arrayList.add(new ry(this.OooooOO));
        return new wy(arrayList, null, null, null, 0, this.OooooO0, this, this.Ooooo0o, this.OoooOoO.OooO0oO(), this.OoooOoO.OooOoo0(), this.OoooOoO.Oooo000()).OooO0o0(this.OooooO0);
    }

    public String OooO0o() {
        return this.OooooO0.OooOO0O().Oooo0oO();
    }

    public py OooO0oO() {
        return this.OoooOoo.OooOO0();
    }

    @Nullable
    public IOException OooO0oo(@Nullable IOException iOException) {
        if (!this.Ooooo00.OooOOOo()) {
            return iOException;
        }
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    @Override // z2.tw
    public void OooOO0(uw uwVar) {
        synchronized (this) {
            if (this.OooooOo) {
                throw new IllegalStateException("Already Executed");
            }
            this.OooooOo = true;
        }
        OooO0O0();
        this.Ooooo0o.OooO0OO(this);
        this.OoooOoO.OooOO0o().OooO0O0(new OooO0O0(uwVar));
    }

    @Override // z2.tw
    public void cancel() {
        this.OoooOoo.OooO00o();
    }

    @Override // z2.tw
    public sx execute() throws IOException {
        synchronized (this) {
            if (this.OooooOo) {
                throw new IllegalStateException("Already Executed");
            }
            this.OooooOo = true;
        }
        OooO0O0();
        this.Ooooo00.OooOOO0();
        this.Ooooo0o.OooO0OO(this);
        try {
            try {
                this.OoooOoO.OooOO0o().OooO0OO(this);
                sx sxVarOooO0Oo = OooO0Oo();
                if (sxVarOooO0Oo != null) {
                    return sxVarOooO0Oo;
                }
                throw new IOException("Canceled");
            } catch (IOException e) {
                IOException iOExceptionOooO0oo = OooO0oo(e);
                this.Ooooo0o.OooO0O0(this, iOExceptionOooO0oo);
                throw iOExceptionOooO0oo;
            }
        } finally {
            this.OoooOoO.OooOO0o().OooO0oO(this);
        }
        this.OoooOoO.OooOO0o().OooO0oO(this);
    }

    @Override // z2.tw
    public boolean isCanceled() {
        return this.OoooOoo.OooO0Oo();
    }

    @Override // z2.tw
    public synchronized boolean isExecuted() {
        return this.OooooOo;
    }

    @Override // z2.tw
    public qx request() {
        return this.OooooO0;
    }

    @Override // z2.tw
    public f10 timeout() {
        return this.Ooooo00;
    }
}
