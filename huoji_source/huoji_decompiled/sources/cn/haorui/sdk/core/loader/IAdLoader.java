package cn.haorui.sdk.core.loader;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public interface IAdLoader {
    void destroy();

    Context getContext();

    IAdLoadListener getLoaderListener();

    void loadAd();
}
