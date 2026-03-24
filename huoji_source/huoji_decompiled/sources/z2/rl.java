package z2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class rl {
    private static final int OooO0o = 1500;
    public static final int OooO0o0 = 0;
    private static final int OooO0oO = 2750;
    private static rl OooO0oo;
    private final Object OooO00o = new Object();
    private final Handler OooO0O0 = new Handler(Looper.getMainLooper(), new OooO00o());
    private OooO0OO OooO0OO;
    private OooO0OO OooO0Oo;

    public class OooO00o implements Handler.Callback {
        public OooO00o() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            rl.this.OooO0Oo((OooO0OO) message.obj);
            return true;
        }
    }

    public interface OooO0O0 {
        void OooO00o(int i);

        void show();
    }

    public static class OooO0OO {
        public final WeakReference<OooO0O0> OooO00o;
        public int OooO0O0;
        public boolean OooO0OO;

        public OooO0OO(int i, OooO0O0 oooO0O0) {
            this.OooO00o = new WeakReference<>(oooO0O0);
            this.OooO0O0 = i;
        }

        public boolean OooO00o(OooO0O0 oooO0O0) {
            return oooO0O0 != null && this.OooO00o.get() == oooO0O0;
        }
    }

    private rl() {
    }

    private boolean OooO00o(OooO0OO oooO0OO, int i) {
        OooO0O0 oooO0O0 = oooO0OO.OooO00o.get();
        if (oooO0O0 == null) {
            return false;
        }
        this.OooO0O0.removeCallbacksAndMessages(oooO0OO);
        oooO0O0.OooO00o(i);
        return true;
    }

    public static rl OooO0OO() {
        if (OooO0oo == null) {
            OooO0oo = new rl();
        }
        return OooO0oo;
    }

    private boolean OooO0oO(OooO0O0 oooO0O0) {
        OooO0OO oooO0OO = this.OooO0OO;
        return oooO0OO != null && oooO0OO.OooO00o(oooO0O0);
    }

    private boolean OooO0oo(OooO0O0 oooO0O0) {
        OooO0OO oooO0OO = this.OooO0Oo;
        return oooO0OO != null && oooO0OO.OooO00o(oooO0O0);
    }

    private void OooOOO0(OooO0OO oooO0OO) {
        int i = oooO0OO.OooO0O0;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? OooO0o : OooO0oO;
        }
        this.OooO0O0.removeCallbacksAndMessages(oooO0OO);
        Handler handler = this.OooO0O0;
        handler.sendMessageDelayed(Message.obtain(handler, 0, oooO0OO), i);
    }

    private void OooOOOO() {
        OooO0OO oooO0OO = this.OooO0Oo;
        if (oooO0OO != null) {
            this.OooO0OO = oooO0OO;
            this.OooO0Oo = null;
            OooO0O0 oooO0O0 = oooO0OO.OooO00o.get();
            if (oooO0O0 != null) {
                oooO0O0.show();
            } else {
                this.OooO0OO = null;
            }
        }
    }

    public void OooO(OooO0O0 oooO0O0) {
        synchronized (this.OooO00o) {
            if (OooO0oO(oooO0O0)) {
                this.OooO0OO = null;
                if (this.OooO0Oo != null) {
                    OooOOOO();
                }
            }
        }
    }

    public void OooO0O0(OooO0O0 oooO0O0, int i) {
        OooO0OO oooO0OO;
        synchronized (this.OooO00o) {
            if (OooO0oO(oooO0O0)) {
                oooO0OO = this.OooO0OO;
            } else if (OooO0oo(oooO0O0)) {
                oooO0OO = this.OooO0Oo;
            }
            OooO00o(oooO0OO, i);
        }
    }

    public void OooO0Oo(OooO0OO oooO0OO) {
        synchronized (this.OooO00o) {
            if (this.OooO0OO == oooO0OO || this.OooO0Oo == oooO0OO) {
                OooO00o(oooO0OO, 2);
            }
        }
    }

    public boolean OooO0o(OooO0O0 oooO0O0) {
        boolean z;
        synchronized (this.OooO00o) {
            z = OooO0oO(oooO0O0) || OooO0oo(oooO0O0);
        }
        return z;
    }

    public boolean OooO0o0(OooO0O0 oooO0O0) {
        boolean zOooO0oO;
        synchronized (this.OooO00o) {
            zOooO0oO = OooO0oO(oooO0O0);
        }
        return zOooO0oO;
    }

    public void OooOO0(OooO0O0 oooO0O0) {
        synchronized (this.OooO00o) {
            if (OooO0oO(oooO0O0)) {
                OooOOO0(this.OooO0OO);
            }
        }
    }

    public void OooOO0O(OooO0O0 oooO0O0) {
        synchronized (this.OooO00o) {
            if (OooO0oO(oooO0O0)) {
                OooO0OO oooO0OO = this.OooO0OO;
                if (!oooO0OO.OooO0OO) {
                    oooO0OO.OooO0OO = true;
                    this.OooO0O0.removeCallbacksAndMessages(oooO0OO);
                }
            }
        }
    }

    public void OooOO0o(OooO0O0 oooO0O0) {
        synchronized (this.OooO00o) {
            if (OooO0oO(oooO0O0)) {
                OooO0OO oooO0OO = this.OooO0OO;
                if (oooO0OO.OooO0OO) {
                    oooO0OO.OooO0OO = false;
                    OooOOO0(oooO0OO);
                }
            }
        }
    }

    public void OooOOO(int i, OooO0O0 oooO0O0) {
        synchronized (this.OooO00o) {
            if (OooO0oO(oooO0O0)) {
                OooO0OO oooO0OO = this.OooO0OO;
                oooO0OO.OooO0O0 = i;
                this.OooO0O0.removeCallbacksAndMessages(oooO0OO);
                OooOOO0(this.OooO0OO);
                return;
            }
            if (OooO0oo(oooO0O0)) {
                this.OooO0Oo.OooO0O0 = i;
            } else {
                this.OooO0Oo = new OooO0OO(i, oooO0O0);
            }
            OooO0OO oooO0OO2 = this.OooO0OO;
            if (oooO0OO2 == null || !OooO00o(oooO0OO2, 4)) {
                this.OooO0OO = null;
                OooOOOO();
            }
        }
    }
}
