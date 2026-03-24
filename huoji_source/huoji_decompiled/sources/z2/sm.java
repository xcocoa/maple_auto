package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class sm {
    public static final sm OooO0O0 = new qm(null, 0, 0);
    private final sm OooO00o;

    public sm(sm smVar) {
        this.OooO00o = smVar;
    }

    public final sm OooO00o(int i, int i2) {
        return new qm(this, i, i2);
    }

    public final sm OooO0O0(int i, int i2) {
        return new nm(this, i, i2);
    }

    public abstract void OooO0OO(Cdo cdo, byte[] bArr);

    public final sm OooO0Oo() {
        return this.OooO00o;
    }
}
