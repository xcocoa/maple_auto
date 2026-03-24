package com.octopus.ad.topon;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import com.octopus.ad.InterstitialAd;
import com.octopus.ad.InterstitialAdListener;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATInterstitialAdapter extends CustomInterstitialAdapter {
    private InterstitialAd mInterstitialAd;
    private final String TAG = getClass().getSimpleName();
    private String mSlotId = "";

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(final Context context) {
        postOnMainThread(new Runnable() { // from class: com.octopus.ad.topon.OctopusATInterstitialAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                OctopusATInterstitialAdapter octopusATInterstitialAdapter = OctopusATInterstitialAdapter.this;
                octopusATInterstitialAdapter.mInterstitialAd = new InterstitialAd(context, octopusATInterstitialAdapter.mSlotId, new InterstitialAdListener() { // from class: com.octopus.ad.topon.OctopusATInterstitialAdapter.2.1
                    @Override // com.octopus.ad.InterstitialAdListener
                    public void onAdClicked() {
                        Log.i(OctopusATInterstitialAdapter.this.TAG, "onAdClicked");
                        if (OctopusATInterstitialAdapter.this.mImpressListener != null) {
                            OctopusATInterstitialAdapter.this.mImpressListener.onInterstitialAdClicked();
                        }
                    }

                    @Override // com.octopus.ad.InterstitialAdListener
                    public void onAdClosed() {
                        Log.i(OctopusATInterstitialAdapter.this.TAG, "onAdClosed");
                        if (OctopusATInterstitialAdapter.this.mImpressListener != null) {
                            OctopusATInterstitialAdapter.this.mImpressListener.onInterstitialAdClose();
                        }
                    }

                    @Override // com.octopus.ad.InterstitialAdListener
                    public void onAdFailedToLoad(int i) {
                        Log.i(OctopusATInterstitialAdapter.this.TAG, "onAdFailedToLoad");
                        if (OctopusATInterstitialAdapter.this.mLoadListener != null) {
                            OctopusATInterstitialAdapter.this.mLoadListener.onAdLoadError(String.valueOf(i), "onAdFailedToLoad errorCode：" + i);
                        }
                        ATBiddingListener aTBiddingListener = OctopusATInterstitialAdapter.this.mBiddingListener;
                        if (aTBiddingListener != null) {
                            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i)), null);
                        }
                    }

                    @Override // com.octopus.ad.InterstitialAdListener
                    public void onAdLoaded() {
                        Log.i(OctopusATInterstitialAdapter.this.TAG, "onAdLoaded");
                        if (OctopusATInterstitialAdapter.this.mLoadListener != null) {
                            OctopusATInterstitialAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                        OctopusATInterstitialAdapter octopusATInterstitialAdapter2 = OctopusATInterstitialAdapter.this;
                        if (octopusATInterstitialAdapter2.mBiddingListener != null) {
                            OctopusATInterstitialAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(octopusATInterstitialAdapter2.mInterstitialAd.getPrice(), UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATInterstitialAdapter.this.mInterstitialAd), ATAdConst.CURRENCY.RMB_CENT), null);
                        }
                    }

                    @Override // com.octopus.ad.InterstitialAdListener
                    public void onAdShown() {
                        Log.i(OctopusATInterstitialAdapter.this.TAG, "onAdShown");
                        if (OctopusATInterstitialAdapter.this.mImpressListener != null) {
                            OctopusATInterstitialAdapter.this.mImpressListener.onInterstitialAdShow();
                        }
                    }
                });
                OctopusATInterstitialAdapter.this.mInterstitialAd.openAdInNativeBrowser(true);
                OctopusATInterstitialAdapter.this.mInterstitialAd.loadAd();
            }
        });
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        InterstitialAd interstitialAd = this.mInterstitialAd;
        if (interstitialAd != null) {
            interstitialAd.destroy();
            this.mInterstitialAd = null;
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return OctopusATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.mSlotId;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return OctopusATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean isAdReady() {
        InterstitialAd interstitialAd = this.mInterstitialAd;
        return interstitialAd != null && interstitialAd.isLoaded();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        Log.i(this.TAG, "onAd loadCustomNetworkAd");
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            OctopusATInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATInterstitialAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str) {
                    if (OctopusATInterstitialAdapter.this.mLoadListener != null) {
                        OctopusATInterstitialAdapter.this.mLoadListener.onAdLoadError("80000", str);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATInterstitialAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATInterstitialAdapter.this.startLoad(context);
                }
            });
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError("80000", "SlotId is empty!");
        }
        ATBiddingListener aTBiddingListener = this.mBiddingListener;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("SlotId is empty!"), null);
        }
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        InterstitialAd interstitialAd;
        if (activity == null || (interstitialAd = this.mInterstitialAd) == null || !interstitialAd.isLoaded()) {
            return;
        }
        this.mInterstitialAd.show(activity);
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        Log.i(this.TAG, "onAd startBiddingRequest");
        loadCustomNetworkAd(context, map, map2);
        return true;
    }
}
