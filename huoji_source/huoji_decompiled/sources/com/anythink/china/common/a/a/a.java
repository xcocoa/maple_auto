package com.anythink.china.common.a.a;

import com.anythink.core.common.o.b.d;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int a = 1;
    public static final int b = 2;
    private static a c;
    private ExecutorService d;

    /* JADX INFO: renamed from: com.anythink.china.common.a.a.a$1, reason: invalid class name */
    public class AnonymousClass1 extends d {
        public final /* synthetic */ long a = 0;
        public final /* synthetic */ Runnable b;

        public AnonymousClass1(Runnable runnable) {
            this.b = runnable;
        }

        @Override // com.anythink.core.common.o.b.d
        public final void a() {
            try {
                Thread.sleep(this.a);
            } catch (InterruptedException unused) {
            }
            new StringBuilder("thread-").append(b());
            this.b.run();
        }
    }

    public a() {
        this.d = null;
        this.d = Executors.newSingleThreadExecutor();
    }

    public static a a() {
        if (c == null) {
            c = new a();
        }
        return c;
    }

    private static void a(a aVar) {
        c = aVar;
    }

    private void a(Runnable runnable) {
        if (runnable != null) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(runnable);
            anonymousClass1.a(Long.valueOf(System.currentTimeMillis() / 1000).intValue());
            a((d) anonymousClass1);
        }
    }

    private void b() {
        this.d.shutdown();
    }

    private void b(d dVar) {
        a(dVar);
    }

    private void b(Runnable runnable) {
        if (runnable != null) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(runnable);
            anonymousClass1.a(Long.valueOf(System.currentTimeMillis() / 1000).intValue());
            a((d) anonymousClass1);
        }
    }

    public final void a(d dVar) {
        this.d.execute(dVar);
    }
}
