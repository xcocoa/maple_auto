package com.anythink.interstitial.api;

import android.content.Context;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;

/* JADX INFO: loaded from: classes.dex */
public abstract class ATInterstitialAutoEventListener {
    public void onDeeplinkCallback(ATAdInfo aTAdInfo, boolean z) {
    }

    public void onDownloadConfirm(Context context, ATAdInfo aTAdInfo, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
    }

    public abstract void onInterstitialAdClicked(ATAdInfo aTAdInfo);

    public abstract void onInterstitialAdClose(ATAdInfo aTAdInfo);

    public abstract void onInterstitialAdShow(ATAdInfo aTAdInfo);

    public abstract void onInterstitialAdVideoEnd(ATAdInfo aTAdInfo);

    public abstract void onInterstitialAdVideoError(AdError adError);

    public abstract void onInterstitialAdVideoStart(ATAdInfo aTAdInfo);
}
