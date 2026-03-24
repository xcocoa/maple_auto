package cn.haorui.sdk.platform.topon.intertitial;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.topon.HRInitManager;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class HRIntertitialAdapter extends CustomInterstitialAdapter {
    private InterstitialAd interstitialAd;
    private String slotId;

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(Context context, Map<String, Object> map, final ATBiddingListener aTBiddingListener) {
        String str = (String) map.get("app_id");
        this.slotId = (String) map.get("slot_id");
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(this.slotId)) {
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
            }
            ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdLoadError("", "app_id or slot_id is empty!");
                return;
            }
            return;
        }
        if (context instanceof Activity) {
            new InterstitialAdLoader((Activity) context, this.slotId, new InterstitialAdListener() { // from class: cn.haorui.sdk.platform.topon.intertitial.HRIntertitialAdapter.3
                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdClosed() {
                    if (HRIntertitialAdapter.this.mImpressListener != null) {
                        HRIntertitialAdapter.this.mImpressListener.onInterstitialAdClose();
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdError() {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRIntertitialAdapter.this.mLoadListener != null) {
                        HRIntertitialAdapter.this.mLoadListener.onAdLoadError(HRConfig.GENDER_UNKNOWN, "加载错误");
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdExposure() {
                    if (HRIntertitialAdapter.this.mImpressListener != null) {
                        HRIntertitialAdapter.this.mImpressListener.onInterstitialAdShow();
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
                    HRIntertitialAdapter.this.interstitialAd = interstitialAd;
                    if (interstitialAd != null) {
                        if (interstitialAd.getData() != null) {
                            double d = 0.0d;
                            String string = UUID.randomUUID().toString();
                            if (interstitialAd.getData() != null) {
                                try {
                                    d = Double.parseDouble(interstitialAd.getData().getEcpm());
                                } catch (NumberFormatException e) {
                                    e.printStackTrace();
                                }
                            }
                            ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                            if (aTBiddingListener2 != null) {
                                aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.success(d, string, null, ATAdConst.CURRENCY.RMB), null);
                            }
                        }
                        interstitialAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.topon.intertitial.HRIntertitialAdapter.3.1
                            @Override // cn.haorui.sdk.core.loader.InteractionListener
                            public void onAdClicked() {
                                if (HRIntertitialAdapter.this.mImpressListener != null) {
                                    HRIntertitialAdapter.this.mImpressListener.onInterstitialAdClicked();
                                }
                            }
                        });
                        if (HRIntertitialAdapter.this.mLoadListener != null) {
                            HRIntertitialAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdRenderFail(String str2, int i) {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRIntertitialAdapter.this.mLoadListener != null) {
                        HRIntertitialAdapter.this.mLoadListener.onAdLoadError(HRConfig.GENDER_UNKNOWN, "加载错误");
                    }
                }
            }).loadAd();
            return;
        }
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
        }
        ATCustomLoadListener aTCustomLoadListener2 = this.mLoadListener;
        if (aTCustomLoadListener2 != null) {
            aTCustomLoadListener2.onAdLoadError("", "app_id or slot_id is empty!");
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
        return this.interstitialAd != null;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, final Map<String, Object> map, Map<String, Object> map2) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.intertitial.HRIntertitialAdapter.1
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRIntertitialAdapter.this.loadAd(context, map, null);
            }
        });
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        InterstitialAd interstitialAd = this.interstitialAd;
        if (interstitialAd != null) {
            interstitialAd.showAd(activity);
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(final Context context, final Map<String, Object> map, Map<String, Object> map2, final ATBiddingListener aTBiddingListener) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.intertitial.HRIntertitialAdapter.2
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                if (aTBiddingListener2 != null) {
                    aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                }
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRIntertitialAdapter.this.loadAd(context, map, aTBiddingListener);
            }
        });
        return true;
    }
}
