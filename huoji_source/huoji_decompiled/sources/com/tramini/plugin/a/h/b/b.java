package com.tramini.plugin.a.h.b;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements Runnable {
    private int a = 0;
    public c d;

    private int b() {
        return this.a;
    }

    public abstract void a();

    public final void a(int i) {
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        a();
    }
}
