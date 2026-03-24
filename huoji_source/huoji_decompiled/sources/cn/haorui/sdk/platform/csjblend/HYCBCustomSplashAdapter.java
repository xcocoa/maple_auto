package cn.haorui.sdk.platform.csjblend;

import android.content.Context;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.splash.ISplashAd;
import cn.haorui.sdk.core.ad.splash.SplashAdListener;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.splash.MediationCustomSplashLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;

/* JADX INFO: loaded from: classes.dex */
public class HYCBCustomSplashAdapter extends MediationCustomSplashLoader {
    private static final String TAG = "HYCBCustomSplashAdapter";
    private ISplashAd iSplashAd;

    public boolean isClientBidding() {
        return getBiddingType() == 1;
    }

    public void load(Context context, AdSlot adSlot, MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台开屏，pid=" + mediationCustomServiceConfig.getADNNetworkSlotId());
        new SplashAdLoader(context, mediationCustomServiceConfig.getADNNetworkSlotId(), new SplashAdListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomSplashAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                HYCBCustomSplashAdapter.this.callSplashAdDismiss();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYCBCustomSplashAdapter.this.callLoadFail(-1, "loadAdError");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                HYCBCustomSplashAdapter.this.callSplashAdShow();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(ISplashAd iSplashAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdPresent(ISplashAd iSplashAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(ISplashAd iSplashAd) {
                HYCBCustomSplashAdapter.this.iSplashAd = iSplashAd;
                if (iSplashAd != null) {
                    iSplashAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomSplashAdapter.1.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HYCBCustomSplashAdapter.this.callSplashAdClicked();
                        }
                    });
                    if (!HYCBCustomSplashAdapter.this.isClientBidding()) {
                        HYCBCustomSplashAdapter.this.callLoadSuccess();
                        return;
                    }
                    double d = 0.0d;
                    if (iSplashAd.getData() != null) {
                        try {
                            d = Double.parseDouble(iSplashAd.getData().getEcpm());
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                    HYCBCustomSplashAdapter.this.callLoadSuccess(d);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYCBCustomSplashAdapter.this.callLoadFail(-2, "AdRenderFail");
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdSkip(ISplashAd iSplashAd) {
                HYCBCustomSplashAdapter.this.callSplashAdSkip();
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdTick(long j) {
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdTimeOver(ISplashAd iSplashAd) {
            }
        }, 5000).loadAdOnly();
    }

    public void showAd(ViewGroup viewGroup) {
        ISplashAd iSplashAd = this.iSplashAd;
        if (iSplashAd != null) {
            iSplashAd.showAd(viewGroup);
        }
    }
}
