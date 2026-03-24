package cn.haorui.sdk.core.loader;

/* JADX INFO: loaded from: classes.dex */
public interface IAdLoadListener<T> {
    void onAdClosed();

    void onAdError();

    void onAdExposure();

    void onAdLoaded(T t);

    void onAdPlatformError(AdPlatformError adPlatformError);

    void onAdReady(T t);

    void onAdRenderFail(String str, int i);
}
