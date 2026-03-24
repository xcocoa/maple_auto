package z2;

import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public final class oO00o000 {
    private final Map<String, OooO00o> OooO00o = new HashMap();
    private final OooO0O0 OooO0O0 = new OooO0O0();

    public static class OooO00o {
        public final Lock OooO00o = new ReentrantLock();
        public int OooO0O0;
    }

    public static class OooO0O0 {
        private static final int OooO0O0 = 10;
        private final Queue<OooO00o> OooO00o = new ArrayDeque();

        public OooO00o OooO00o() {
            OooO00o oooO00oPoll;
            synchronized (this.OooO00o) {
                oooO00oPoll = this.OooO00o.poll();
            }
            return oooO00oPoll == null ? new OooO00o() : oooO00oPoll;
        }

        public void OooO0O0(OooO00o oooO00o) {
            synchronized (this.OooO00o) {
                if (this.OooO00o.size() < 10) {
                    this.OooO00o.offer(oooO00o);
                }
            }
        }
    }

    public void OooO00o(String str) {
        OooO00o OooO00o2;
        synchronized (this) {
            OooO00o2 = this.OooO00o.get(str);
            if (OooO00o2 == null) {
                OooO00o2 = this.OooO0O0.OooO00o();
                this.OooO00o.put(str, OooO00o2);
            }
            OooO00o2.OooO0O0++;
        }
        OooO00o2.OooO00o.lock();
    }

    public void OooO0O0(String str) {
        OooO00o oooO00o;
        synchronized (this) {
            oooO00o = (OooO00o) r2.OooO0Oo(this.OooO00o.get(str));
            int i = oooO00o.OooO0O0;
            if (i < 1) {
                throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + str + ", interestedThreads: " + oooO00o.OooO0O0);
            }
            int i2 = i - 1;
            oooO00o.OooO0O0 = i2;
            if (i2 == 0) {
                OooO00o oooO00oRemove = this.OooO00o.remove(str);
                if (!oooO00oRemove.equals(oooO00o)) {
                    throw new IllegalStateException("Removed the wrong lock, expected to remove: " + oooO00o + ", but actually removed: " + oooO00oRemove + ", safeKey: " + str);
                }
                this.OooO0O0.OooO0O0(oooO00oRemove);
            }
        }
        oooO00o.OooO00o.unlock();
    }
}
