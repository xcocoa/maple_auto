package cn.haorui.sdk.platform.gromore;

import android.content.Context;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.splash.ISplashAd;
import cn.haorui.sdk.core.ad.splash.SplashAdListener;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.custom.splash.GMCustomSplashAdapter;
import com.bytedance.msdk.api.v2.slot.GMAdSlotSplash;

/* JADX INFO: loaded from: classes.dex */
public class HYGMCustomSplashAdapter extends GMCustomSplashAdapter {
    private static final String TAG = "HYGMCustomSplashAdapter";
    private ISplashAd iSplashAd;

    public void load(Context context, GMAdSlotSplash gMAdSlotSplash, GMCustomServiceConfig gMCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台开屏，pid=" + gMCustomServiceConfig.getADNNetworkSlotId());
        new SplashAdLoader(context, gMCustomServiceConfig.getADNNetworkSlotId(), new SplashAdListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomSplashAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                HYGMCustomSplashAdapter.this.callSplashAdDismiss();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYGMCustomSplashAdapter.this.callLoadFail(new GMCustomAdError(-1, "loadAdError"));
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                HYGMCustomSplashAdapter.this.callSplashAdShow();
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
                HYGMCustomSplashAdapter.this.iSplashAd = iSplashAd;
                if (iSplashAd != null) {
                    iSplashAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomSplashAdapter.1.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HYGMCustomSplashAdapter.this.callSplashAdClicked();
                        }
                    });
                    double d = 0.0d;
                    if (iSplashAd.getData() != null) {
                        try {
                            d = Double.parseDouble(iSplashAd.getData().getEcpm());
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                    HYGMCustomSplashAdapter.this.callLoadSuccess(d);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYGMCustomSplashAdapter.this.callLoadFail(new GMCustomAdError(-2, "AdRenderFail"));
            }

            @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
            public void onAdSkip(ISplashAd iSplashAd) {
                HYGMCustomSplashAdapter.this.callSplashAdSkip();
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
