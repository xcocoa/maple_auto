package cn.haorui.sdk.adsail_ad.splash;

import cn.haorui.sdk.adsail_ad.IAdListener;

/* JADX INFO: loaded from: classes.dex */
public interface ISplashAdListener extends IAdListener<NativeSplashAd> {
    boolean isHasExposed();

    void onADClosed();

    void onADSkip();

    void onADTick(long j);

    void onADTimeOver();

    void onAdClicked();

    void onAdReady(SplashAdImpl splashAdImpl);
}
