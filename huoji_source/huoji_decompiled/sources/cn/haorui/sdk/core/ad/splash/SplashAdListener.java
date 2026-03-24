package cn.haorui.sdk.core.ad.splash;

import cn.haorui.sdk.core.loader.IAdLoadListener;

/* JADX INFO: loaded from: classes.dex */
public interface SplashAdListener extends IAdLoadListener<ISplashAd> {
    void onAdPresent(ISplashAd iSplashAd);

    void onAdSkip(ISplashAd iSplashAd);

    void onAdTick(long j);

    void onAdTimeOver(ISplashAd iSplashAd);
}
