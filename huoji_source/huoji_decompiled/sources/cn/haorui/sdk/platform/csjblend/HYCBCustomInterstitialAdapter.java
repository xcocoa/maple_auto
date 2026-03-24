package cn.haorui.sdk.platform.csjblend;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.interstitial.MediationCustomInterstitialLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;

/* JADX INFO: loaded from: classes.dex */
public class HYCBCustomInterstitialAdapter extends MediationCustomInterstitialLoader {
    private static final String TAG = "HYCBCustomInterstitialA";
    private InterstitialAd interstitialAd;

    public boolean isClientBidding() {
        return getBiddingType() == 1;
    }

    public void load(Context context, AdSlot adSlot, MediationCustomServiceConfig mediationCustomServiceConfig) {
        Log.e(TAG, "开始加载gromore自定义平台插屏，pid=" + mediationCustomServiceConfig.getADNNetworkSlotId());
        new InterstitialAdLoader((Activity) context, mediationCustomServiceConfig.getADNNetworkSlotId(), new InterstitialAdListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomInterstitialAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                HYCBCustomInterstitialAdapter.this.callInterstitialClosed();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYCBCustomInterstitialAdapter.this.callLoadFail(-1, "loadAdError");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                HYCBCustomInterstitialAdapter.this.callInterstitialShow();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(InterstitialAd interstitialAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(InterstitialAd interstitialAd) {
                HYCBCustomInterstitialAdapter.this.interstitialAd = interstitialAd;
                if (interstitialAd != null) {
                    interstitialAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomInterstitialAdapter.1.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HYCBCustomInterstitialAdapter.this.callInterstitialAdClick();
                        }
                    });
                    if (!HYCBCustomInterstitialAdapter.this.isClientBidding()) {
                        HYCBCustomInterstitialAdapter.this.callLoadSuccess();
                        return;
                    }
                    double d = 0.0d;
                    if (interstitialAd.getData() != null) {
                        try {
                            d = Double.parseDouble(interstitialAd.getData().getEcpm());
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                    HYCBCustomInterstitialAdapter.this.callLoadSuccess(d);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYCBCustomInterstitialAdapter.this.callLoadFail(-2, "AdRenderFail");
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
