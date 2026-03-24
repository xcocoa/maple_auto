package z2;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class k10 implements Runnable {
    private final q10 OoooOoO = new q10();
    private final l10 OoooOoo;
    private volatile boolean Ooooo00;

    public k10(l10 l10Var) {
        this.OoooOoo = l10Var;
    }

    public void OooO00o(v10 v10Var, Object obj) {
        p10 p10VarOooO00o = p10.OooO00o(v10Var, obj);
        synchronized (this) {
            this.OoooOoO.OooO00o(p10VarOooO00o);
            if (!this.Ooooo00) {
                this.Ooooo00 = true;
                this.OoooOoo.OooO0oO().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        p10 p10VarOooO0OO;
        while (true) {
            try {
                p10VarOooO0OO = this.OoooOoO.OooO0OO(1000);
            } catch (InterruptedException e) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.Ooooo00 = false;
            }
            if (p10VarOooO0OO == null) {
                synchronized (this) {
                    p10VarOooO0OO = this.OoooOoO.OooO0O0();
                    if (p10VarOooO0OO == null) {
                        return;
                    }
                    this.Ooooo00 = false;
                }
            }
            this.OoooOoo.OooOO0O(p10VarOooO0OO);
        }
    }
}
