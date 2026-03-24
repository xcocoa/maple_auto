package z2;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public class oO0Oo0oo {
    private boolean OooO00o;
    private final Handler OooO0O0 = new Handler(Looper.getMainLooper(), new OooO00o());

    public static final class OooO00o implements Handler.Callback {
        public static final int OoooOoO = 1;

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((oO0Ooooo) message.obj).recycle();
            return true;
        }
    }

    public synchronized void OooO00o(oO0Ooooo<?> oo0ooooo) {
        if (this.OooO00o) {
            this.OooO0O0.obtainMessage(1, oo0ooooo).sendToTarget();
        } else {
            this.OooO00o = true;
            oo0ooooo.recycle();
            this.OooO00o = false;
        }
    }
}
