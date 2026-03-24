package com.anythink.expressad.exoplayer.k;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes.dex */
public final class ab implements k {
    private final Handler a;

    public ab(Handler handler) {
        this.a = handler;
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final Looper a() {
        return this.a.getLooper();
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final Message a(int i) {
        return this.a.obtainMessage(i);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final Message a(int i, int i2) {
        return this.a.obtainMessage(i, i2, 0);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final Message a(int i, int i2, Object obj) {
        return this.a.obtainMessage(0, i, i2, obj);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final Message a(int i, Object obj) {
        return this.a.obtainMessage(i, obj);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final void a(Object obj) {
        this.a.removeCallbacksAndMessages(obj);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final boolean a(long j) {
        return this.a.sendEmptyMessageAtTime(2, j);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final boolean a(Runnable runnable) {
        return this.a.post(runnable);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final boolean a(Runnable runnable, long j) {
        return this.a.postDelayed(runnable, j);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final void b() {
        this.a.removeMessages(2);
    }

    @Override // com.anythink.expressad.exoplayer.k.k
    public final boolean b(int i) {
        return this.a.sendEmptyMessage(i);
    }
}
