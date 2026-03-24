package cn.haorui.sdk.platform.ms.interstitial;

import android.app.Activity;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.ms.HRInitManager;
import com.meishu.sdk.core.ad.interstitial.InterstitialAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.interstitial.MsCustomInterstitialAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HRInterstitialAdLoader extends MsCustomInterstitialAdapter {
    private HrCustomInterstitialAd hrCustomInterstitialAd;

    public HRInterstitialAdLoader(InterstitialAdLoader interstitialAdLoader, SdkAdInfo sdkAdInfo) {
        super(interstitialAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        new cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader((Activity) getContext(), str, new InterstitialAdListener() { // from class: cn.haorui.sdk.platform.ms.interstitial.HRInterstitialAdLoader.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                if (HRInterstitialAdLoader.this.hrCustomInterstitialAd != null) {
                    HRInterstitialAdLoader hRInterstitialAdLoader = HRInterstitialAdLoader.this;
                    hRInterstitialAdLoader.onAdClosed(hRInterstitialAdLoader.hrCustomInterstitialAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HRInterstitialAdLoader.this.onError(-1, "加载错误");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HRInterstitialAdLoader.this.hrCustomInterstitialAd != null) {
                    HRInterstitialAdLoader hRInterstitialAdLoader = HRInterstitialAdLoader.this;
                    hRInterstitialAdLoader.onAdExposure(hRInterstitialAdLoader.hrCustomInterstitialAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(InterstitialAd interstitialAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(InterstitialAd interstitialAd) {
                if (interstitialAd != null) {
                    if (interstitialAd.getData() != null) {
                        String ecpm = interstitialAd.getData().getEcpm();
                        if (HRInterstitialAdLoader.this.getSdkAdInfo() != null) {
                            HRInterstitialAdLoader.this.getSdkAdInfo().setEcpm(ecpm);
                        }
                    }
                    interstitialAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.ms.interstitial.HRInterstitialAdLoader.2.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HRInterstitialAdLoader hRInterstitialAdLoader = HRInterstitialAdLoader.this;
                            hRInterstitialAdLoader.onAdClick(hRInterstitialAdLoader.hrCustomInterstitialAd);
                        }
                    });
                    HRInterstitialAdLoader hRInterstitialAdLoader = HRInterstitialAdLoader.this;
                    hRInterstitialAdLoader.hrCustomInterstitialAd = new HrCustomInterstitialAd(hRInterstitialAdLoader, interstitialAd);
                    HRInterstitialAdLoader hRInterstitialAdLoader2 = HRInterstitialAdLoader.this;
                    hRInterstitialAdLoader2.onRenderSuccess(hRInterstitialAdLoader2.hrCustomInterstitialAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str2, int i) {
                HRInterstitialAdLoader.this.onRenderFail(i, str2);
            }
        }).loadAd();
    }

    public void loadCustomAd(String str, final String str2, String str3) {
        HRInitManager.getInstance().initSdk(((MsCustomInterstitialAdapter) this).context, str, new HRInitManager.InitCallback() { // from class: cn.haorui.sdk.platform.ms.interstitial.HRInterstitialAdLoader.1
            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onError(int i, String str4) {
            }

            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onSuccess() {
                HRInterstitialAdLoader.this.loadAdWithCallback(str2);
            }
        });
    }
}
