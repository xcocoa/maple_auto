package com.anythink.expressad.exoplayer.k;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    private boolean a;

    private synchronized boolean a(long j) {
        boolean z;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = j + jElapsedRealtime;
        while (true) {
            z = this.a;
            if (z || jElapsedRealtime >= j2) {
                break;
            }
            wait(j2 - jElapsedRealtime);
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        return z;
    }

    public final synchronized boolean a() {
        if (this.a) {
            return false;
        }
        this.a = true;
        notifyAll();
        return true;
    }

    public final synchronized boolean b() {
        boolean z;
        z = this.a;
        this.a = false;
        return z;
    }

    public final synchronized void c() {
        while (!this.a) {
            wait();
        }
    }
}
