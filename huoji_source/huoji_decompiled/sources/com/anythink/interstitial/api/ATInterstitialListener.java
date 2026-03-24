package com.anythink.interstitial.api;

import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.AdError;

/* JADX INFO: loaded from: classes.dex */
public interface ATInterstitialListener {
    void onInterstitialAdClicked(ATAdInfo aTAdInfo);

    void onInterstitialAdClose(ATAdInfo aTAdInfo);

    void onInterstitialAdLoadFail(AdError adError);

    void onInterstitialAdLoaded();

    void onInterstitialAdShow(ATAdInfo aTAdInfo);

    void onInterstitialAdVideoEnd(ATAdInfo aTAdInfo);

    void onInterstitialAdVideoError(AdError adError);

    void onInterstitialAdVideoStart(ATAdInfo aTAdInfo);
}
