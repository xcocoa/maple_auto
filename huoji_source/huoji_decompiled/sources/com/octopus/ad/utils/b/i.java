package com.octopus.ad.utils.b;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class i implements ThreadFactory {
    private static final AtomicInteger a = new AtomicInteger(1);
    private final ThreadGroup b;
    private final AtomicInteger c = new AtomicInteger(1);
    private final String d;
    private final int e;

    public i(int i, String str) {
        StringBuilder sb;
        this.e = i;
        SecurityManager securityManager = System.getSecurityManager();
        this.b = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
        if (TextUtils.isEmpty(str)) {
            sb = new StringBuilder();
            str = "Octopus-adsdk-background-";
        } else {
            sb = new StringBuilder();
        }
        sb.append(str);
        sb.append(a.getAndIncrement());
        sb.append("-thread-");
        this.d = sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0031 A[PHI: r0
      0x0031: PHI (r0v4 int) = (r0v2 int), (r0v3 int) binds: [B:6:0x002f, B:9:0x003a] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // java.util.concurrent.ThreadFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.b, runnable, this.d + this.c.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        int i = 1;
        if (this.e == 1) {
            thread.setPriority(i);
        } else {
            i = 5;
            if (thread.getPriority() != 5) {
                thread.setPriority(3);
            }
        }
        return thread;
    }
}
