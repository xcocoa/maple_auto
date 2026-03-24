package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class l20<T> extends i20<T> {
    private final String OoooOoO;

    public l20(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Description should be non null!");
        }
        this.OoooOoO = str;
    }

    @Override // z2.t20
    public final void describeTo(n20 n20Var) {
        n20Var.OooO0Oo(this.OoooOoO);
    }
}
