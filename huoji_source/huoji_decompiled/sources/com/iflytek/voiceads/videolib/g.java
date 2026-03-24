package com.iflytek.voiceads.videolib;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class g implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ d b;

    g(d dVar, int i) {
        this.b = dVar;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (o.c() != null) {
            o.c().d(this.a);
        }
    }
}
