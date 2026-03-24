package com.iflytek.voiceads.download;

import android.app.Activity;
import com.iflytek.voiceads.download.d;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class f implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ d.b b;
    final /* synthetic */ d c;

    f(d dVar, Activity activity, d.b bVar) {
        this.c = dVar;
        this.a = activity;
        this.b = bVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a(this.a, new g(this));
    }
}
