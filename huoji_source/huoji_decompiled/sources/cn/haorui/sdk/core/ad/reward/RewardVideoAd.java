package cn.haorui.sdk.core.ad.reward;

import android.app.Activity;
import cn.haorui.sdk.core.ad.IAd;

/* JADX INFO: loaded from: classes.dex */
public interface RewardVideoAd extends IAd {
    void destroy();

    void setMediaListener(RewardAdMediaListener rewardAdMediaListener);

    void showAd();

    void showAd(Activity activity);
}
