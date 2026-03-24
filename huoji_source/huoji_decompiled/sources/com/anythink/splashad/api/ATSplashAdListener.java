package com.anythink.splashad.api;

import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.AdError;

/* JADX INFO: loaded from: classes.dex */
public interface ATSplashAdListener {
    void onAdClick(ATAdInfo aTAdInfo);

    void onAdDismiss(ATAdInfo aTAdInfo, ATSplashAdExtraInfo aTSplashAdExtraInfo);

    void onAdLoadTimeout();

    void onAdLoaded(boolean z);

    void onAdShow(ATAdInfo aTAdInfo);

    void onNoAdError(AdError adError);
}
