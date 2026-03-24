package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class j20<T> {
    public static final OooO0OO<Object> OooO00o = new OooO0OO<>();

    public static final class OooO0O0<T> extends j20<T> {
        private final T OooO0O0;
        private final n20 OooO0OO;

        private OooO0O0(T t, n20 n20Var) {
            super();
            this.OooO0O0 = t;
            this.OooO0OO = n20Var;
        }

        @Override // z2.j20
        public <U> j20<U> OooO00o(OooO0o<? super T, U> oooO0o) {
            return oooO0o.OooO00o(this.OooO0O0, this.OooO0OO);
        }

        @Override // z2.j20
        public boolean OooO0Oo(r20<T> r20Var, String str) {
            if (r20Var.OooO0O0(this.OooO0O0)) {
                return true;
            }
            this.OooO0OO.OooO0Oo(str);
            r20Var.OooO00o(this.OooO0O0, this.OooO0OO);
            return false;
        }
    }

    public static final class OooO0OO<T> extends j20<T> {
        private OooO0OO() {
            super();
        }

        @Override // z2.j20
        public <U> j20<U> OooO00o(OooO0o<? super T, U> oooO0o) {
            return j20.OooO0o0();
        }

        @Override // z2.j20
        public boolean OooO0Oo(r20<T> r20Var, String str) {
            return false;
        }
    }

    public interface OooO0o<I, O> {
        j20<O> OooO00o(I i, n20 n20Var);
    }

    private j20() {
    }

    public static <T> j20<T> OooO0O0(T t, n20 n20Var) {
        return new OooO0O0(t, n20Var);
    }

    public static <T> j20<T> OooO0o0() {
        return OooO00o;
    }

    public abstract <U> j20<U> OooO00o(OooO0o<? super T, U> oooO0o);

    public final boolean OooO0OO(r20<T> r20Var) {
        return OooO0Oo(r20Var, "");
    }

    public abstract boolean OooO0Oo(r20<T> r20Var, String str);

    public final <U> j20<U> OooO0o(OooO0o<? super T, U> oooO0o) {
        return OooO00o(oooO0o);
    }
}
