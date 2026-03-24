package z2;

/* JADX INFO: loaded from: classes2.dex */
public class xv extends lw {
    private volatile int OooO0OO;

    public class OooO00o extends Thread {
        public final /* synthetic */ gw OoooOoO;
        public final /* synthetic */ kw OoooOoo;

        public OooO00o(gw gwVar, kw kwVar) {
            this.OoooOoO = gwVar;
            this.OoooOoo = kwVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.OoooOoO.OooO0O0(this.OoooOoo);
            } finally {
                xv.this.OooOo00();
            }
        }
    }

    public xv() {
    }

    public xv(Class<? extends hw> cls) {
        super(cls);
    }

    public xv(Class<? extends hw> cls, String str) {
        super(cls, str);
    }

    public xv(String str) {
        super(str);
    }

    @Override // z2.lw, z2.gw
    public void OooO0O0(kw kwVar) {
        this.OooO0OO = 0;
        super.OooO0O0(kwVar);
        OooOo0();
    }

    @Override // z2.lw
    public void OooOOO0(gw gwVar, kw kwVar) {
        new OooO00o(gwVar, kwVar).start();
    }

    public synchronized void OooOo0() {
        while (this.OooO0OO < OooOOo0()) {
            try {
                wait();
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public synchronized void OooOo00() {
        this.OooO0OO++;
        notifyAll();
    }
}
