package z2;

/* JADX INFO: loaded from: classes2.dex */
public class d30<T> extends i20<T> {
    private final String OoooOoO;

    public d30() {
        this("ANYTHING");
    }

    public d30(String str) {
        this.OoooOoO = str;
    }

    @p20
    public static r20<Object> OooO0Oo() {
        return new d30();
    }

    @p20
    public static r20<Object> OooO0o0(String str) {
        return new d30(str);
    }

    @Override // z2.r20
    public boolean OooO0O0(Object obj) {
        return true;
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo(this.OoooOoO);
    }
}
