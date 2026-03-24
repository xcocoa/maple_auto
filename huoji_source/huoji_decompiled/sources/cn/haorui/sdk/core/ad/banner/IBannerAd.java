package cn.haorui.sdk.core.ad.banner;

import android.app.Activity;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.IAd;

/* JADX INFO: loaded from: classes.dex */
public interface IBannerAd extends IAd {
    void setCloseButtonVisible(boolean z);

    void setWidthAndHeight(int i, int i2);

    void showAd(Activity activity, ViewGroup viewGroup);

    void showAd(ViewGroup viewGroup);
}
