package z2;

/* JADX INFO: loaded from: classes.dex */
public final class oOo00OO0 implements ooOOOOoo<int[]> {
    private static final String OooO00o = "IntegerArrayPool";

    @Override // z2.ooOOOOoo
    public int OooO00o() {
        return 4;
    }

    @Override // z2.ooOOOOoo
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public int OooO0O0(int[] iArr) {
        return iArr.length;
    }

    @Override // z2.ooOOOOoo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public int[] newArray(int i) {
        return new int[i];
    }

    @Override // z2.ooOOOOoo
    public String getTag() {
        return OooO00o;
    }
}
