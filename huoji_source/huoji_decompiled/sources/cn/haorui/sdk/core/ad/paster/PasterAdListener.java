package cn.haorui.sdk.core.ad.paster;

import cn.haorui.sdk.core.loader.IAdLoadListener;

/* JADX INFO: loaded from: classes.dex */
public interface PasterAdListener extends IAdLoadListener<PasterAd> {
    void onVideoComplete();

    void onVideoError();

    void onVideoLoaded();
}
