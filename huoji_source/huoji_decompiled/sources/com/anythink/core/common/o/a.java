package com.anythink.core.common.o;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private boolean a;
    private final com.anythink.core.common.m.a b = com.anythink.core.common.m.d.a();
    private final com.anythink.core.common.m.b c = new com.anythink.core.common.m.b() { // from class: com.anythink.core.common.o.a.1
        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this) {
                if (!a.this.a) {
                    a.b(a.this);
                    a.this.b();
                }
            }
        }
    };

    public static /* synthetic */ boolean b(a aVar) {
        aVar.a = true;
        return true;
    }

    private boolean c() {
        return this.a;
    }

    public final synchronized void a() {
        this.b.b(this.c);
    }

    public final synchronized void a(long j) {
        this.b.a(this.c, j, false);
    }

    public abstract void b();
}
