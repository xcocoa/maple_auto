package cn.haorui.sdk.platform.gromore;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import cn.haorui.sdk.core.ad.banner.BannerAdListener;
import cn.haorui.sdk.core.ad.banner.BannerAdLoader;
import cn.haorui.sdk.core.ad.banner.IBannerAd;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.msdk.api.v2.GMAdConstant;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.banner.GMCustomBannerAdapter;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.slot.GMAdSlotBanner;

/* JADX INFO: loaded from: classes.dex */
public class HYGMCustomBannerAdapter extends GMCustomBannerAdapter {
    private static final String TAG = "HYGMCustomBannerAdapter";
    private IBannerAd iBannerAd;
    private View mBannerView;

    /* JADX INFO: Access modifiers changed from: private */
    public void removeFromParent(View view) {
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view);
            }
        }
    }

    public View getAdView() {
        LogUtil.e(TAG, "isReady=" + isReadyStatus() + ",adView=" + this.iBannerAd.getAdView());
        return this.mBannerView;
    }

    public GMAdConstant.AdIsReadyStatus isReadyStatus() {
        return this.iBannerAd != null ? GMAdConstant.AdIsReadyStatus.AD_IS_READY : super.isReadyStatus();
    }

    public void load(Context context, GMAdSlotBanner gMAdSlotBanner, GMCustomServiceConfig gMCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台banner，pid=" + gMCustomServiceConfig.getADNNetworkSlotId());
        if (context instanceof Activity) {
            BannerAdLoader bannerAdLoader = new BannerAdLoader((Activity) context, gMCustomServiceConfig.getADNNetworkSlotId(), new BannerAdListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomBannerAdapter.1
                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdClosed() {
                    HYGMCustomBannerAdapter.this.callBannerAdClosed();
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdError() {
                    HYGMCustomBannerAdapter.this.callLoadFail(new GMCustomAdError(-1, "loadAdError"));
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdExposure() {
                    HYGMCustomBannerAdapter.this.callBannerAdShow();
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
                        HYGMCustomBannerAdapter.this.iBannerAd = iBannerAd;
                        iBannerAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomBannerAdapter.1.1
                            @Override // cn.haorui.sdk.core.loader.InteractionListener
                            public void onAdClicked() {
                                HYGMCustomBannerAdapter.this.callBannerAdClicked();
                            }
                        });
                        if (HYGMCustomBannerAdapter.this.mBannerView instanceof FrameLayout) {
                            View adView = iBannerAd.getAdView();
                            HYGMCustomBannerAdapter.this.removeFromParent(adView);
                            ((FrameLayout) HYGMCustomBannerAdapter.this.mBannerView).addView(adView, new ViewGroup.LayoutParams(-1, -1));
                        }
                        LogUtil.e(HYGMCustomBannerAdapter.TAG, "加载成功，onAdReady");
                        double d = 0.0d;
                        if (iBannerAd.getData() != null) {
                            try {
                                d = Double.parseDouble(iBannerAd.getData().getEcpm());
                            } catch (NumberFormatException e) {
                                e.printStackTrace();
                            }
                        }
                        HYGMCustomBannerAdapter.this.callLoadSuccess(d);
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdRenderFail(String str, int i) {
                    LogUtil.e(HYGMCustomBannerAdapter.TAG, "onAdRenderFail" + str);
                    HYGMCustomBannerAdapter.this.callLoadFail(new GMCustomAdError(-2, "AdRenderFail"));
                }
            });
            this.mBannerView = new FrameLayout(context);
            bannerAdLoader.loadAd();
        }
    }
}
