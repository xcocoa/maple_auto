package cn.haorui.sdk.core.loader.concurrent;

import cn.haorui.sdk.core.domain.SdkAdInfo;

/* JADX INFO: loaded from: classes.dex */
public interface a {
    void cacheApi();

    void onAllError();

    void onFinalAdLoaded(Object obj, SdkAdInfo sdkAdInfo);

    void onRenderFail(String str);

    void onRenderSuccess(Object obj);
}
