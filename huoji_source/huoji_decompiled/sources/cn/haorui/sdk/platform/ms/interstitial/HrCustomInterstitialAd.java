package cn.haorui.sdk.platform.ms.interstitial;

import android.app.Activity;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAd;
import com.meishu.sdk.platform.custom.interstitial.MsCustomInterstitialAd;
import com.meishu.sdk.platform.custom.interstitial.MsCustomInterstitialAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomInterstitialAd extends MsCustomInterstitialAd {
    private InterstitialAd interstitialAd;

    public HrCustomInterstitialAd(MsCustomInterstitialAdapter msCustomInterstitialAdapter, InterstitialAd interstitialAd) {
        super(msCustomInterstitialAdapter);
        this.interstitialAd = interstitialAd;
    }

    public void showAd(Activity activity) {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.showAd(activity);
        }
    }
}
