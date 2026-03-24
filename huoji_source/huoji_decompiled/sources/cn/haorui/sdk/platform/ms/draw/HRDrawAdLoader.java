package cn.haorui.sdk.platform.ms.draw;

import cn.haorui.sdk.core.ad.draw.DrawAdListener;
import cn.haorui.sdk.core.ad.draw.IDrawAd;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.ms.HRInitManager;
import com.meishu.sdk.core.ad.draw.DrawAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.draw.MsCustomDrawAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HRDrawAdLoader extends MsCustomDrawAdapter {
    private HrCustomDrawAd hrCustomDrawAd;

    public HRDrawAdLoader(DrawAdLoader drawAdLoader, SdkAdInfo sdkAdInfo) {
        super(drawAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        new cn.haorui.sdk.core.ad.draw.DrawAdLoader(getContext(), str, new DrawAdListener() { // from class: cn.haorui.sdk.platform.ms.draw.HRDrawAdLoader.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                if (HRDrawAdLoader.this.hrCustomDrawAd != null) {
                    HRDrawAdLoader.this.onError(-1, "加载出错");
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HRDrawAdLoader.this.hrCustomDrawAd != null) {
                    HRDrawAdLoader hRDrawAdLoader = HRDrawAdLoader.this;
                    hRDrawAdLoader.onAdExposure(hRDrawAdLoader.hrCustomDrawAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(IDrawAd iDrawAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(IDrawAd iDrawAd) {
                if (iDrawAd != null) {
                    if (iDrawAd.getData() != null) {
                        String ecpm = iDrawAd.getData().getEcpm();
                        if (HRDrawAdLoader.this.getSdkAdInfo() != null) {
                            HRDrawAdLoader.this.getSdkAdInfo().setEcpm(ecpm);
                        }
                    }
                    iDrawAd.getDrawType();
                    iDrawAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.ms.draw.HRDrawAdLoader.2.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HRDrawAdLoader hRDrawAdLoader = HRDrawAdLoader.this;
                            hRDrawAdLoader.onAdClick(hRDrawAdLoader.hrCustomDrawAd);
                        }
                    });
                    HRDrawAdLoader hRDrawAdLoader = HRDrawAdLoader.this;
                    hRDrawAdLoader.hrCustomDrawAd = new HrCustomDrawAd(hRDrawAdLoader, iDrawAd);
                    HRDrawAdLoader hRDrawAdLoader2 = HRDrawAdLoader.this;
                    hRDrawAdLoader2.onRenderSuccess(hRDrawAdLoader2.hrCustomDrawAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str2, int i) {
                if (HRDrawAdLoader.this.hrCustomDrawAd != null) {
                    HRDrawAdLoader.this.onRenderFail(i, str2);
                }
            }
        }).loadAd();
    }

    public void loadCustomAd(String str, final String str2, String str3) {
        HRInitManager.getInstance().initSdk(((MsCustomDrawAdapter) this).context, str, new HRInitManager.InitCallback() { // from class: cn.haorui.sdk.platform.ms.draw.HRDrawAdLoader.1
            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onError(int i, String str4) {
            }

            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onSuccess() {
                HRDrawAdLoader.this.loadAdWithCallback(str2);
            }
        });
    }
}
