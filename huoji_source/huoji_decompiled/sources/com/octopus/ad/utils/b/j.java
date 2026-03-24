package com.octopus.ad.utils.b;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class j {
    private static final int a;
    private static final int b;
    private static final LinkedBlockingQueue<Runnable> c;
    private static final LinkedBlockingQueue<Runnable> d;
    private static final ArrayBlockingQueue<Runnable> e;
    private static final LinkedBlockingQueue<Runnable> f;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        a = iAvailableProcessors;
        b = Math.max((iAvailableProcessors / 2) + 1, 4);
        c = new LinkedBlockingQueue<>();
        d = new LinkedBlockingQueue<>();
        e = new ArrayBlockingQueue<>(50);
        f = new LinkedBlockingQueue<>();
    }

    public static ThreadPoolExecutor a() {
        return new ThreadPoolExecutor(2, b, 5L, TimeUnit.SECONDS, c, new i(5, "Octopus-adsdk-adrequest-thread-"), e());
    }

    public static ThreadPoolExecutor b() {
        return new ThreadPoolExecutor(0, 2, 5L, TimeUnit.SECONDS, d, new i(5, "Octopus-adsdk-heartbeat-thread-"), e());
    }

    public static ThreadPoolExecutor c() {
        return new ThreadPoolExecutor(2, 6, 20L, TimeUnit.SECONDS, e, new i(5, "Octopus-adsdk-file-log-upload-thread-"), e());
    }

    public static ThreadPoolExecutor d() {
        return new ThreadPoolExecutor(2, b, 20L, TimeUnit.SECONDS, f, new i(5, "afIt-"), e());
    }

    public static RejectedExecutionHandler e() {
        return new RejectedExecutionHandler() { // from class: com.octopus.ad.utils.b.j.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }
}
