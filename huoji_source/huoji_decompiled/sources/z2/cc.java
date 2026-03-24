package z2;

import android.os.Message;
import com.anythink.core.common.b.h;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public class cc {
    private static String OooO0Oo = "cc";
    public static final int OooO0o = 1000;
    private static cc OooO0o0 = null;
    public static final int OooO0oO = 180000;
    public static final int OooO0oo = 7200000;
    private OooO0O0 OooO00o;
    private Timer OooO0O0;
    private OooO0OO OooO0OO;

    public interface OooO0O0 {
        void OooO00o(Message message);
    }

    public class OooO0OO extends TimerTask {
        private OooO0OO() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            Message message = new Message();
            message.what = 1000;
            if (cc.this.OooO00o != null) {
                cc.this.OooO00o.OooO00o(message);
            }
        }
    }

    private cc() {
    }

    public static cc OooO0O0() {
        if (OooO0o0 == null) {
            synchronized (cc.class) {
                if (OooO0o0 == null) {
                    OooO0o0 = new cc();
                }
            }
        }
        return OooO0o0;
    }

    public cc OooO0OO(OooO0O0 oooO0O0) {
        this.OooO00o = oooO0O0;
        return this;
    }

    public void OooO0Oo() {
        if (this.OooO0O0 == null) {
            this.OooO0O0 = new Timer();
            this.OooO0OO = new OooO0OO();
        }
        this.OooO0O0.schedule(this.OooO0OO, 180000L, h.C0085h.a);
    }

    public void OooO0o0() {
        Timer timer = this.OooO0O0;
        if (timer != null) {
            timer.cancel();
            this.OooO0O0 = null;
        }
    }
}
