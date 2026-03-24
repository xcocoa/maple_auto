package z2;

/* JADX INFO: loaded from: classes2.dex */
public class j30<T> extends i20<T> {
    private final T OoooOoO;

    public j30(T t) {
        this.OoooOoO = t;
    }

    @p20
    public static <T> r20<T> OooO0Oo(T t) {
        return new j30(t);
    }

    @p20
    public static <T> r20<T> OooO0o0(T t) {
        return new j30(t);
    }

    @Override // z2.r20
    public boolean OooO0O0(Object obj) {
        return obj == this.OoooOoO;
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("sameInstance(").OooO0o0(this.OoooOoO).OooO0Oo(")");
    }
}
