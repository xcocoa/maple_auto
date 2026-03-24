package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class m20<T> extends w20<T> {
    private final String Ooooo00;

    public m20(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Description must be non null!");
        }
        this.Ooooo00 = str;
    }

    @Override // z2.t20
    public final void describeTo(n20 n20Var) {
        n20Var.OooO0Oo(this.Ooooo00);
    }
}
