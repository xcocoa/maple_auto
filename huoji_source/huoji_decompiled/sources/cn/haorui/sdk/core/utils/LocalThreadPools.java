package cn.haorui.sdk.core.utils;

import android.os.Build;
import com.octopus.ad.ADBidEvent;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class LocalThreadPools {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    private static final int KEEP_ALIVE_SECONDS = 10;
    private static final int MAXIMUM_POOL_SIZE;
    private static ExecutorService THREAD_POOL_EXECUTOR;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;

    public class b implements RejectedExecutionHandler {
        public b(LocalThreadPools localThreadPools) {
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
        }
    }

    public static class c {
        public static LocalThreadPools a = new LocalThreadPools();
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        CORE_POOL_SIZE = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        MAXIMUM_POOL_SIZE = ADBidEvent.HUAWEI.equalsIgnoreCase(Build.MANUFACTURER) ? 15 : (iAvailableProcessors * 3) + 1;
        sPoolWorkQueue = new LinkedBlockingQueue(8);
    }

    private LocalThreadPools() {
        initThreadPool();
    }

    public static LocalThreadPools getInstance() {
        return c.a;
    }

    private void initThreadPool() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 10L, TimeUnit.SECONDS, sPoolWorkQueue, new b(this));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        THREAD_POOL_EXECUTOR = threadPoolExecutor;
    }

    public void execute(Runnable runnable) {
        THREAD_POOL_EXECUTOR.execute(runnable);
    }
}
