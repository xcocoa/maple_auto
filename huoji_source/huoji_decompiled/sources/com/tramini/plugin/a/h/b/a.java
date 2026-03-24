package com.tramini.plugin.a.h.b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    private static a a;
    private final ExecutorService b = new ThreadPoolExecutor(0, 50, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.tramini.plugin.a.h.b.a.1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("tramini_plugin");
            return threadNewThread;
        }
    });

    public static a a() {
        if (a == null) {
            a = new a();
        }
        return a;
    }

    public final void a(b bVar) {
        ExecutorService executorService = this.b;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.b.execute(bVar);
    }

    public final void a(Runnable runnable) {
        a(runnable, 0L);
    }

    public final void a(final Runnable runnable, final long j) {
        if (runnable != null) {
            b bVar = new b() { // from class: com.tramini.plugin.a.h.b.a.2
                @Override // com.tramini.plugin.a.h.b.b
                public final void a() {
                    try {
                        long j2 = j;
                        if (j2 > 0) {
                            Thread.sleep(j2);
                        }
                    } catch (InterruptedException unused) {
                    }
                    runnable.run();
                }
            };
            bVar.a(Long.valueOf(System.currentTimeMillis() / 1000).intValue());
            a(bVar);
        }
    }
}
