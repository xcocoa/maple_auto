package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ft {
    private final boolean OooO00o;

    public ft(boolean z) {
        this.OooO00o = z;
    }

    public final void OooO00o(fm[] fmVarArr) {
        if (!this.OooO00o || fmVarArr == null || fmVarArr.length < 3) {
            return;
        }
        fm fmVar = fmVarArr[0];
        fmVarArr[0] = fmVarArr[2];
        fmVarArr[2] = fmVar;
    }

    public final boolean OooO0O0() {
        return this.OooO00o;
    }
}
