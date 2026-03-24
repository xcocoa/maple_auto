package z2;

/* JADX INFO: loaded from: classes2.dex */
public final class q10 {
    private p10 OooO00o;
    private p10 OooO0O0;

    public synchronized void OooO00o(p10 p10Var) {
        try {
            if (p10Var == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            p10 p10Var2 = this.OooO0O0;
            if (p10Var2 != null) {
                p10Var2.OooO0OO = p10Var;
                this.OooO0O0 = p10Var;
            } else {
                if (this.OooO00o != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.OooO0O0 = p10Var;
                this.OooO00o = p10Var;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized p10 OooO0O0() {
        p10 p10Var;
        p10Var = this.OooO00o;
        if (p10Var != null) {
            p10 p10Var2 = p10Var.OooO0OO;
            this.OooO00o = p10Var2;
            if (p10Var2 == null) {
                this.OooO0O0 = null;
            }
        }
        return p10Var;
    }

    public synchronized p10 OooO0OO(int i) throws InterruptedException {
        if (this.OooO00o == null) {
            wait(i);
        }
        return OooO0O0();
    }
}
