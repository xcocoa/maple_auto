package cn.haorui.sdk.platform.ms.fullscreen;

import android.app.Activity;
import cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdListener;
import cn.haorui.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.ms.HRInitManager;
import com.meishu.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.fullscreen.MsCustomFullScreenAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HRFullScreenAdLoader extends MsCustomFullScreenAdapter {
    private HrCustomFullScreenAd fullScreenAd;

    public HRFullScreenAdLoader(FullScreenVideoAdLoader fullScreenVideoAdLoader, SdkAdInfo sdkAdInfo) {
        super(fullScreenVideoAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        new cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader((Activity) getContext(), str, new FullScreenVideoAdListener() { // from class: cn.haorui.sdk.platform.ms.fullscreen.HRFullScreenAdLoader.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                if (HRFullScreenAdLoader.this.fullScreenAd != null) {
                    HRFullScreenAdLoader hRFullScreenAdLoader = HRFullScreenAdLoader.this;
                    hRFullScreenAdLoader.onAdClosed(hRFullScreenAdLoader.fullScreenAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                if (HRFullScreenAdLoader.this.fullScreenAd != null) {
                    HRFullScreenAdLoader.this.onError(-1, "加载错误");
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HRFullScreenAdLoader.this.fullScreenAd != null) {
                    HRFullScreenAdLoader hRFullScreenAdLoader = HRFullScreenAdLoader.this;
                    hRFullScreenAdLoader.onAdExposure(hRFullScreenAdLoader.fullScreenAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(IFullScreenVideoAd iFullScreenVideoAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(IFullScreenVideoAd iFullScreenVideoAd) {
                if (iFullScreenVideoAd != null) {
                    if (iFullScreenVideoAd.getData() != null) {
                        String ecpm = iFullScreenVideoAd.getData().getEcpm();
                        if (HRFullScreenAdLoader.this.getSdkAdInfo() != null) {
                            HRFullScreenAdLoader.this.getSdkAdInfo().setEcpm(ecpm);
                        }
                    }
                    iFullScreenVideoAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.ms.fullscreen.HRFullScreenAdLoader.2.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HRFullScreenAdLoader hRFullScreenAdLoader = HRFullScreenAdLoader.this;
                            hRFullScreenAdLoader.onAdClick(hRFullScreenAdLoader.fullScreenAd);
                        }
                    });
                    HRFullScreenAdLoader hRFullScreenAdLoader = HRFullScreenAdLoader.this;
                    hRFullScreenAdLoader.fullScreenAd = new HrCustomFullScreenAd(hRFullScreenAdLoader, iFullScreenVideoAd);
                    HRFullScreenAdLoader hRFullScreenAdLoader2 = HRFullScreenAdLoader.this;
                    hRFullScreenAdLoader2.onRenderSuccess(hRFullScreenAdLoader2.fullScreenAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str2, int i) {
                HRFullScreenAdLoader.this.onRenderFail(i, str2);
            }
        }).loadAd();
    }

    public void loadCustomAd(String str, final String str2, String str3) {
        HRInitManager.getInstance().initSdk(((MsCustomFullScreenAdapter) this).context, str, new HRInitManager.InitCallback() { // from class: cn.haorui.sdk.platform.ms.fullscreen.HRFullScreenAdLoader.1
            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onError(int i, String str4) {
            }

            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onSuccess() {
                HRFullScreenAdLoader.this.loadAdWithCallback(str2);
            }
        });
    }
}
