package z2;

/* JADX INFO: loaded from: classes2.dex */
public class b30<T> extends v20<Iterable<T>> {
    private final r20<? super T> Ooooo00;

    public b30(r20<? super T> r20Var) {
        this.Ooooo00 = r20Var;
    }

    @p20
    public static <U> r20<Iterable<U>> OooO0o0(r20<U> r20Var) {
        return new b30(r20Var);
    }

    @Override // z2.v20
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public boolean OooO0Oo(Iterable<T> iterable, n20 n20Var) {
        for (T t : iterable) {
            if (!this.Ooooo00.OooO0O0(t)) {
                n20Var.OooO0Oo("an item ");
                this.Ooooo00.OooO00o(t, n20Var);
                return false;
            }
        }
        return true;
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("every item is ").OooO0O0(this.Ooooo00);
    }
}
