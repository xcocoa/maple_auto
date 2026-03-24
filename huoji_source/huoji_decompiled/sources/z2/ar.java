package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class ar {
    private final int OooO00o;
    private final int[] OooO0O0;
    private final fm[] OooO0OO;

    public ar(int i, int[] iArr, int i2, int i3, int i4) {
        this.OooO00o = i;
        this.OooO0O0 = iArr;
        float f = i4;
        this.OooO0OO = new fm[]{new fm(i2, f), new fm(i3, f)};
    }

    public final fm[] OooO00o() {
        return this.OooO0OO;
    }

    public final int[] OooO0O0() {
        return this.OooO0O0;
    }

    public final int OooO0OO() {
        return this.OooO00o;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ar) && this.OooO00o == ((ar) obj).OooO00o;
    }

    public final int hashCode() {
        return this.OooO00o;
    }
}
