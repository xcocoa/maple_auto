package com.iflytek.voiceads.videolib;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class i implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ d c;

    i(d dVar, int i, int i2) {
        this.c = dVar;
        this.a = i;
        this.b = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (o.c() != null) {
            o.c().a(this.a, this.b);
        }
    }
}
