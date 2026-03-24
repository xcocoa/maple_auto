package z2;

/* JADX INFO: loaded from: classes2.dex */
public class c30<T> extends i20<T> {
    private final r20<T> OoooOoO;

    public c30(r20<T> r20Var) {
        this.OoooOoO = r20Var;
    }

    @p20
    @Deprecated
    public static <T> r20<T> OooO0Oo(Class<T> cls) {
        return OooO0o(g30.OooO0o(cls));
    }

    @p20
    public static <T> r20<T> OooO0o(r20<T> r20Var) {
        return new c30(r20Var);
    }

    @p20
    public static <T> r20<T> OooO0o0(T t) {
        return OooO0o(f30.OooO0oo(t));
    }

    @p20
    public static <T> r20<T> OooO0oO(Class<T> cls) {
        return OooO0o(g30.OooO0o(cls));
    }

    @Override // z2.i20, z2.r20
    public void OooO00o(Object obj, n20 n20Var) {
        this.OoooOoO.OooO00o(obj, n20Var);
    }

    @Override // z2.r20
    public boolean OooO0O0(Object obj) {
        return this.OoooOoO.OooO0O0(obj);
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("is ").OooO0O0(this.OoooOoO);
    }
}
