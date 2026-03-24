package z2;

/* JADX INFO: loaded from: classes.dex */
public final class oO00O0o0 implements ooOOOOoo<byte[]> {
    private static final String OooO00o = "ByteArrayPool";

    @Override // z2.ooOOOOoo
    public int OooO00o() {
        return 1;
    }

    @Override // z2.ooOOOOoo
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public int OooO0O0(byte[] bArr) {
        return bArr.length;
    }

    @Override // z2.ooOOOOoo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public byte[] newArray(int i) {
        return new byte[i];
    }

    @Override // z2.ooOOOOoo
    public String getTag() {
        return OooO00o;
    }
}
