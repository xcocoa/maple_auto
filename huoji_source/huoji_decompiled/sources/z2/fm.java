package z2;

/* JADX INFO: loaded from: classes2.dex */
public class fm {
    private final float OooO00o;
    private final float OooO0O0;

    public fm(float f, float f2) {
        this.OooO00o = f;
        this.OooO0O0 = f2;
    }

    private static float OooO00o(fm fmVar, fm fmVar2, fm fmVar3) {
        float f = fmVar2.OooO00o;
        float f2 = fmVar2.OooO0O0;
        return ((fmVar3.OooO00o - f) * (fmVar.OooO0O0 - f2)) - ((fmVar3.OooO0O0 - f2) * (fmVar.OooO00o - f));
    }

    public static float OooO0O0(fm fmVar, fm fmVar2) {
        return po.OooO00o(fmVar.OooO00o, fmVar.OooO0O0, fmVar2.OooO00o, fmVar2.OooO0O0);
    }

    public static void OooO0o0(fm[] fmVarArr) {
        fm fmVar;
        fm fmVar2;
        fm fmVar3;
        float fOooO0O0 = OooO0O0(fmVarArr[0], fmVarArr[1]);
        float fOooO0O02 = OooO0O0(fmVarArr[1], fmVarArr[2]);
        float fOooO0O03 = OooO0O0(fmVarArr[0], fmVarArr[2]);
        if (fOooO0O02 >= fOooO0O0 && fOooO0O02 >= fOooO0O03) {
            fmVar = fmVarArr[0];
            fmVar2 = fmVarArr[1];
            fmVar3 = fmVarArr[2];
        } else if (fOooO0O03 < fOooO0O02 || fOooO0O03 < fOooO0O0) {
            fmVar = fmVarArr[2];
            fmVar2 = fmVarArr[0];
            fmVar3 = fmVarArr[1];
        } else {
            fmVar = fmVarArr[1];
            fmVar2 = fmVarArr[0];
            fmVar3 = fmVarArr[2];
        }
        if (OooO00o(fmVar2, fmVar, fmVar3) < 0.0f) {
            fm fmVar4 = fmVar3;
            fmVar3 = fmVar2;
            fmVar2 = fmVar4;
        }
        fmVarArr[0] = fmVar2;
        fmVarArr[1] = fmVar;
        fmVarArr[2] = fmVar3;
    }

    public final float OooO0OO() {
        return this.OooO00o;
    }

    public final float OooO0Oo() {
        return this.OooO0O0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof fm) {
            fm fmVar = (fm) obj;
            if (this.OooO00o == fmVar.OooO00o && this.OooO0O0 == fmVar.OooO0O0) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Float.floatToIntBits(this.OooO00o) * 31) + Float.floatToIntBits(this.OooO0O0);
    }

    public final String toString() {
        return "(" + this.OooO00o + ',' + this.OooO0O0 + ')';
    }
}
