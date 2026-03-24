package z2;

import org.jdeferred.Promise;

/* JADX INFO: loaded from: classes2.dex */
public class u40<D, F, P, D_OUT, F_OUT, P_OUT> extends s40<D_OUT, F_OUT, P_OUT> implements Promise<D_OUT, F_OUT, P_OUT> {
    private final z30<D, D_OUT> OooO;
    private final c40<F, F_OUT> OooOO0;
    private final f40<P, P_OUT> OooOO0O;
    public static final OooO0o OooOO0o = new OooO0o();
    public static final OooO OooOOO0 = new OooO();
    public static final OooOO0 OooOOO = new OooOO0();

    public static final class OooO<F> implements c40<F, F> {
        @Override // z2.c40
        public F OooO00o(F f) {
            return f;
        }
    }

    public class OooO00o implements e40<P> {
        public OooO00o() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // z2.e40
        public void OooO0O0(P p) {
            u40 u40Var = u40.this;
            u40Var.OooOO0O(u40Var.OooOO0O.OooO00o(p));
        }
    }

    public class OooO0O0 implements b40<F> {
        public OooO0O0() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // z2.b40
        public void OooO0O0(F f) {
            u40 u40Var = u40.this;
            u40Var.OooOo0o(u40Var.OooOO0.OooO00o(f));
        }
    }

    public class OooO0OO implements y30<D> {
        public OooO0OO() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // z2.y30
        public void OooO0O0(D d) {
            u40 u40Var = u40.this;
            u40Var.OooOo0O(u40Var.OooO.OooO00o(d));
        }
    }

    public static final class OooO0o<D> implements z30<D, D> {
        @Override // z2.z30
        public D OooO00o(D d) {
            return d;
        }
    }

    public static final class OooOO0<P> implements f40<P, P> {
        @Override // z2.f40
        public P OooO00o(P p) {
            return p;
        }
    }

    public u40(Promise<D, F, P> promise, z30<D, D_OUT> z30Var, c40<F, F_OUT> c40Var, f40<P, P_OUT> f40Var) {
        this.OooO = z30Var == null ? OooOO0o : z30Var;
        this.OooOO0 = c40Var == null ? OooOOO0 : c40Var;
        this.OooOO0O = f40Var == null ? OooOOO : f40Var;
        promise.OooOOO(new OooO0OO()).OooOO0(new OooO0O0()).OooO00o(new OooO00o());
    }
}
