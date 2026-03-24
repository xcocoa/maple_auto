package com.anythink.core.common.o.b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static final int a = 1;
    public static final int b = 2;
    public static final int c = 3;
    public static final int d = 4;
    public static final int e = 5;
    public static final int f = 6;
    public static final int g = 7;
    public static final int h = 8;
    public static final int i = 9;
    public static final int j = 10;
    public static final int k = 11;
    public static final int l = 12;
    public static final int m = 13;
    public static final int n = 14;
    public static final int o = 15;
    public static final int p = 16;
    private static volatile b q;
    private final a r = new a();

    private b() {
    }

    public static b a() {
        if (q == null) {
            synchronized (b.class) {
                if (q == null) {
                    q = new b();
                }
            }
        }
        return q;
    }

    private void a(final Runnable runnable, final long j2, int i2) {
        if (runnable != null) {
            d dVar = new d() { // from class: com.anythink.core.common.o.b.b.1
                @Override // com.anythink.core.common.o.b.d
                public final void a() {
                    long j3 = j2;
                    if (j3 > 0) {
                        try {
                            Thread.sleep(j3);
                        } catch (InterruptedException unused) {
                        }
                    }
                    new StringBuilder("thread-").append(b());
                    runnable.run();
                }
            };
            dVar.a(Long.valueOf(System.currentTimeMillis() / 1000).intValue());
            a(dVar, i2);
        }
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    private static void c() {
    }

    private void d(Runnable runnable) {
        a(runnable, 13);
    }

    public final Handler a(int i2) {
        return this.r.a(i2);
    }

    public final void a(d dVar, int i2) {
        try {
            this.r.a(dVar, i2);
        } catch (Throwable unused) {
        }
    }

    public final void a(Runnable runnable) {
        a(runnable, 2, true);
    }

    public final void a(Runnable runnable, int i2) {
        if (b()) {
            a(runnable, i2, true);
        } else {
            runnable.run();
        }
    }

    public final void a(Runnable runnable, int i2, boolean z) {
        if (z) {
            a(runnable, 0L, i2);
        } else if (b()) {
            a(runnable, 0L, i2);
        } else {
            runnable.run();
        }
    }

    public final void a(Runnable runnable, long j2) {
        a(runnable, j2, 2);
    }

    public final void b(Runnable runnable) {
        a(runnable, 13, true);
    }

    public final void c(final Runnable runnable) {
        if (TextUtils.equals(Thread.currentThread().getName(), a.b(6))) {
            runnable.run();
        } else if (runnable != null) {
            d dVar = new d() { // from class: com.anythink.core.common.o.b.b.2
                @Override // com.anythink.core.common.o.b.d
                public final void a() {
                    runnable.run();
                }
            };
            dVar.a(Long.valueOf(System.currentTimeMillis() / 1000).intValue());
            a(dVar, 6);
        }
    }
}
