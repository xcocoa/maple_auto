package z2;

/* JADX INFO: loaded from: classes2.dex */
public class cd0 {
    private volatile boolean OooO00o;

    public synchronized void OooO00o() throws InterruptedException {
        while (!this.OooO00o) {
            wait();
        }
    }

    public synchronized void OooO0O0() {
        this.OooO00o = false;
    }

    public synchronized void OooO0OO() {
        boolean z = this.OooO00o;
        this.OooO00o = true;
        if (!z) {
            notify();
        }
    }

    public synchronized void OooO0Oo(boolean z) {
        if (z) {
            OooO0OO();
        } else {
            OooO0O0();
        }
    }
}
