package z2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import org.jdeferred.Promise;
import org.jdeferred.android.AndroidExecutionScope;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes2.dex */
public class j40<D, F, P> extends s40<D, F, P> {
    private static final OooO OooOO0O = new OooO();
    private static final int OooOO0o = 1;
    private static final int OooOOO = 3;
    private static final int OooOOO0 = 2;
    private static final int OooOOOO = 4;
    public final Logger OooO;
    private final AndroidExecutionScope OooOO0;

    public static class OooO extends Handler {
        public OooO() {
            super(Looper.getMainLooper());
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OooO0o oooO0o = (OooO0o) message.obj;
            int i = message.what;
            if (i == 1) {
                ((y30) oooO0o.OooO0O0).OooO0O0(oooO0o.OooO0OO);
                return;
            }
            if (i == 2) {
                ((e40) oooO0o.OooO0O0).OooO0O0(oooO0o.OooO0o0);
            } else if (i == 3) {
                ((b40) oooO0o.OooO0O0).OooO0O0(oooO0o.OooO0Oo);
            } else {
                if (i != 4) {
                    return;
                }
                ((t30) oooO0o.OooO0O0).OooO0O0(oooO0o.OooO0o, oooO0o.OooO0OO, oooO0o.OooO0Oo);
            }
        }
    }

    public class OooO00o implements b40<F> {
        public OooO00o() {
        }

        @Override // z2.b40
        public void OooO0O0(F f) {
            j40.this.OooOo0o(f);
        }
    }

    public class OooO0O0 implements e40<P> {
        public OooO0O0() {
        }

        @Override // z2.e40
        public void OooO0O0(P p) {
            j40.this.OooOO0O(p);
        }
    }

    public class OooO0OO implements y30<D> {
        public OooO0OO() {
        }

        @Override // z2.y30
        public void OooO0O0(D d) {
            j40.this.OooOo0O(d);
        }
    }

    public static class OooO0o<Callback, D, F, P> {
        public final u30 OooO00o;
        public final Callback OooO0O0;
        public final D OooO0OO;
        public final F OooO0Oo;
        public final Promise.State OooO0o;
        public final P OooO0o0;

        public OooO0o(u30 u30Var, Callback callback, Promise.State state, D d, F f, P p) {
            this.OooO00o = u30Var;
            this.OooO0O0 = callback;
            this.OooO0o = state;
            this.OooO0OO = d;
            this.OooO0Oo = f;
            this.OooO0o0 = p;
        }
    }

    public j40(Promise<D, F, P> promise) {
        this(promise, AndroidExecutionScope.UI);
    }

    public j40(Promise<D, F, P> promise, AndroidExecutionScope androidExecutionScope) {
        this.OooO = LoggerFactory.getLogger(j40.class);
        this.OooOO0 = androidExecutionScope;
        promise.OooOOO(new OooO0OO()).OooO00o(new OooO0O0()).OooOO0(new OooO00o());
    }

    @Override // z2.q40
    public void OooOo(t30<D, F> t30Var, Promise.State state, D d, F f) {
        if (Oooo000(t30Var) == AndroidExecutionScope.UI) {
            Oooo00O(4, t30Var, state, d, f, null);
        } else {
            super.OooOo(t30Var, state, d, f);
        }
    }

    @Override // z2.q40
    public void OooOoOO(y30<D> y30Var, D d) {
        if (Oooo000(y30Var) == AndroidExecutionScope.UI) {
            Oooo00O(1, y30Var, Promise.State.RESOLVED, d, null, null);
        } else {
            super.OooOoOO(y30Var, d);
        }
    }

    @Override // z2.q40
    public void OooOoo(b40<F> b40Var, F f) {
        if (Oooo000(b40Var) == AndroidExecutionScope.UI) {
            Oooo00O(3, b40Var, Promise.State.REJECTED, null, f, null);
        } else {
            super.OooOoo(b40Var, f);
        }
    }

    @Override // z2.q40
    public void OooOooo(e40<P> e40Var, P p) {
        if (Oooo000(e40Var) == AndroidExecutionScope.UI) {
            Oooo00O(2, e40Var, Promise.State.PENDING, null, null, p);
        } else {
            super.OooOooo(e40Var, p);
        }
    }

    public AndroidExecutionScope Oooo000(Object obj) {
        AndroidExecutionScope androidExecutionScopeOooO00o = obj instanceof l40 ? ((l40) obj).OooO00o() : null;
        return androidExecutionScopeOooO00o == null ? this.OooOO0 : androidExecutionScopeOooO00o;
    }

    public <Callback> void Oooo00O(int i, Callback callback, Promise.State state, D d, F f, P p) {
        OooOO0O.obtainMessage(i, new OooO0o(this, callback, state, d, f, p)).sendToTarget();
    }
}
