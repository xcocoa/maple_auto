package z2;

import android.os.Process;
import com.android.volley.Request;
import java.util.concurrent.BlockingQueue;
import z2.OooOo;

/* JADX INFO: loaded from: classes.dex */
public class Oooo000 extends Thread {
    private static final boolean OooooOO = o0OOO0o.OooO0O0;
    private final BlockingQueue<Request<?>> OoooOoO;
    private final BlockingQueue<Request<?>> OoooOoo;
    private final OooOo Ooooo00;
    private final o00oO0o Ooooo0o;
    private volatile boolean OooooO0 = false;

    public class OooO00o implements Runnable {
        public final /* synthetic */ Request OoooOoO;

        public OooO00o(Request request) {
            this.OoooOoO = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Oooo000.this.OoooOoo.put(this.OoooOoO);
            } catch (InterruptedException unused) {
            }
        }
    }

    public Oooo000(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, OooOo oooOo, o00oO0o o00oo0o) {
        this.OoooOoO = blockingQueue;
        this.OoooOoo = blockingQueue2;
        this.Ooooo00 = oooOo;
        this.Ooooo0o = o00oo0o;
    }

    public void OooO0O0() {
        this.OooooO0 = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        BlockingQueue<Request<?>> blockingQueue;
        if (OooooOO) {
            o0OOO0o.OooO0o("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.Ooooo00.OooO00o();
        while (true) {
            try {
                Request<?> requestTake = this.OoooOoO.take();
                requestTake.OooO0O0("cache-queue-take");
                if (requestTake.OooOooo()) {
                    requestTake.OooO("cache-discard-canceled");
                } else {
                    OooOo.OooO00o oooO00o = this.Ooooo00.get(requestTake.OooOOO0());
                    if (oooO00o == null) {
                        requestTake.OooO0O0("cache-miss");
                        blockingQueue = this.OoooOoo;
                    } else if (oooO00o.OooO00o()) {
                        requestTake.OooO0O0("cache-hit-expired");
                        requestTake.Oooo0(oooO00o);
                        blockingQueue = this.OoooOoo;
                    } else {
                        requestTake.OooO0O0("cache-hit");
                        oo000o<?> oo000oVarOooo00o = requestTake.Oooo00o(new o00Oo0(oooO00o.OooO00o, oooO00o.OooO0oO));
                        requestTake.OooO0O0("cache-hit-parsed");
                        if (oooO00o.OooO0O0()) {
                            requestTake.OooO0O0("cache-hit-refresh-needed");
                            requestTake.Oooo0(oooO00o);
                            oo000oVarOooo00o.OooO0Oo = true;
                            this.Ooooo0o.OooO0O0(requestTake, oo000oVarOooo00o, new OooO00o(requestTake));
                        } else {
                            this.Ooooo0o.OooO00o(requestTake, oo000oVarOooo00o);
                        }
                    }
                    blockingQueue.put(requestTake);
                }
            } catch (InterruptedException unused) {
                if (this.OooooO0) {
                    return;
                }
            }
        }
    }
}
