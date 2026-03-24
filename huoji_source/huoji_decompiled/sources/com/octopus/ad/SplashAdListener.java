package com.octopus.ad;

/* JADX INFO: loaded from: classes2.dex */
public interface SplashAdListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i);

    void onAdLoaded();

    void onAdShown();

    void onAdTick(long j);
}
