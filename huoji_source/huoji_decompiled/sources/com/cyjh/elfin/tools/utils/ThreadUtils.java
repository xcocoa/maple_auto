package com.cyjh.elfin.tools.utils;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.anythink.expressad.d.a.b;
import java.lang.Thread;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class ThreadUtils {
    private static final byte OooO = -8;
    private static final byte OooO0o = -1;
    private static final byte OooO0oO = -2;
    private static final byte OooO0oo = -4;
    private static Executor OooOO0;
    private static final Handler OooO00o = new Handler(Looper.getMainLooper());
    private static final Map<Integer, Map<Integer, ExecutorService>> OooO0O0 = new HashMap();
    private static final Map<OooOO0, ExecutorService> OooO0OO = new ConcurrentHashMap();
    private static final int OooO0Oo = Runtime.getRuntime().availableProcessors();
    private static final Timer OooO0o0 = new Timer();

    public static final class LinkedBlockingQueue4Util extends LinkedBlockingQueue<Runnable> {
        private int mCapacity;
        private volatile OooOO0O mPool;

        public LinkedBlockingQueue4Util() {
            this.mCapacity = Integer.MAX_VALUE;
        }

        public LinkedBlockingQueue4Util(int i) {
            this.mCapacity = Integer.MAX_VALUE;
            this.mCapacity = i;
        }

        public LinkedBlockingQueue4Util(boolean z) {
            this.mCapacity = Integer.MAX_VALUE;
            if (z) {
                this.mCapacity = 0;
            }
        }

        @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        public boolean offer(@NonNull Runnable runnable) {
            if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
                return super.offer(runnable);
            }
            return false;
        }
    }

    public static class OooO<T> {
        private CountDownLatch OooO00o = new CountDownLatch(1);
        private AtomicBoolean OooO0O0 = new AtomicBoolean();
        private T OooO0OO;

        public T OooO00o() {
            if (!this.OooO0O0.get()) {
                try {
                    this.OooO00o.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
            return this.OooO0OO;
        }

        public void OooO0O0(T t) {
            if (this.OooO0O0.compareAndSet(false, true)) {
                this.OooO0OO = t;
                this.OooO00o.countDown();
            }
        }
    }

    public class OooO00o extends TimerTask {
        public final /* synthetic */ ExecutorService OoooOoO;
        public final /* synthetic */ OooOO0 OoooOoo;

        public OooO00o(ExecutorService executorService, OooOO0 oooOO0) {
            this.OoooOoO = executorService;
            this.OoooOoo = oooOO0;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.OoooOoO.execute(this.OoooOoo);
        }
    }

    public class OooO0O0 extends TimerTask {
        public final /* synthetic */ ExecutorService OoooOoO;
        public final /* synthetic */ OooOO0 OoooOoo;

        public OooO0O0(ExecutorService executorService, OooOO0 oooOO0) {
            this.OoooOoO = executorService;
            this.OoooOoo = oooOO0;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.OoooOoO.execute(this.OoooOoo);
        }
    }

    public class OooO0OO implements Executor {
        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            ThreadUtils.o00oO0o(runnable);
        }
    }

    public static abstract class OooO0o<T> extends OooOO0<T> {
        @Override // com.cyjh.elfin.tools.utils.ThreadUtils.OooOO0
        public void OooOO0() {
            Log.e("ThreadUtils", "onCancel: " + Thread.currentThread());
        }

        @Override // com.cyjh.elfin.tools.utils.ThreadUtils.OooOO0
        public void OooOO0o(Throwable th) {
            Log.e("ThreadUtils", "onFail: ", th);
        }
    }

    public static abstract class OooOO0<T> implements Runnable {
        private static final int Oooooo = 1;
        private static final int Oooooo0 = 0;
        private static final int OoooooO = 2;
        private static final int Ooooooo = 3;
        private static final int o00O0O = 6;
        private static final int o0OoOo0 = 4;
        private static final int ooOO = 5;
        private final AtomicInteger OoooOoO = new AtomicInteger(0);
        private volatile boolean OoooOoo;
        private volatile Thread Ooooo00;
        private Timer Ooooo0o;
        private long OooooO0;
        private InterfaceC0174OooOO0 OooooOO;
        private Executor OooooOo;

        public class OooO implements Runnable {
            public OooO() {
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOO0.this.OooOO0();
                OooOO0.this.OooOO0O();
            }
        }

        public class OooO00o extends TimerTask {
            public OooO00o() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (OooOO0.this.OooO() || OooOO0.this.OooooOO == null) {
                    return;
                }
                OooOO0.this.OooOOo0();
                OooOO0.this.OooooOO.OooO00o();
            }
        }

        public class OooO0O0 implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO0O0(Object obj) {
                this.OoooOoO = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                OooOO0.this.OooOOO0(this.OoooOoO);
            }
        }

        public class OooO0OO implements Runnable {
            public final /* synthetic */ Object OoooOoO;

            public OooO0OO(Object obj) {
                this.OoooOoO = obj;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                OooOO0.this.OooOOO0(this.OoooOoO);
                OooOO0.this.OooOO0O();
            }
        }

        public class OooO0o implements Runnable {
            public final /* synthetic */ Throwable OoooOoO;

            public OooO0o(Throwable th) {
                this.OoooOoO = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                OooOO0.this.OooOO0o(this.OoooOoO);
                OooOO0.this.OooOO0O();
            }
        }

        /* JADX INFO: renamed from: com.cyjh.elfin.tools.utils.ThreadUtils$OooOO0$OooOO0, reason: collision with other inner class name */
        public interface InterfaceC0174OooOO0 {
            void OooO00o();
        }

        private Executor OooO0oO() {
            Executor executor = this.OooooOo;
            return executor == null ? ThreadUtils.Ooooooo() : executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void OooOOOO(boolean z) {
            this.OoooOoo = z;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void OooOOo0() {
            synchronized (this.OoooOoO) {
                if (this.OoooOoO.get() > 1) {
                    return;
                }
                this.OoooOoO.set(6);
                if (this.Ooooo00 != null) {
                    this.Ooooo00.interrupt();
                }
                OooOO0O();
            }
        }

        public boolean OooO() {
            return this.OoooOoO.get() > 1;
        }

        public void OooO0Oo() {
            OooO0o0(true);
        }

        public abstract T OooO0o() throws Throwable;

        public void OooO0o0(boolean z) {
            synchronized (this.OoooOoO) {
                if (this.OoooOoO.get() > 1) {
                    return;
                }
                this.OoooOoO.set(4);
                if (z && this.Ooooo00 != null) {
                    this.Ooooo00.interrupt();
                }
                OooO0oO().execute(new OooO());
            }
        }

        public boolean OooO0oo() {
            return this.OoooOoO.get() >= 4;
        }

        public abstract void OooOO0();

        @CallSuper
        public void OooOO0O() {
            ThreadUtils.OooO0OO.remove(this);
            Timer timer = this.Ooooo0o;
            if (timer != null) {
                timer.cancel();
                this.Ooooo0o = null;
                this.OooooOO = null;
            }
        }

        public abstract void OooOO0o(Throwable th);

        public OooOO0<T> OooOOO(Executor executor) {
            this.OooooOo = executor;
            return this;
        }

        public abstract void OooOOO0(T t);

        public OooOO0<T> OooOOOo(long j, InterfaceC0174OooOO0 interfaceC0174OooOO0) {
            this.OooooO0 = j;
            this.OooooOO = interfaceC0174OooOO0;
            return this;
        }

        @Override // java.lang.Runnable
        public void run() {
            Executor executorOooO0oO;
            Runnable oooO0OO;
            if (this.OoooOoo) {
                if (this.Ooooo00 == null) {
                    if (!this.OoooOoO.compareAndSet(0, 1)) {
                        return;
                    }
                    this.Ooooo00 = Thread.currentThread();
                    if (this.OooooOO != null) {
                        Log.w("ThreadUtils", "Scheduled task doesn't support timeout.");
                    }
                } else if (this.OoooOoO.get() != 1) {
                    return;
                }
            } else {
                if (!this.OoooOoO.compareAndSet(0, 1)) {
                    return;
                }
                this.Ooooo00 = Thread.currentThread();
                if (this.OooooOO != null) {
                    Timer timer = new Timer();
                    this.Ooooo0o = timer;
                    timer.schedule(new OooO00o(), this.OooooO0);
                }
            }
            try {
                T tOooO0o = OooO0o();
                if (this.OoooOoo) {
                    if (this.OoooOoO.get() != 1) {
                        return;
                    }
                    executorOooO0oO = OooO0oO();
                    oooO0OO = new OooO0O0(tOooO0o);
                } else {
                    if (!this.OoooOoO.compareAndSet(1, 3)) {
                        return;
                    }
                    executorOooO0oO = OooO0oO();
                    oooO0OO = new OooO0OO(tOooO0o);
                }
                executorOooO0oO.execute(oooO0OO);
            } catch (InterruptedException unused) {
                this.OoooOoO.compareAndSet(4, 5);
            } catch (Throwable th) {
                if (this.OoooOoO.compareAndSet(1, 2)) {
                    OooO0oO().execute(new OooO0o(th));
                }
            }
        }
    }

    public static final class OooOO0O extends ThreadPoolExecutor {
        private final AtomicInteger OooO00o;
        private LinkedBlockingQueue4Util OooO0O0;

        public OooOO0O(int i, int i2, long j, TimeUnit timeUnit, LinkedBlockingQueue4Util linkedBlockingQueue4Util, ThreadFactory threadFactory) {
            super(i, i2, j, timeUnit, linkedBlockingQueue4Util, threadFactory);
            this.OooO00o = new AtomicInteger();
            linkedBlockingQueue4Util.mPool = this;
            this.OooO0O0 = linkedBlockingQueue4Util;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static ExecutorService OooO0O0(int i, int i2) {
            if (i == -8) {
                return new OooOO0O(ThreadUtils.OooO0Oo + 1, (ThreadUtils.OooO0Oo * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cpu", i2));
            }
            if (i == -4) {
                return new OooOO0O((ThreadUtils.OooO0Oo * 2) + 1, (ThreadUtils.OooO0Oo * 2) + 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("io", i2));
            }
            if (i == -2) {
                return new OooOO0O(0, 128, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue4Util(true), new UtilsThreadFactory("cached", i2));
            }
            if (i == -1) {
                return new OooOO0O(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("single", i2));
            }
            return new OooOO0O(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue4Util(), new UtilsThreadFactory("fixed(" + i + ")", i2));
        }

        private int OooO0OO() {
            return this.OooO00o.get();
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public void afterExecute(Runnable runnable, Throwable th) {
            this.OooO00o.decrementAndGet();
            super.afterExecute(runnable, th);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            if (isShutdown()) {
                return;
            }
            this.OooO00o.incrementAndGet();
            try {
                super.execute(runnable);
            } catch (RejectedExecutionException unused) {
                Log.e("ThreadUtils", "This will not happen!");
                this.OooO0O0.offer(runnable);
            } catch (Throwable unused2) {
                this.OooO00o.decrementAndGet();
            }
        }
    }

    public static final class UtilsThreadFactory extends AtomicLong implements ThreadFactory {
        private static final AtomicInteger POOL_NUMBER = new AtomicInteger(1);
        private static final long serialVersionUID = -9209200509960368598L;
        private final boolean isDaemon;
        private final String namePrefix;
        private final int priority;

        public class OooO00o extends Thread {
            public OooO00o(Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    super.run();
                } catch (Throwable th) {
                    Log.e("ThreadUtils", "Request threw uncaught throwable", th);
                }
            }
        }

        public class OooO0O0 implements Thread.UncaughtExceptionHandler {
            public OooO0O0() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                System.out.println(th);
            }
        }

        public UtilsThreadFactory(String str, int i) {
            this(str, i, false);
        }

        public UtilsThreadFactory(String str, int i, boolean z) {
            this.namePrefix = str + "-pool-" + POOL_NUMBER.getAndIncrement() + "-thread-";
            this.priority = i;
            this.isDaemon = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(@NonNull Runnable runnable) {
            OooO00o oooO00o = new OooO00o(runnable, this.namePrefix + getAndIncrement());
            oooO00o.setDaemon(this.isDaemon);
            oooO00o.setUncaughtExceptionHandler(new OooO0O0());
            oooO00o.setPriority(this.priority);
            return oooO00o;
        }
    }

    private static <T> void OooO(ExecutorService executorService, OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        Map<OooOO0, ExecutorService> map = OooO0OO;
        synchronized (map) {
            if (map.get(oooOO0) != null) {
                Log.e("ThreadUtils", "Task can only be executed once.");
                return;
            }
            map.put(oooOO0, executorService);
            if (j2 != 0) {
                oooOO0.OooOOOO(true);
                OooO0o0.scheduleAtFixedRate(new OooO0O0(executorService, oooOO0), timeUnit.toMillis(j), timeUnit.toMillis(j2));
            } else if (j == 0) {
                executorService.execute(oooOO0);
            } else {
                OooO0o0.schedule(new OooO00o(executorService, oooOO0), timeUnit.toMillis(j));
            }
        }
    }

    public static void OooO0Oo(OooOO0 oooOO0) {
        if (oooOO0 == null) {
            return;
        }
        oooOO0.OooO0Oo();
    }

    public static void OooO0o(ExecutorService executorService) {
        if (!(executorService instanceof OooOO0O)) {
            Log.e("ThreadUtils", "The executorService is not ThreadUtils's pool.");
            return;
        }
        for (Map.Entry<OooOO0, ExecutorService> entry : OooO0OO.entrySet()) {
            if (entry.getValue() == executorService) {
                OooO0Oo(entry.getKey());
            }
        }
    }

    public static void OooO0o0(List<OooOO0> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        for (OooOO0 oooOO0 : list) {
            if (oooOO0 != null) {
                oooOO0.OooO0Oo();
            }
        }
    }

    public static void OooO0oO(OooOO0... oooOO0Arr) {
        if (oooOO0Arr == null || oooOO0Arr.length == 0) {
            return;
        }
        for (OooOO0 oooOO0 : oooOO0Arr) {
            if (oooOO0 != null) {
                oooOO0.OooO0Oo();
            }
        }
    }

    private static <T> void OooO0oo(ExecutorService executorService, OooOO0<T> oooOO0) {
        OooO(executorService, oooOO0, 0L, 0L, null);
    }

    private static <T> void OooOO0(ExecutorService executorService, OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        OooO(executorService, oooOO0, j, j2, timeUnit);
    }

    public static <T> void OooOO0O(OooOO0<T> oooOO0) {
        OooO0oo(o00Oo0(-2), oooOO0);
    }

    public static <T> void OooOO0o(OooOO0<T> oooOO0, @IntRange(from = 1, to = b.aW) int i) {
        OooO0oo(o00Ooo(-2, i), oooOO0);
    }

    public static <T> void OooOOO(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-2, i), oooOO0, j, j2, timeUnit);
    }

    public static <T> void OooOOO0(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-2), oooOO0, j, j2, timeUnit);
    }

    public static <T> void OooOOOO(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-2), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OooOOOo(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-2, i), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OooOOo(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        Ooooo0o(o00Ooo(-2, i), oooOO0, j, timeUnit);
    }

    public static <T> void OooOOo0(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        Ooooo0o(o00Oo0(-2), oooOO0, j, timeUnit);
    }

    public static <T> void OooOOoo(OooOO0<T> oooOO0) {
        OooO0oo(o00Oo0(-8), oooOO0);
    }

    public static <T> void OooOo(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-8, i), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OooOo0(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-8), oooOO0, j, j2, timeUnit);
    }

    public static <T> void OooOo00(OooOO0<T> oooOO0, @IntRange(from = 1, to = b.aW) int i) {
        OooO0oo(o00Ooo(-8, i), oooOO0);
    }

    public static <T> void OooOo0O(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-8, i), oooOO0, j, j2, timeUnit);
    }

    public static <T> void OooOo0o(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-8), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OooOoO(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        Ooooo0o(o00Ooo(-8, i), oooOO0, j, timeUnit);
    }

    public static <T> void OooOoO0(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        Ooooo0o(o00Oo0(-8), oooOO0, j, timeUnit);
    }

    public static <T> void OooOoOO(ExecutorService executorService, OooOO0<T> oooOO0) {
        OooO0oo(executorService, oooOO0);
    }

    public static <T> void OooOoo(ExecutorService executorService, OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        OooOO0(executorService, oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OooOoo0(ExecutorService executorService, OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        OooOO0(executorService, oooOO0, j, j2, timeUnit);
    }

    public static <T> void OooOooO(ExecutorService executorService, OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        Ooooo0o(executorService, oooOO0, j, timeUnit);
    }

    public static <T> void OooOooo(@IntRange(from = 1) int i, OooOO0<T> oooOO0) {
        OooO0oo(o00Oo0(i), oooOO0);
    }

    public static <T> void Oooo(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-4, i), oooOO0, j, j2, timeUnit);
    }

    public static <T> void Oooo0(@IntRange(from = 1) int i, OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        OooOO0(o00Oo0(i), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void Oooo000(@IntRange(from = 1) int i, OooOO0<T> oooOO0, @IntRange(from = 1, to = b.aW) int i2) {
        OooO0oo(o00Ooo(i, i2), oooOO0);
    }

    public static <T> void Oooo00O(@IntRange(from = 1) int i, OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        OooOO0(o00Oo0(i), oooOO0, j, j2, timeUnit);
    }

    public static <T> void Oooo00o(@IntRange(from = 1) int i, OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i2) {
        OooOO0(o00Ooo(i, i2), oooOO0, j, j2, timeUnit);
    }

    public static <T> void Oooo0O0(@IntRange(from = 1) int i, OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i2) {
        OooOO0(o00Ooo(i, i2), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void Oooo0OO(@IntRange(from = 1) int i, OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        Ooooo0o(o00Oo0(i), oooOO0, j, timeUnit);
    }

    public static <T> void Oooo0o(OooOO0<T> oooOO0) {
        OooO0oo(o00Oo0(-4), oooOO0);
    }

    public static <T> void Oooo0o0(@IntRange(from = 1) int i, OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i2) {
        Ooooo0o(o00Ooo(i, i2), oooOO0, j, timeUnit);
    }

    public static <T> void Oooo0oO(OooOO0<T> oooOO0, @IntRange(from = 1, to = b.aW) int i) {
        OooO0oo(o00Ooo(-4, i), oooOO0);
    }

    public static <T> void Oooo0oo(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-4), oooOO0, j, j2, timeUnit);
    }

    public static <T> void OoooO(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        Ooooo0o(o00Ooo(-4, i), oooOO0, j, timeUnit);
    }

    public static <T> void OoooO0(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-4, i), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OoooO00(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-4), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OoooO0O(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        Ooooo0o(o00Oo0(-4), oooOO0, j, timeUnit);
    }

    public static <T> void OoooOO0(OooOO0<T> oooOO0) {
        OooO0oo(o00Oo0(-1), oooOO0);
    }

    public static <T> void OoooOOO(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-1), oooOO0, j, j2, timeUnit);
    }

    public static <T> void OoooOOo(OooOO0<T> oooOO0, long j, long j2, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-1, i), oooOO0, j, j2, timeUnit);
    }

    public static <T> void OoooOo0(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        OooOO0(o00Oo0(-1), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OoooOoO(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        OooOO0(o00Ooo(-1, i), oooOO0, 0L, j, timeUnit);
    }

    public static <T> void OoooOoo(OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        Ooooo0o(o00Oo0(-1), oooOO0, j, timeUnit);
    }

    public static <T> void Ooooo00(OooOO0<T> oooOO0, long j, TimeUnit timeUnit, @IntRange(from = 1, to = b.aW) int i) {
        Ooooo0o(o00Ooo(-1, i), oooOO0, j, timeUnit);
    }

    private static <T> void Ooooo0o(ExecutorService executorService, OooOO0<T> oooOO0, long j, TimeUnit timeUnit) {
        OooO(executorService, oooOO0, j, 0L, timeUnit);
    }

    public static ExecutorService OooooO0() {
        return o00Oo0(-2);
    }

    public static ExecutorService OooooOO(@IntRange(from = 1, to = b.aW) int i) {
        return o00Ooo(-2, i);
    }

    public static ExecutorService OooooOo() {
        return o00Oo0(-8);
    }

    public static ExecutorService Oooooo(@IntRange(from = 1) int i) {
        return o00Oo0(i);
    }

    public static ExecutorService Oooooo0(@IntRange(from = 1, to = b.aW) int i) {
        return o00Ooo(-8, i);
    }

    public static ExecutorService OoooooO(@IntRange(from = 1) int i, @IntRange(from = 1, to = b.aW) int i2) {
        return o00Ooo(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Executor Ooooooo() {
        if (OooOO0 == null) {
            OooOO0 = new OooO0OO();
        }
        return OooOO0;
    }

    public static <T> void o000oOoO(OooOO0<T> oooOO0, @IntRange(from = 1, to = b.aW) int i) {
        OooO0oo(o00Ooo(-1, i), oooOO0);
    }

    public static Handler o00O0O() {
        return OooO00o;
    }

    private static ExecutorService o00Oo0(int i) {
        return o00Ooo(i, 5);
    }

    private static ExecutorService o00Ooo(int i, int i2) {
        ExecutorService executorServiceOooO0O0;
        Map<Integer, Map<Integer, ExecutorService>> map = OooO0O0;
        synchronized (map) {
            Map<Integer, ExecutorService> map2 = map.get(Integer.valueOf(i));
            if (map2 == null) {
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                executorServiceOooO0O0 = OooOO0O.OooO0O0(i, i2);
                concurrentHashMap.put(Integer.valueOf(i2), executorServiceOooO0O0);
                map.put(Integer.valueOf(i), concurrentHashMap);
            } else {
                executorServiceOooO0O0 = map2.get(Integer.valueOf(i2));
                if (executorServiceOooO0O0 == null) {
                    executorServiceOooO0O0 = OooOO0O.OooO0O0(i, i2);
                    map2.put(Integer.valueOf(i2), executorServiceOooO0O0);
                }
            }
        }
        return executorServiceOooO0O0;
    }

    public static ExecutorService o00o0O() {
        return o00Oo0(-1);
    }

    public static void o00oO0O(Runnable runnable, long j) {
        OooO00o.postDelayed(runnable, j);
    }

    public static void o00oO0o(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            OooO00o.post(runnable);
        }
    }

    public static ExecutorService o00ooo(@IntRange(from = 1, to = b.aW) int i) {
        return o00Ooo(-1, i);
    }

    public static ExecutorService o0OoOo0() {
        return o00Oo0(-4);
    }

    public static void o0ooOO0(Executor executor) {
        OooOO0 = executor;
    }

    public static boolean oo000o() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static ExecutorService ooOO(@IntRange(from = 1, to = b.aW) int i) {
        return o00Ooo(-4, i);
    }
}
