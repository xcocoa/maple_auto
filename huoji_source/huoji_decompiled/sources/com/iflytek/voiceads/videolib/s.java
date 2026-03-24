package com.iflytek.voiceads.videolib;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class s implements Runnable {
    final /* synthetic */ JZVPStandard a;

    s(JZVPStandard jZVPStandard) {
        this.a = jZVPStandard;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.s.setVisibility(4);
        this.a.m.setVisibility(4);
    }
}
