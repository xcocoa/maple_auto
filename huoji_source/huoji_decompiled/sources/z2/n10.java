package z2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import org.greenrobot.eventbus.EventBusException;

/* JADX INFO: loaded from: classes2.dex */
public final class n10 extends Handler {
    private final q10 OooO00o;
    private final int OooO0O0;
    private final l10 OooO0OO;
    private boolean OooO0Oo;

    public n10(l10 l10Var, Looper looper, int i) {
        super(looper);
        this.OooO0OO = l10Var;
        this.OooO0O0 = i;
        this.OooO00o = new q10();
    }

    public void OooO00o(v10 v10Var, Object obj) {
        p10 p10VarOooO00o = p10.OooO00o(v10Var, obj);
        synchronized (this) {
            this.OooO00o.OooO00o(p10VarOooO00o);
            if (!this.OooO0Oo) {
                this.OooO0Oo = true;
                if (!sendMessage(obtainMessage())) {
                    throw new EventBusException("Could not send handler message");
                }
            }
        }
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            long jUptimeMillis = SystemClock.uptimeMillis();
            do {
                p10 p10VarOooO0O0 = this.OooO00o.OooO0O0();
                if (p10VarOooO0O0 == null) {
                    synchronized (this) {
                        p10VarOooO0O0 = this.OooO00o.OooO0O0();
                        if (p10VarOooO0O0 == null) {
                            this.OooO0Oo = false;
                            return;
                        }
                    }
                }
                this.OooO0OO.OooOO0O(p10VarOooO0O0);
            } while (SystemClock.uptimeMillis() - jUptimeMillis < this.OooO0O0);
            if (!sendMessage(obtainMessage())) {
                throw new EventBusException("Could not send handler message");
            }
            this.OooO0Oo = true;
        } finally {
            this.OooO0Oo = false;
        }
    }
}
