package z2;

import org.jdeferred.Promise;

/* JADX INFO: loaded from: classes2.dex */
public class w40<D, F, P, D_OUT, F_OUT, P_OUT> extends s40<D_OUT, F_OUT, P_OUT> implements Promise<D_OUT, F_OUT, P_OUT> {

    public class OooO implements b40<F_OUT> {
        public OooO() {
        }

        @Override // z2.b40
        public void OooO0O0(F_OUT f_out) {
            w40.this.OooOo0o(f_out);
        }
    }

    public class OooO00o implements e40<P> {
        public final /* synthetic */ g40 OooO00o;

        public OooO00o(g40 g40Var) {
            this.OooO00o = g40Var;
        }

        @Override // z2.e40
        public void OooO0O0(P p) {
            g40 g40Var = this.OooO00o;
            if (g40Var != null) {
                w40.this.Oooo000(g40Var.OooO00o(p));
            } else {
                w40.this.OooOO0O(p);
            }
        }
    }

    public class OooO0O0 implements b40<F> {
        public final /* synthetic */ d40 OooO00o;

        public OooO0O0(d40 d40Var) {
            this.OooO00o = d40Var;
        }

        @Override // z2.b40
        public void OooO0O0(F f) {
            d40 d40Var = this.OooO00o;
            if (d40Var != null) {
                w40.this.Oooo000(d40Var.OooO00o(f));
            } else {
                w40.this.OooOo0o(f);
            }
        }
    }

    public class OooO0OO implements y30<D> {
        public final /* synthetic */ a40 OooO00o;

        public OooO0OO(a40 a40Var) {
            this.OooO00o = a40Var;
        }

        @Override // z2.y30
        public void OooO0O0(D d) {
            a40 a40Var = this.OooO00o;
            if (a40Var != null) {
                w40.this.Oooo000(a40Var.OooO00o(d));
            } else {
                w40.this.OooOo0O(d);
            }
        }
    }

    public class OooO0o implements e40<P_OUT> {
        public OooO0o() {
        }

        @Override // z2.e40
        public void OooO0O0(P_OUT p_out) {
            w40.this.OooOO0O(p_out);
        }
    }

    public class OooOO0 implements y30<D_OUT> {
        public OooOO0() {
        }

        @Override // z2.y30
        public void OooO0O0(D_OUT d_out) {
            w40.this.OooOo0O(d_out);
        }
    }

    public w40(Promise<D, F, P> promise, a40<D, D_OUT, F_OUT, P_OUT> a40Var, d40<F, D_OUT, F_OUT, P_OUT> d40Var, g40<P, D_OUT, F_OUT, P_OUT> g40Var) {
        promise.OooOOO(new OooO0OO(a40Var)).OooOO0(new OooO0O0(d40Var)).OooO00o(new OooO00o(g40Var));
    }

    public Promise<D_OUT, F_OUT, P_OUT> Oooo000(Promise<D_OUT, F_OUT, P_OUT> promise) {
        promise.OooOOO(new OooOO0()).OooOO0(new OooO()).OooO00o(new OooO0o());
        return promise;
    }
}
