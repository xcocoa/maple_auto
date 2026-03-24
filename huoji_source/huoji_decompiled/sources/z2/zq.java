package z2;

/* JADX INFO: loaded from: classes2.dex */
public class zq {
    private final int OooO00o;
    private final int OooO0O0;

    public zq(int i, int i2) {
        this.OooO00o = i;
        this.OooO0O0 = i2;
    }

    public final int OooO00o() {
        return this.OooO0O0;
    }

    public final int OooO0O0() {
        return this.OooO00o;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zq)) {
            return false;
        }
        zq zqVar = (zq) obj;
        return this.OooO00o == zqVar.OooO00o && this.OooO0O0 == zqVar.OooO0O0;
    }

    public final int hashCode() {
        return this.OooO00o ^ this.OooO0O0;
    }

    public final String toString() {
        return this.OooO00o + "(" + this.OooO0O0 + ')';
    }
}
