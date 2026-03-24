package com.octopus.ad;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface BannerAdListener {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i);

    void onAdLoaded();

    void onAdShown();

    void onRenderSuccess(View view);
}
