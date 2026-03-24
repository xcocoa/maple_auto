package cn.haorui.sdk.core.ad.fullscreenvideo;

import android.app.Activity;
import cn.haorui.sdk.core.ad.IAd;

/* JADX INFO: loaded from: classes.dex */
public interface IFullScreenVideoAd extends IAd {
    void setMediaListener(IFullScreenMediaListener iFullScreenMediaListener);

    void showAd();

    void showAd(Activity activity);
}
