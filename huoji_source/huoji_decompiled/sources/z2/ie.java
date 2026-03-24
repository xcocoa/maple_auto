package z2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.cyjh.mobileanjian.ipc.utils.RootUtil;
import com.cyjh.mq.sdk.MqRunner;

/* JADX INFO: loaded from: classes.dex */
public final class ie {
    private static ie OooO = null;
    public static final int OooO0oO = 1;
    public static final int OooO0oo = 2;
    private static final String OooOO0 = "3rd.need.or.not.m";
    private int OooO0o;
    private boolean OooO0O0 = false;
    private boolean OooO0OO = false;
    private boolean OooO0Oo = false;
    private boolean OooO0o0 = false;
    private Handler OooO00o = new OooO00o(Looper.getMainLooper());

    public class OooO00o extends Handler {
        public OooO00o(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (ag.OooO0oo() != null) {
                ag.OooO0oo().onRootProgress((String) message.obj, message.what);
            }
        }
    }

    private ie() {
    }

    private static synchronized ie OooO00o() {
        if (OooO == null) {
            OooO = new ie();
        }
        return OooO;
    }

    private void OooO0O0(int i) {
        this.OooO0o = i;
    }

    private boolean OooO0OO() {
        return this.OooO0o0 && this.OooO0Oo;
    }

    private void OooO0Oo() {
        if (this.OooO0OO) {
            return;
        }
        this.OooO0OO = true;
        if (RootUtil.isRoot()) {
            je.OooO00o().OooO0o(MqRunner.getInstance());
        } else {
            this.OooO00o.obtainMessage(4, "User refused root.").sendToTarget();
        }
        this.OooO0OO = false;
    }
}
