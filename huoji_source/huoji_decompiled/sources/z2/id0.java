package z2;

import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public final class id0 extends ScheduledThreadPoolExecutor {

    public static final class OooO0O0 {
        private static final id0 OooO00o = new id0();

        private OooO0O0() {
        }
    }

    private id0() {
        super(1, new ThreadPoolExecutor.DiscardPolicy());
    }

    public static id0 OooO00o() {
        return OooO0O0.OooO00o;
    }
}
