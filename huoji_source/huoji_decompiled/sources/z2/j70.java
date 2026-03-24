package z2;

/* JADX INFO: loaded from: classes2.dex */
public class j70 extends z80 {
    private final Object OooO00o;
    private final Class<?> OooO0O0;
    private final boolean OooO0OO;
    private volatile b90 OooO0Oo;

    public j70(Class<?> cls) {
        this(cls, true);
    }

    public j70(Class<?> cls, boolean z) {
        this.OooO00o = new Object();
        this.OooO0O0 = cls;
        this.OooO0OO = z;
    }

    @Override // z2.z80
    public b90 OooO0oo() {
        if (this.OooO0Oo == null) {
            synchronized (this.OooO00o) {
                if (this.OooO0Oo == null) {
                    this.OooO0Oo = new x60(this.OooO0OO).OooO0oO(this.OooO0O0);
                }
            }
        }
        return this.OooO0Oo;
    }
}
