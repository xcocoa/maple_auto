package cn.haorui.sdk.core.ad.splash;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.haorui.sdk.core.loader.a;
import cn.haorui.sdk.core.loader.d;

/* JADX INFO: loaded from: classes.dex */
public class SplashAdListenerProxy extends a<ISplashAd, SplashAdListener> implements SplashAdListener {
    public SplashAdListenerProxy(@NonNull d dVar, @Nullable SplashAdListener splashAdListener) {
        super(dVar, splashAdListener);
    }

    @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
    public void onAdPresent(ISplashAd iSplashAd) {
        K k = this.listener;
        if (k != 0) {
            ((SplashAdListener) k).onAdPresent(iSplashAd);
        }
    }

    @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
    public void onAdSkip(ISplashAd iSplashAd) {
        K k = this.listener;
        if (k != 0) {
            ((SplashAdListener) k).onAdSkip(iSplashAd);
        }
    }

    @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
    public void onAdTick(long j) {
        K k = this.listener;
        if (k != 0) {
            ((SplashAdListener) k).onAdTick(j);
        }
    }

    @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
    public void onAdTimeOver(ISplashAd iSplashAd) {
        K k = this.listener;
        if (k != 0) {
            ((SplashAdListener) k).onAdTimeOver(iSplashAd);
        }
    }
}
