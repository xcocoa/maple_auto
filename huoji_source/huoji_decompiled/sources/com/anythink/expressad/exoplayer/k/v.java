package com.anythink.expressad.exoplayer.k;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    private final Object a = new Object();
    private final PriorityQueue<Integer> b = new PriorityQueue<>(10, Collections.reverseOrder());
    private int c = Integer.MIN_VALUE;

    public static class a extends IOException {
        public a(int i, int i2) {
            super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
        }
    }

    private boolean b(int i) {
        boolean z;
        synchronized (this.a) {
            z = this.c == i;
        }
        return z;
    }

    public final void a() {
        synchronized (this.a) {
            this.b.add(0);
            this.c = Math.max(this.c, 0);
        }
    }

    public final void a(int i) {
        synchronized (this.a) {
            if (this.c != i) {
                throw new a(i, this.c);
            }
        }
    }

    public final void b() {
        synchronized (this.a) {
            while (this.c != 0) {
                this.a.wait();
            }
        }
    }

    public final void c() {
        synchronized (this.a) {
            this.b.remove(0);
            this.c = this.b.isEmpty() ? Integer.MIN_VALUE : this.b.peek().intValue();
            this.a.notifyAll();
        }
    }
}
