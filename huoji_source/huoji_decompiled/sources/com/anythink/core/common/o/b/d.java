package com.anythink.core.common.o.b;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements Runnable {
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = 3;
    public e h;
    public boolean g = true;
    public int i = 1;
    private long a = 0;
    private String b = "anythink_default_thread";

    private void a(e eVar) {
        this.h = eVar;
    }

    private String c() {
        return this.b;
    }

    public abstract void a();

    public final void a(long j) {
        this.a = j;
    }

    public final void a(String str) {
        this.b = str;
    }

    public final long b() {
        return this.a;
    }

    @Override // java.lang.Runnable
    public void run() {
        Thread.currentThread().setName(this.b);
        a();
    }
}
