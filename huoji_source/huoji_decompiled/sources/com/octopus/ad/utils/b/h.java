package com.octopus.ad.utils.b;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class h {
    private static final AtomicBoolean a = new AtomicBoolean();
    private static volatile h b;
    private static volatile ThreadPoolExecutor c;
    private static volatile ThreadPoolExecutor d;
    private static volatile ThreadPoolExecutor e;
    private static volatile ThreadPoolExecutor f;

    private h() {
        if (a.get()) {
            return;
        }
        a();
    }

    public static void a() {
        AtomicBoolean atomicBoolean = a;
        if (atomicBoolean.get()) {
            return;
        }
        c = j.a();
        d = j.b();
        e = j.c();
        f = j.d();
        atomicBoolean.set(true);
    }

    public static h b() {
        if (b == null) {
            synchronized (h.class) {
                if (b == null) {
                    b = new h();
                }
            }
        }
        return b;
    }

    public ExecutorService c() {
        if (c == null) {
            c = j.a();
        }
        return c;
    }

    public ExecutorService d() {
        if (e == null) {
            e = j.c();
        }
        return e;
    }

    public ExecutorService e() {
        if (f == null) {
            f = j.d();
        }
        return f;
    }
}
