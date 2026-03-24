package z2;

/* JADX INFO: loaded from: classes2.dex */
public class x10 extends w10 {
    private final a20[] OooO0Oo;

    public x10(Class cls, boolean z, a20[] a20VarArr) {
        super(cls, null, z);
        this.OooO0Oo = a20VarArr;
    }

    @Override // z2.y10
    public synchronized t10[] OooO00o() {
        t10[] t10VarArr;
        int length = this.OooO0Oo.length;
        t10VarArr = new t10[length];
        for (int i = 0; i < length; i++) {
            a20 a20Var = this.OooO0Oo[i];
            t10VarArr[i] = OooO0oO(a20Var.OooO00o, a20Var.OooO0OO, a20Var.OooO0O0, a20Var.OooO0Oo, a20Var.OooO0o0);
        }
        return t10VarArr;
    }
}
