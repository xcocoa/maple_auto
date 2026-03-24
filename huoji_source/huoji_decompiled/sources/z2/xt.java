package z2;

import com.hlzn.socketclient.service.SocketService;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes2.dex */
public class xt extends Timer {
    public static final String OooO0o0 = xt.class.getSimpleName();
    private String OooO00o;
    private int OooO0O0;
    private OooO0O0 OooO0OO;
    private SocketService OooO0Oo;

    public class OooO0O0 extends TimerTask {
        private OooO0O0() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (xt.this.OooO0Oo.Oooo000()) {
                if (xt.this.OooO0Oo.OooOoo0() != null) {
                    xt.this.OooO0Oo.OooOoo0().OooO0O0(xt.this.OooO00o);
                    return;
                }
                return;
            }
            xt.OooO0o0(xt.this);
            if (xt.this.OooO0O0 > xt.this.OooO0Oo.OooOoo()) {
                try {
                    xt.this.OooO0Oo.OooOoo0().OooO0O0(String.valueOf(xt.this.OooO00o));
                } finally {
                    xt.this.OooO0Oo.Oooo0O0();
                    xt.this.OooO0O0 = 0;
                }
            }
        }
    }

    public xt(SocketService socketService, String str) {
        this.OooO0Oo = socketService;
        this.OooO00o = str;
        OooO0O0 oooO0O0 = new OooO0O0();
        this.OooO0OO = oooO0O0;
        schedule(oooO0O0, 1000L, com.anythink.expressad.exoplayer.f.a);
    }

    public static /* synthetic */ int OooO0o0(xt xtVar) {
        int i = xtVar.OooO0O0;
        xtVar.OooO0O0 = i + 1;
        return i;
    }
}
