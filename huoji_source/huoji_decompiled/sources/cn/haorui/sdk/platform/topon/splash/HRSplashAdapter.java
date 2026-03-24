package cn.haorui.sdk.platform.topon.splash;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import cn.haorui.sdk.core.ad.splash.ISplashAd;
import cn.haorui.sdk.core.ad.splash.SplashAdListener;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.topon.HRInitManager;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class HRSplashAdapter extends CustomSplashAdapter {
    private String slotId;
    private ISplashAd splashAd;

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(Context context, Map<String, Object> map, final ATBiddingListener aTBiddingListener) {
        if (map.containsKey("app_id") && map.containsKey("slot_id")) {
            this.slotId = (String) map.get("slot_id");
            new SplashAdLoader(context, this.slotId, new SplashAdListener() { // from class: cn.haorui.sdk.platform.topon.splash.HRSplashAdapter.3
                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdClosed() {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdError() {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRSplashAdapter.this.mLoadListener != null) {
                        HRSplashAdapter.this.mLoadListener.onAdLoadError(HRConfig.GENDER_UNKNOWN, "加载错误");
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdExposure() {
                    if (HRSplashAdapter.this.mImpressionListener != null) {
                        HRSplashAdapter.this.mImpressionListener.onSplashAdShow();
                    }
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
                    if (iSplashAd != null) {
                        if (iSplashAd.getData() != null) {
                            double d = 0.0d;
                            String string = UUID.randomUUID().toString();
                            if (iSplashAd.getData() != null) {
                                try {
                                    d = Double.parseDouble(iSplashAd.getData().getEcpm());
                                } catch (NumberFormatException e) {
                                    e.printStackTrace();
                                }
                            }
                            ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                            if (aTBiddingListener2 != null) {
                                aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.success(d, string, null, ATAdConst.CURRENCY.RMB), null);
                            }
                        }
                        iSplashAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.topon.splash.HRSplashAdapter.3.1
                            @Override // cn.haorui.sdk.core.loader.InteractionListener
                            public void onAdClicked() {
                                if (HRSplashAdapter.this.mImpressionListener != null) {
                                    HRSplashAdapter.this.mImpressionListener.onSplashAdClicked();
                                }
                            }
                        });
                        HRSplashAdapter.this.splashAd = iSplashAd;
                        if (HRSplashAdapter.this.mLoadListener != null) {
                            HRSplashAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdRenderFail(String str, int i) {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRSplashAdapter.this.mLoadListener != null) {
                        HRSplashAdapter.this.mLoadListener.onAdLoadError(i + "", str);
                    }
                }

                @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
                public void onAdSkip(ISplashAd iSplashAd) {
                    HRSplashAdapter.this.mDismissType = 2;
                    if (HRSplashAdapter.this.mImpressionListener != null) {
                        HRSplashAdapter.this.mImpressionListener.onSplashAdDismiss();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
                public void onAdTick(long j) {
                }

                @Override // cn.haorui.sdk.core.ad.splash.SplashAdListener
                public void onAdTimeOver(ISplashAd iSplashAd) {
                    HRSplashAdapter.this.mDismissType = 3;
                    if (HRSplashAdapter.this.mImpressionListener != null) {
                        HRSplashAdapter.this.mImpressionListener.onSplashAdDismiss();
                    }
                }
            }, 5000).loadAdOnly();
            return;
        }
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError("", "app_id or slot_id is empty!");
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return HRInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.slotId;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdSdk.getVersionName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean isAdReady() {
        return this.splashAd != null;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, final Map<String, Object> map, Map<String, Object> map2) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.splash.HRSplashAdapter.1
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRSplashAdapter.this.loadAd(context, map, null);
            }
        });
    }

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        ISplashAd iSplashAd = this.splashAd;
        if (iSplashAd != null) {
            iSplashAd.showAd(viewGroup);
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(final Context context, final Map<String, Object> map, Map<String, Object> map2, final ATBiddingListener aTBiddingListener) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.splash.HRSplashAdapter.2
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                if (aTBiddingListener2 != null) {
                    aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                }
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRSplashAdapter.this.loadAd(context, map, aTBiddingListener);
            }
        });
        return true;
    }
}
