package z2;

import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import z2.oO0000Oo;

/* JADX INFO: loaded from: classes.dex */
public final class o0OOO0 {
    private final boolean OooO00o;
    private final Executor OooO0O0;

    @VisibleForTesting
    public final Map<o0O0O0Oo, OooO0o> OooO0OO;
    private final ReferenceQueue<oO0000Oo<?>> OooO0Oo;
    private volatile boolean OooO0o;
    private oO0000Oo.OooO00o OooO0o0;

    @Nullable
    private volatile OooO0OO OooO0oO;

    public class OooO00o implements ThreadFactory {

        /* JADX INFO: renamed from: z2.o0OOO0$OooO00o$OooO00o, reason: collision with other inner class name */
        public class RunnableC0253OooO00o implements Runnable {
            public final /* synthetic */ Runnable OoooOoO;

            public RunnableC0253OooO00o(Runnable runnable) {
                this.OoooOoO = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                this.OoooOoO.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            return new Thread(new RunnableC0253OooO00o(runnable), "glide-active-resources");
        }
    }

    public class OooO0O0 implements Runnable {
        public OooO0O0() {
        }

        @Override // java.lang.Runnable
        public void run() {
            o0OOO0.this.OooO0O0();
        }
    }

    @VisibleForTesting
    public interface OooO0OO {
        void OooO00o();
    }

    @VisibleForTesting
    public static final class OooO0o extends WeakReference<oO0000Oo<?>> {
        public final o0O0O0Oo OooO00o;
        public final boolean OooO0O0;

        @Nullable
        public oO0Ooooo<?> OooO0OO;

        public OooO0o(@NonNull o0O0O0Oo o0o0o0oo, @NonNull oO0000Oo<?> oo0000oo, @NonNull ReferenceQueue<? super oO0000Oo<?>> referenceQueue, boolean z) {
            super(oo0000oo, referenceQueue);
            this.OooO00o = (o0O0O0Oo) r2.OooO0Oo(o0o0o0oo);
            this.OooO0OO = (oo0000oo.OooO0Oo() && z) ? (oO0Ooooo) r2.OooO0Oo(oo0000oo.OooO0OO()) : null;
            this.OooO0O0 = oo0000oo.OooO0Oo();
        }

        public void OooO00o() {
            this.OooO0OO = null;
            clear();
        }
    }

    public o0OOO0(boolean z) {
        this(z, Executors.newSingleThreadExecutor(new OooO00o()));
    }

    @VisibleForTesting
    public o0OOO0(boolean z, Executor executor) {
        this.OooO0OO = new HashMap();
        this.OooO0Oo = new ReferenceQueue<>();
        this.OooO00o = z;
        this.OooO0O0 = executor;
        executor.execute(new OooO0O0());
    }

    public synchronized void OooO00o(o0O0O0Oo o0o0o0oo, oO0000Oo<?> oo0000oo) {
        OooO0o oooO0oPut = this.OooO0OO.put(o0o0o0oo, new OooO0o(o0o0o0oo, oo0000oo, this.OooO0Oo, this.OooO00o));
        if (oooO0oPut != null) {
            oooO0oPut.OooO00o();
        }
    }

    public void OooO0O0() {
        while (!this.OooO0o) {
            try {
                OooO0OO((OooO0o) this.OooO0Oo.remove());
                OooO0OO oooO0OO = this.OooO0oO;
                if (oooO0OO != null) {
                    oooO0OO.OooO00o();
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public void OooO0OO(@NonNull OooO0o oooO0o) {
        oO0Ooooo<?> oo0ooooo;
        synchronized (this.OooO0o0) {
            synchronized (this) {
                this.OooO0OO.remove(oooO0o.OooO00o);
                if (oooO0o.OooO0O0 && (oo0ooooo = oooO0o.OooO0OO) != null) {
                    oO0000Oo<?> oo0000oo = new oO0000Oo<>(oo0ooooo, true, false);
                    oo0000oo.OooO0o(oooO0o.OooO00o, this.OooO0o0);
                    this.OooO0o0.OooO0Oo(oooO0o.OooO00o, oo0000oo);
                }
            }
        }
    }

    public synchronized void OooO0Oo(o0O0O0Oo o0o0o0oo) {
        OooO0o oooO0oRemove = this.OooO0OO.remove(o0o0o0oo);
        if (oooO0oRemove != null) {
            oooO0oRemove.OooO00o();
        }
    }

    @VisibleForTesting
    public void OooO0o(OooO0OO oooO0OO) {
        this.OooO0oO = oooO0OO;
    }

    @Nullable
    public synchronized oO0000Oo<?> OooO0o0(o0O0O0Oo o0o0o0oo) {
        OooO0o oooO0o = this.OooO0OO.get(o0o0o0oo);
        if (oooO0o == null) {
            return null;
        }
        oO0000Oo<?> oo0000oo = oooO0o.get();
        if (oo0000oo == null) {
            OooO0OO(oooO0o);
        }
        return oo0000oo;
    }

    public void OooO0oO(oO0000Oo.OooO00o oooO00o) {
        synchronized (oooO00o) {
            synchronized (this) {
                this.OooO0o0 = oooO00o;
            }
        }
    }

    @VisibleForTesting
    public void OooO0oo() {
        this.OooO0o = true;
        Executor executor = this.OooO0O0;
        if (executor instanceof ExecutorService) {
            l2.OooO0OO((ExecutorService) executor);
        }
    }
}
