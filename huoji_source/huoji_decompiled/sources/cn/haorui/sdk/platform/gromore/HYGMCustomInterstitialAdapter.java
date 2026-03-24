package cn.haorui.sdk.platform.gromore;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.custom.interstitial.GMCustomInterstitialAdapter;
import com.bytedance.msdk.api.v2.slot.GMAdSlotInterstitial;

/* JADX INFO: loaded from: classes.dex */
public class HYGMCustomInterstitialAdapter extends GMCustomInterstitialAdapter {
    private static final String TAG = "HYGMCustomInterstitialA";
    private InterstitialAd interstitialAd;

    public void load(Context context, GMAdSlotInterstitial gMAdSlotInterstitial, GMCustomServiceConfig gMCustomServiceConfig) {
        Log.e(TAG, "开始加载gromore自定义平台插屏，pid=" + gMCustomServiceConfig.getADNNetworkSlotId());
        new InterstitialAdLoader((Activity) context, gMCustomServiceConfig.getADNNetworkSlotId(), new InterstitialAdListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomInterstitialAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                HYGMCustomInterstitialAdapter.this.callInterstitialClosed();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYGMCustomInterstitialAdapter.this.callLoadFail(new GMCustomAdError(-1, "loadAdError"));
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                HYGMCustomInterstitialAdapter.this.callInterstitialShow();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(InterstitialAd interstitialAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(InterstitialAd interstitialAd) {
                HYGMCustomInterstitialAdapter.this.interstitialAd = interstitialAd;
                if (interstitialAd != null) {
                    interstitialAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomInterstitialAdapter.1.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HYGMCustomInterstitialAdapter.this.callInterstitialAdClick();
                        }
                    });
                    double d = 0.0d;
                    if (interstitialAd.getData() != null) {
                        try {
                            d = Double.parseDouble(interstitialAd.getData().getEcpm());
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                    HYGMCustomInterstitialAdapter.this.callLoadSuccess(d);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYGMCustomInterstitialAdapter.this.callLoadFail(new GMCustomAdError(-2, "AdRenderFail"));
            }
        }).loadAd();
    }

    public void showAd(Activity activity) {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.showAd(activity);
        }
    }
}
