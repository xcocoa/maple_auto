package com.anythink.interstitial.api;

import com.anythink.core.api.AdError;

/* JADX INFO: loaded from: classes.dex */
public interface ATInterstitialAutoLoadListener {
    void onInterstitialAutoLoadFail(String str, AdError adError);

    void onInterstitialAutoLoaded(String str);
}
