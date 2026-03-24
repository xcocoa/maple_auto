package cn.haorui.sdk.platform.csjblend;

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
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.banner.MediationCustomBannerLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;

/* JADX INFO: loaded from: classes.dex */
public class HYCBCustomBannerAdapter extends MediationCustomBannerLoader {
    private static final String TAG = "HYCBCustomBannerAdapter";
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
        return this.mBannerView;
    }

    public boolean isClientBidding() {
        return getBiddingType() == 1;
    }

    public void load(Context context, AdSlot adSlot, MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台banner，pid=" + mediationCustomServiceConfig.getADNNetworkSlotId());
        if (context instanceof Activity) {
            BannerAdLoader bannerAdLoader = new BannerAdLoader((Activity) context, mediationCustomServiceConfig.getADNNetworkSlotId(), new BannerAdListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomBannerAdapter.1
                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdClosed() {
                    HYCBCustomBannerAdapter.this.callBannerAdClosed();
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdError() {
                    HYCBCustomBannerAdapter.this.callLoadFail(-1, "loadAdError");
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdExposure() {
                    HYCBCustomBannerAdapter.this.callBannerAdShow();
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
                        HYCBCustomBannerAdapter.this.iBannerAd = iBannerAd;
                        iBannerAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomBannerAdapter.1.1
                            @Override // cn.haorui.sdk.core.loader.InteractionListener
                            public void onAdClicked() {
                                HYCBCustomBannerAdapter.this.callBannerAdClick();
                            }
                        });
                        if (HYCBCustomBannerAdapter.this.mBannerView instanceof FrameLayout) {
                            View adView = iBannerAd.getAdView();
                            HYCBCustomBannerAdapter.this.removeFromParent(adView);
                            ((FrameLayout) HYCBCustomBannerAdapter.this.mBannerView).addView(adView, new ViewGroup.LayoutParams(-1, -1));
                        }
                        LogUtil.e(HYCBCustomBannerAdapter.TAG, "加载成功，onAdReady");
                        if (!HYCBCustomBannerAdapter.this.isClientBidding()) {
                            HYCBCustomBannerAdapter.this.callLoadSuccess();
                            return;
                        }
                        double d = 0.0d;
                        if (iBannerAd.getData() != null) {
                            try {
                                d = Double.parseDouble(iBannerAd.getData().getEcpm());
                            } catch (NumberFormatException e) {
                                e.printStackTrace();
                            }
                        }
                        HYCBCustomBannerAdapter.this.callLoadSuccess(d);
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdRenderFail(String str, int i) {
                    LogUtil.e(HYCBCustomBannerAdapter.TAG, "onAdRenderFail" + str);
                    HYCBCustomBannerAdapter.this.callLoadFail(-2, "AdRenderFail");
                }
            });
            this.mBannerView = new FrameLayout(context);
            bannerAdLoader.loadAd();
        }
    }
}
