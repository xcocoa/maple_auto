package com.iflytek.voiceads.videolib;

import com.iflytek.voiceads.videolib.JZPlayer;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class m implements Runnable {
    final /* synthetic */ JZPlayer.a a;

    m(JZPlayer.a aVar) {
        this.a = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        long jE = JZPlayer.this.E();
        long jF = JZPlayer.this.F();
        JZPlayer.this.a((int) ((jE * 100) / (jF == 0 ? 1L : jF)), jE, jF);
    }
}
