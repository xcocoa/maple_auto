package cn.haorui.sdk.platform.ms.splash;

import cn.haorui.sdk.core.ad.splash.ISplashAd;
import cn.haorui.sdk.core.ad.splash.SplashAdListener;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.platform.ms.HRInitManager;
import com.meishu.sdk.core.ad.splash.SplashAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.splash.MsCustomSplashAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HRSplashAdLoader extends MsCustomSplashAdapter {
    private static final String TAG = "HRSplashAdLoader";
    private HrCustomSplashAd hrCustomSplashAd;

    public HRSplashAdLoader(SplashAdLoader splashAdLoader, SdkAdInfo sdkAdInfo) {
        super(splashAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        new cn.haorui.sdk.core.ad.splash.SplashAdLoader(getContext(), str, new SplashAdListener() { // from class: cn.haorui.sdk.platform.ms.splash.HRSplashAdLoader.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HRSplashAdLoader.this.onError(-1, "加载失败");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HRSplashAdLoader.this.hrCustomSplashAd != null) {
                    HRSplashAdLoader hRSplashAdLoader = HRSplashAdLoader.this;
                    hRSplashAdLoader.onAdExposure(hRSplashAdLoader.hrCustomSplashAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(ISplashAd iSplashAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
                LogUtil.e(HRSplashAdLoader.TAG, adPlatformError.getMessage());
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdPresent(ISplashAd iSplashAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(ISplashAd iSplashAd) {
                LogUtil.d(HRSplashAdLoader.TAG, "ms onAdReady");
                if (iSplashAd != null) {
                    if (iSplashAd.getData() != null) {
                        String ecpm = iSplashAd.getData().getEcpm();
                        if (HRSplashAdLoader.this.getSdkAdInfo() != null) {
                            HRSplashAdLoader.this.getSdkAdInfo().setEcpm(ecpm);
                        }
                    }
                    iSplashAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.ms.splash.HRSplashAdLoader.2.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HRSplashAdLoader hRSplashAdLoader = HRSplashAdLoader.this;
                            hRSplashAdLoader.onAdClick(hRSplashAdLoader.hrCustomSplashAd);
                        }
                    });
                    HRSplashAdLoader hRSplashAdLoader = HRSplashAdLoader.this;
                    hRSplashAdLoader.hrCustomSplashAd = new HrCustomSplashAd(hRSplashAdLoader, iSplashAd);
                    HRSplashAdLoader hRSplashAdLoader2 = HRSplashAdLoader.this;
                    hRSplashAdLoader2.onRenderSuccess(hRSplashAdLoader2.hrCustomSplashAd.getAdView(), HRSplashAdLoader.this.hrCustomSplashAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str2, int i) {
                HRSplashAdLoader.this.onRenderFail(i, str2);
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdSkip(ISplashAd iSplashAd) {
                if (HRSplashAdLoader.this.hrCustomSplashAd != null) {
                    HRSplashAdLoader hRSplashAdLoader = HRSplashAdLoader.this;
                    hRSplashAdLoader.onAdSkip(hRSplashAdLoader.hrCustomSplashAd);
                }
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdTick(long j) {
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdTimeOver(ISplashAd iSplashAd) {
                if (HRSplashAdLoader.this.hrCustomSplashAd != null) {
                    HRSplashAdLoader hRSplashAdLoader = HRSplashAdLoader.this;
                    hRSplashAdLoader.onAdTimeOver(hRSplashAdLoader.hrCustomSplashAd);
                }
            }
        }, 5000).loadAdOnly();
    }

    public void loadCustomAd(String str, final String str2, String str3) {
        HRInitManager.getInstance().initSdk(((MsCustomSplashAdapter) this).context, str, new HRInitManager.InitCallback() { // from class: cn.haorui.sdk.platform.ms.splash.HRSplashAdLoader.1
            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onError(int i, String str4) {
            }

            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onSuccess() {
                HRSplashAdLoader.this.loadAdWithCallback(str2);
            }
        });
    }
}
