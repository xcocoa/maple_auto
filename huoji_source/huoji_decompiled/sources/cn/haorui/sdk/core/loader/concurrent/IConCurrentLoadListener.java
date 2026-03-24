package cn.haorui.sdk.core.loader.concurrent;

import cn.haorui.sdk.core.loader.AdPlatformError;

/* JADX INFO: loaded from: classes.dex */
public interface IConCurrentLoadListener {
    void onAdError(AdPlatformError adPlatformError, int i);

    void onAdLoaded(Object obj, int i);

    void onRenderFail(String str, int i, int i2);

    void onRenderSuccess(Object obj, int i);
}
