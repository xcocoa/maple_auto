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
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import com.octopus.ad.RewardItem;
import com.octopus.ad.RewardVideoAd;
import com.octopus.ad.RewardVideoAdListener;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATRewardVideoAdapter extends CustomRewardVideoAdapter {
    private RewardVideoAd mRewardVideoAd;
    private final String TAG = getClass().getSimpleName();
    private String mSlotId = "";

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(final Context context) {
        postOnMainThread(new Runnable() { // from class: com.octopus.ad.topon.OctopusATRewardVideoAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                OctopusATRewardVideoAdapter octopusATRewardVideoAdapter = OctopusATRewardVideoAdapter.this;
                octopusATRewardVideoAdapter.mRewardVideoAd = new RewardVideoAd(context, octopusATRewardVideoAdapter.mSlotId, new RewardVideoAdListener() { // from class: com.octopus.ad.topon.OctopusATRewardVideoAdapter.2.1
                    @Override // com.octopus.ad.RewardVideoAdListener
                    public void onRewardVideoAdClicked() {
                        Log.i(OctopusATRewardVideoAdapter.this.TAG, "onRewardVideoAdClicked");
                        if (OctopusATRewardVideoAdapter.this.mImpressionListener != null) {
                            OctopusATRewardVideoAdapter.this.mImpressionListener.onRewardedVideoAdPlayClicked();
                        }
                    }

                    @Override // com.octopus.ad.RewardVideoAdListener
                    public void onRewardVideoAdClosed() {
                        Log.i(OctopusATRewardVideoAdapter.this.TAG, "onRewardVideoAdClosed");
                        if (OctopusATRewardVideoAdapter.this.mImpressionListener != null) {
                            OctopusATRewardVideoAdapter.this.mImpressionListener.onRewardedVideoAdClosed();
                        }
                    }

                    @Override // com.octopus.ad.RewardVideoAdListener
                    public void onRewardVideoAdComplete() {
                        Log.i(OctopusATRewardVideoAdapter.this.TAG, "onRewardVideoAdComplete");
                        if (OctopusATRewardVideoAdapter.this.mImpressionListener != null) {
                            OctopusATRewardVideoAdapter.this.mImpressionListener.onRewardedVideoAdPlayEnd();
                        }
                    }

                    @Override // com.octopus.ad.RewardVideoAdListener
                    public void onRewardVideoAdFailedToLoad(int i) {
                        Log.i(OctopusATRewardVideoAdapter.this.TAG, "onRewardVideoAdFailedToLoad:" + i);
                        if (OctopusATRewardVideoAdapter.this.mLoadListener != null) {
                            OctopusATRewardVideoAdapter.this.mLoadListener.onAdLoadError(String.valueOf(i), "onRewardVideoAdFailedToLoad errorCode：" + i);
                        }
                        ATBiddingListener aTBiddingListener = OctopusATRewardVideoAdapter.this.mBiddingListener;
                        if (aTBiddingListener != null) {
                            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i)), null);
                        }
                    }

                    @Override // com.octopus.ad.RewardVideoAdListener
                    public void onRewardVideoAdLoaded() {
                        Log.i(OctopusATRewardVideoAdapter.this.TAG, "onRewardVideoAdLoaded");
                        if (OctopusATRewardVideoAdapter.this.mLoadListener != null) {
                            OctopusATRewardVideoAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                        OctopusATRewardVideoAdapter octopusATRewardVideoAdapter2 = OctopusATRewardVideoAdapter.this;
                        if (octopusATRewardVideoAdapter2.mBiddingListener != null) {
                            OctopusATRewardVideoAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(octopusATRewardVideoAdapter2.mRewardVideoAd.getPrice(), UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATRewardVideoAdapter.this.mRewardVideoAd), ATAdConst.CURRENCY.RMB_CENT), null);
                        }
                    }

                    @Override // com.octopus.ad.RewardVideoAdListener
                    public void onRewardVideoAdShown() {
                        Log.i(OctopusATRewardVideoAdapter.this.TAG, "onRewardVideoAdShown");
                        if (OctopusATRewardVideoAdapter.this.mImpressionListener != null) {
                            OctopusATRewardVideoAdapter.this.mImpressionListener.onRewardedVideoAdPlayStart();
                        }
                    }

                    @Override // com.octopus.ad.RewardVideoAdListener
                    public void onRewarded(RewardItem rewardItem) {
                        Log.i(OctopusATRewardVideoAdapter.this.TAG, "onRewarded");
                        if (OctopusATRewardVideoAdapter.this.mImpressionListener != null) {
                            OctopusATRewardVideoAdapter.this.mImpressionListener.onReward();
                        }
                    }
                });
                OctopusATRewardVideoAdapter.this.mRewardVideoAd.openAdInNativeBrowser(true);
                OctopusATRewardVideoAdapter.this.mRewardVideoAd.loadAd();
            }
        });
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
        if (rewardVideoAd != null) {
            rewardVideoAd.destroy();
            this.mRewardVideoAd = null;
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
        RewardVideoAd rewardVideoAd = this.mRewardVideoAd;
        return rewardVideoAd != null && rewardVideoAd.isLoaded();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        Log.i(this.TAG, "onAd loadCustomNetworkAd");
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            OctopusATInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATRewardVideoAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str) {
                    if (OctopusATRewardVideoAdapter.this.mLoadListener != null) {
                        OctopusATRewardVideoAdapter.this.mLoadListener.onAdLoadError("80000", str);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATRewardVideoAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATRewardVideoAdapter.this.startLoad(context);
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

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        RewardVideoAd rewardVideoAd;
        if (activity == null || (rewardVideoAd = this.mRewardVideoAd) == null || !rewardVideoAd.isLoaded()) {
            return;
        }
        this.mRewardVideoAd.show(activity);
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        Log.i(this.TAG, "onAd startBiddingRequest");
        loadCustomNetworkAd(context, map, map2);
        return true;
    }
}
