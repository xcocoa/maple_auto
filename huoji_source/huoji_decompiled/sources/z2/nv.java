package z2;

import android.os.Handler;
import android.os.Looper;
import com.cyjh.elfin.ui.activity.SweepCodeActivity;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes2.dex */
public final class nv extends Thread {
    public SweepCodeActivity OoooOoO;
    private Handler OoooOoo;
    private final CountDownLatch Ooooo00 = new CountDownLatch(1);

    public nv(SweepCodeActivity sweepCodeActivity) {
        this.OoooOoO = sweepCodeActivity;
    }

    public Handler OooO00o() {
        try {
            this.Ooooo00.await();
        } catch (InterruptedException unused) {
        }
        return this.OoooOoo;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Looper.prepare();
        this.OoooOoo = new mv(this.OoooOoO);
        this.Ooooo00.countDown();
        Looper.loop();
    }
}
