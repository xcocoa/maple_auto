package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class bb0 {
    private Runnable OooO00o;

    public void OooO00o() {
        if (this.OooO00o != null) {
            new Thread(this.OooO00o).start();
        }
    }

    public void OooO0O0(Runnable runnable) {
        this.OooO00o = runnable;
    }
}
