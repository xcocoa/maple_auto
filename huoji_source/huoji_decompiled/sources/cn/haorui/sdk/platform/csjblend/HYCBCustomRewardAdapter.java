package cn.haorui.sdk.platform.csjblend;

import android.app.Activity;
import android.content.Context;
import cn.haorui.sdk.core.ad.reward.RewardVideoAd;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListener;
import cn.haorui.sdk.core.ad.reward.RewardVideoLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.reward.MediationCustomRewardVideoLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationRewardItem;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HYCBCustomRewardAdapter extends MediationCustomRewardVideoLoader {
    private static final String TAG = "HYCBCustomRewardAdapter";
    private RewardVideoAd rewardVideoAd;

    public boolean isClientBidding() {
        return getBiddingType() == 1;
    }

    public void load(Context context, AdSlot adSlot, MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台激励视频，pid=" + mediationCustomServiceConfig.getADNNetworkSlotId());
        new RewardVideoLoader(context, mediationCustomServiceConfig.getADNNetworkSlotId(), new RewardVideoAdListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomRewardAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                HYCBCustomRewardAdapter.this.callRewardVideoAdClosed();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYCBCustomRewardAdapter.this.callLoadFail(-1, "loadAdError");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                HYCBCustomRewardAdapter.this.callRewardVideoAdShow();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(RewardVideoAd rewardVideoAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(RewardVideoAd rewardVideoAd) {
                HYCBCustomRewardAdapter.this.rewardVideoAd = rewardVideoAd;
                if (rewardVideoAd != null) {
                    rewardVideoAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomRewardAdapter.1.2
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HYCBCustomRewardAdapter.this.callRewardVideoAdClick();
                        }
                    });
                    if (!HYCBCustomRewardAdapter.this.isClientBidding()) {
                        HYCBCustomRewardAdapter.this.callLoadSuccess();
                        return;
                    }
                    double d = 0.0d;
                    if (rewardVideoAd.getData() != null) {
                        try {
                            d = Double.parseDouble(rewardVideoAd.getData().getEcpm());
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                    HYCBCustomRewardAdapter.this.callLoadSuccess(d);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYCBCustomRewardAdapter.this.callLoadFail(-2, "AdRenderFail");
            }

            @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
            public void onReward(Map<String, Object> map) {
                HYCBCustomRewardAdapter.this.callRewardVideoRewardVerify(new MediationRewardItem() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomRewardAdapter.1.1
                    public float getAmount() {
                        return 0.0f;
                    }

                    public Map<String, Object> getCustomData() {
                        return null;
                    }

                    public String getRewardName() {
                        return null;
                    }

                    public boolean rewardVerify() {
                        return true;
                    }
                });
            }

            @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
            public void onVideoCached() {
            }
        }).loadAd();
    }

    public void showAd(Activity activity) {
        RewardVideoAd rewardVideoAd = this.rewardVideoAd;
        if (rewardVideoAd != null) {
            rewardVideoAd.showAd(activity);
        }
    }
}
