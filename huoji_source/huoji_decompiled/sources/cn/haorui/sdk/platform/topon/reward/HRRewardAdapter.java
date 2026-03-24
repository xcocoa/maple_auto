package cn.haorui.sdk.platform.topon.reward;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.ad.reward.RewardVideoAd;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListener;
import cn.haorui.sdk.core.ad.reward.RewardVideoLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.platform.topon.HRInitManager;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class HRRewardAdapter extends CustomRewardVideoAdapter {
    private static final String TAG = "HRRewardAdapter";
    private RewardVideoAd rewardVideoAd;
    private String slotId;

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(Context context, Map<String, Object> map, final ATBiddingListener aTBiddingListener) {
        String str = (String) map.get("app_id");
        this.slotId = (String) map.get("slot_id");
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.slotId)) {
            new RewardVideoLoader(context, this.slotId, new RewardVideoAdListener() { // from class: cn.haorui.sdk.platform.topon.reward.HRRewardAdapter.3
                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdClosed() {
                    if (HRRewardAdapter.this.mImpressionListener != null) {
                        HRRewardAdapter.this.mImpressionListener.onRewardedVideoAdClosed();
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdError() {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRRewardAdapter.this.mLoadListener != null) {
                        HRRewardAdapter.this.mLoadListener.onAdLoadError(String.valueOf(-1), "加载失败");
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdExposure() {
                    if (HRRewardAdapter.this.mImpressionListener != null) {
                        HRRewardAdapter.this.mImpressionListener.onRewardedVideoAdPlayStart();
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdLoaded(RewardVideoAd rewardVideoAd) {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdPlatformError(AdPlatformError adPlatformError) {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdReady(RewardVideoAd rewardVideoAd) {
                    HRRewardAdapter.this.rewardVideoAd = rewardVideoAd;
                    if (rewardVideoAd != null) {
                        if (rewardVideoAd.getData() != null) {
                            double d = 0.0d;
                            String string = UUID.randomUUID().toString();
                            if (rewardVideoAd.getData() != null) {
                                try {
                                    d = Double.parseDouble(rewardVideoAd.getData().getEcpm());
                                } catch (NumberFormatException e) {
                                    e.printStackTrace();
                                }
                            }
                            ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                            if (aTBiddingListener2 != null) {
                                aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.success(d, string, null, ATAdConst.CURRENCY.RMB), null);
                            }
                        }
                        rewardVideoAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.topon.reward.HRRewardAdapter.3.1
                            @Override // cn.haorui.sdk.core.loader.InteractionListener
                            public void onAdClicked() {
                                if (HRRewardAdapter.this.mImpressionListener != null) {
                                    HRRewardAdapter.this.mImpressionListener.onRewardedVideoAdPlayClicked();
                                }
                            }
                        });
                        if (HRRewardAdapter.this.mLoadListener != null) {
                            HRRewardAdapter.this.mLoadListener.onAdDataLoaded();
                        }
                        if (HRRewardAdapter.this.mLoadListener != null) {
                            HRRewardAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdRenderFail(String str2, int i) {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRRewardAdapter.this.mLoadListener != null) {
                        HRRewardAdapter.this.mLoadListener.onAdLoadError(String.valueOf(i), str2);
                    }
                }

                @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
                public void onReward(Map<String, Object> map2) {
                    if (HRRewardAdapter.this.mImpressionListener != null) {
                        HRRewardAdapter.this.mImpressionListener.onReward();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
                public void onVideoCached() {
                }
            }).loadAd();
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
        return this.rewardVideoAd != null;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, final Map<String, Object> map, Map<String, Object> map2) {
        LogUtil.e(TAG, "serverExtra=" + map.get("slot_id"));
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.reward.HRRewardAdapter.1
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRRewardAdapter.this.loadAd(context, map, null);
            }
        });
    }

    @Override // com.anythink.rewardvideo.unitgroup.api.CustomRewardVideoAdapter
    public void show(Activity activity) {
        RewardVideoAd rewardVideoAd = this.rewardVideoAd;
        if (rewardVideoAd != null) {
            rewardVideoAd.showAd(activity);
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(final Context context, final Map<String, Object> map, Map<String, Object> map2, final ATBiddingListener aTBiddingListener) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.reward.HRRewardAdapter.2
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                if (aTBiddingListener2 != null) {
                    aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                }
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRRewardAdapter.this.loadAd(context, map, aTBiddingListener);
            }
        });
        return true;
    }
}
