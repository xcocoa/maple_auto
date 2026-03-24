package z2;

import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public abstract class o30 extends w20<String> {
    public final String Ooooo00;

    public o30(String str) {
        this.Ooooo00 = str;
    }

    public abstract String OooO();

    @Override // z2.w20
    /* JADX INFO: renamed from: OooO0o, reason: merged with bridge method [inline-methods] */
    public void OooO0Oo(String str, n20 n20Var) {
        n20Var.OooO0Oo("was \"").OooO0Oo(str).OooO0Oo("\"");
    }

    public abstract boolean OooO0oO(String str);

    @Override // z2.w20
    /* JADX INFO: renamed from: OooO0oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO0o0(String str) {
        return OooO0oO(str);
    }

    @Override // z2.t20
    public void describeTo(n20 n20Var) {
        n20Var.OooO0Oo("a string ").OooO0Oo(OooO()).OooO0Oo(o4.OooO00o.OooO0Oo).OooO0o0(this.Ooooo00);
    }
}
