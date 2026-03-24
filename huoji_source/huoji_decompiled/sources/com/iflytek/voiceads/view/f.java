package com.iflytek.voiceads.view;

import android.view.View;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
class f implements View.OnClickListener {
    final /* synthetic */ InterstitialAdView a;

    f(InterstitialAdView interstitialAdView) {
        this.a = interstitialAdView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.k.onAdDestroy();
        this.a.j.onAdClose();
    }
}
