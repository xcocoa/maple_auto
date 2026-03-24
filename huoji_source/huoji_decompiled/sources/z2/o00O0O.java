package z2;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import com.android.volley.Request;
import com.android.volley.VolleyError;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class o00O0O extends Thread {
    private final BlockingQueue<Request<?>> OoooOoO;
    private final o0OoOo0 OoooOoo;
    private final OooOo Ooooo00;
    private final o00oO0o Ooooo0o;
    private volatile boolean OooooO0 = false;

    public o00O0O(BlockingQueue<Request<?>> blockingQueue, o0OoOo0 o0oooo0, OooOo oooOo, o00oO0o o00oo0o) {
        this.OoooOoO = blockingQueue;
        this.OoooOoo = o0oooo0;
        this.Ooooo00 = oooOo;
        this.Ooooo0o = o00oo0o;
    }

    @TargetApi(14)
    private void OooO00o(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.OooOoo0());
        }
    }

    private void OooO0O0(Request<?> request, VolleyError volleyError) {
        this.Ooooo0o.OooO0OO(request, request.Oooo00O(volleyError));
    }

    public void OooO0OO() {
        this.OooooO0 = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Request<?> requestTake;
        String str;
        Process.setThreadPriority(10);
        while (true) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            try {
                requestTake = this.OoooOoO.take();
                try {
                    requestTake.OooO0O0("network-queue-take");
                } catch (VolleyError e) {
                    e.setNetworkTimeMs(SystemClock.elapsedRealtime() - jElapsedRealtime);
                    OooO0O0(requestTake, e);
                } catch (Exception e2) {
                    o0OOO0o.OooO0Oo(e2, "Unhandled exception %s", e2.toString());
                    VolleyError volleyError = new VolleyError(e2);
                    volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - jElapsedRealtime);
                    this.Ooooo0o.OooO0OO(requestTake, volleyError);
                }
            } catch (InterruptedException unused) {
                if (this.OooooO0) {
                    return;
                }
            }
            if (requestTake.OooOooo()) {
                str = "network-discard-cancelled";
            } else {
                OooO00o(requestTake);
                o00Oo0 o00oo0OooO00o = this.OoooOoo.OooO00o(requestTake);
                requestTake.OooO0O0("network-http-complete");
                if (o00oo0OooO00o.OooO0Oo && requestTake.OooOooO()) {
                    str = "not-modified";
                } else {
                    oo000o<?> oo000oVarOooo00o = requestTake.Oooo00o(o00oo0OooO00o);
                    requestTake.OooO0O0("network-parse-complete");
                    if (requestTake.Oooo0oo() && oo000oVarOooo00o.OooO0O0 != null) {
                        this.Ooooo00.OooO0OO(requestTake.OooOOO0(), oo000oVarOooo00o.OooO0O0);
                        requestTake.OooO0O0("network-cache-written");
                    }
                    requestTake.Oooo000();
                    this.Ooooo0o.OooO00o(requestTake, oo000oVarOooo00o);
                }
            }
            requestTake.OooO(str);
        }
    }
}
