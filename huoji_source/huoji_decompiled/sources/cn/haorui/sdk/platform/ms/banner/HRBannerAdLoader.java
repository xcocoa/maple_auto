package cn.haorui.sdk.platform.ms.banner;

import android.app.Activity;
import cn.haorui.sdk.core.ad.banner.BannerAdListener;
import cn.haorui.sdk.core.ad.banner.IBannerAd;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.ms.HRInitManager;
import com.meishu.sdk.core.ad.banner.BannerAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.banner.MsCustomBannerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HRBannerAdLoader extends MsCustomBannerAdapter {
    private static final String TAG = "HRBannerAdLoader";
    private HrCustomBannerAd hrCustomBannerAd;

    public HRBannerAdLoader(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo) {
        super(bannerAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        new cn.haorui.sdk.core.ad.banner.BannerAdLoader((Activity) getContext(), str, new BannerAdListener() { // from class: cn.haorui.sdk.platform.ms.banner.HRBannerAdLoader.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                if (HRBannerAdLoader.this.hrCustomBannerAd != null) {
                    HRBannerAdLoader.this.onError(-1, "加载错误");
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HRBannerAdLoader.this.hrCustomBannerAd != null) {
                    HRBannerAdLoader hRBannerAdLoader = HRBannerAdLoader.this;
                    hRBannerAdLoader.onAdExposure(hRBannerAdLoader.hrCustomBannerAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(IBannerAd iBannerAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(IBannerAd iBannerAd) {
                if (iBannerAd != null) {
                    if (iBannerAd.getData() != null) {
                        String ecpm = iBannerAd.getData().getEcpm();
                        if (HRBannerAdLoader.this.getSdkAdInfo() != null) {
                            HRBannerAdLoader.this.getSdkAdInfo().setEcpm(ecpm);
                        }
                    }
                    iBannerAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.ms.banner.HRBannerAdLoader.2.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HRBannerAdLoader hRBannerAdLoader = HRBannerAdLoader.this;
                            hRBannerAdLoader.onAdClick(hRBannerAdLoader.hrCustomBannerAd);
                        }
                    });
                    HRBannerAdLoader hRBannerAdLoader = HRBannerAdLoader.this;
                    hRBannerAdLoader.hrCustomBannerAd = new HrCustomBannerAd(hRBannerAdLoader, iBannerAd);
                    HRBannerAdLoader hRBannerAdLoader2 = HRBannerAdLoader.this;
                    hRBannerAdLoader2.onRenderSuccess(null, hRBannerAdLoader2.hrCustomBannerAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str2, int i) {
                if (HRBannerAdLoader.this.hrCustomBannerAd != null) {
                    HRBannerAdLoader.this.onRenderFail(i, str2);
                }
            }
        }).loadAd();
    }

    public void destory() {
    }

    public void loadCustomAd(String str, final String str2, String str3) {
        HRInitManager.getInstance().initSdk(((MsCustomBannerAdapter) this).context, str, new HRInitManager.InitCallback() { // from class: cn.haorui.sdk.platform.ms.banner.HRBannerAdLoader.1
            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onError(int i, String str4) {
            }

            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onSuccess() {
                HRBannerAdLoader.this.loadAdWithCallback(str2);
            }
        });
    }
}
