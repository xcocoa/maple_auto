package z2;

import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes.dex */
public abstract class m3 extends CountDownTimer {
    private final int OooO00o;
    private Handler OooO0O0;

    public class OooO00o implements Runnable {
        public OooO00o() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m3 m3Var = m3.this;
            m3Var.OooO0O0(m3Var.OooO00o);
        }
    }

    public m3(int i, int i2) {
        super(i * 1000, i2 * 1000);
        this.OooO0O0 = new Handler(Looper.getMainLooper());
        this.OooO00o = i2;
    }

    public abstract void OooO0O0(int i);

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        int iRound = Math.round((j * 1.0f) / 1000.0f);
        if (iRound == this.OooO00o * 2) {
            this.OooO0O0.postDelayed(new OooO00o(), this.OooO00o * 1000);
        }
        OooO0O0(iRound);
    }
}
