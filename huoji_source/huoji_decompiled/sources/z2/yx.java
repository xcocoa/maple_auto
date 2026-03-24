package z2;

/* JADX INFO: loaded from: classes2.dex */
public abstract class yx implements Runnable {
    public final String OoooOoO;

    public yx(String str, Object... objArr) {
        this.OoooOoO = zx.OooOOoo(str, objArr);
    }

    public abstract void OooOO0o();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.OoooOoO);
        try {
            OooOO0o();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
