package z2;

import android.os.Handler;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class o000oOoO implements o00oO0o {
    private final Executor OooO00o;

    public class OooO00o implements Executor {
        public final /* synthetic */ Handler OooO00o;

        public OooO00o(Handler handler) {
            this.OooO00o = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.OooO00o.post(runnable);
        }
    }

    public class OooO0O0 implements Runnable {
        private final Request OoooOoO;
        private final oo000o OoooOoo;
        private final Runnable Ooooo00;

        public OooO0O0(Request request, oo000o oo000oVar, Runnable runnable) {
            this.OoooOoO = request;
            this.OoooOoo = oo000oVar;
            this.Ooooo00 = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.OoooOoO.OooOooo()) {
                this.OoooOoO.OooO("canceled-at-delivery");
                return;
            }
            if (this.OoooOoo.OooO0O0()) {
                this.OoooOoO.OooO0o(this.OoooOoo.OooO00o);
            } else {
                this.OoooOoO.OooO0o0(this.OoooOoo.OooO0OO);
            }
            if (this.OoooOoo.OooO0Oo) {
                this.OoooOoO.OooO0O0("intermediate-response");
            } else {
                this.OoooOoO.OooO("done");
            }
            Runnable runnable = this.Ooooo00;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public o000oOoO(Handler handler) {
        this.OooO00o = new OooO00o(handler);
    }

    public o000oOoO(Executor executor) {
        this.OooO00o = executor;
    }

    @Override // z2.o00oO0o
    public void OooO00o(Request<?> request, oo000o<?> oo000oVar) {
        OooO0O0(request, oo000oVar, null);
    }

    @Override // z2.o00oO0o
    public void OooO0O0(Request<?> request, oo000o<?> oo000oVar, Runnable runnable) {
        request.Oooo000();
        request.OooO0O0("post-response");
        this.OooO00o.execute(new OooO0O0(request, oo000oVar, runnable));
    }

    @Override // z2.o00oO0o
    public void OooO0OO(Request<?> request, VolleyError volleyError) {
        request.OooO0O0("post-error");
        this.OooO00o.execute(new OooO0O0(request, oo000o.OooO00o(volleyError), null));
    }
}
