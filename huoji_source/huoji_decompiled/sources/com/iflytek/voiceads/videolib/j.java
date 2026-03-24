package com.iflytek.voiceads.videolib;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class j implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ d b;

    j(d dVar, int i) {
        this.b = dVar;
        this.a = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (o.c() == null || this.a != 3) {
            return;
        }
        o.c().l();
    }
}
