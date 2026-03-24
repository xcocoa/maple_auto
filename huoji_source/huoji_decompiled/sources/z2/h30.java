package z2;

/* JADX INFO: loaded from: classes2.dex */
public class h30<T> extends i20<T> {
    private final r20<T> OoooOoO;

    public h30(r20<T> r20Var) {
        this.OoooOoO = r20Var;
    }

    @p20
    public static <T> r20<T> OooO0Oo(T t) {
        return OooO0o0(f30.OooO0oo(t));
    }

    @p20
    public static <T> r20<T> OooO0o0(r20<T> r20Var) {
        return new h30(r20Var);
    }

    @Override // z2.r20
    public boolean OooO0O0(Object obj) {
        return !this.OoooOoO.OooO0O0(obj);
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("not ").OooO0O0(this.OoooOoO);
    }
}
