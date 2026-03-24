package com.iflytek.voiceads.download;

import android.app.Activity;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class h implements Runnable {
    final /* synthetic */ Activity a;
    final /* synthetic */ String b;
    final /* synthetic */ d c;

    h(d dVar, Activity activity, String str) {
        this.c = dVar;
        this.a = activity;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.c.a(this.a, new i(this));
    }
}
