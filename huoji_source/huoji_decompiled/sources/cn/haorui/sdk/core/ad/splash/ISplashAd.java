package cn.haorui.sdk.core.ad.splash;

import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.IAd;
import cn.haorui.sdk.core.loader.InteractionListener;

/* JADX INFO: loaded from: classes.dex */
public interface ISplashAd<T extends InteractionListener> extends IAd<T> {
    void setDownloadDialogListener(ISplashDownloadDialogListener iSplashDownloadDialogListener);

    void setSplashFinishingTouchListener(ISplashFinishingTouchListener iSplashFinishingTouchListener);

    void showAd(ViewGroup viewGroup);

    void splashAnimationFinish();
}
