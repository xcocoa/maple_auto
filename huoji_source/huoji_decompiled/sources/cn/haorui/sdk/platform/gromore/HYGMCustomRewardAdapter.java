package cn.haorui.sdk.platform.gromore;

import android.app.Activity;
import android.content.Context;
import cn.haorui.sdk.core.ad.reward.RewardVideoAd;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListener;
import cn.haorui.sdk.core.ad.reward.RewardVideoLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.msdk.api.reward.RewardItem;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.custom.reward.GMCustomRewardAdapter;
import com.bytedance.msdk.api.v2.slot.GMAdSlotRewardVideo;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HYGMCustomRewardAdapter extends GMCustomRewardAdapter {
    private static final String TAG = "HYGMCustomRewardAdapter";
    private RewardVideoAd rewardVideoAd;

    public void load(Context context, GMAdSlotRewardVideo gMAdSlotRewardVideo, GMCustomServiceConfig gMCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台激励视频，pid=" + gMCustomServiceConfig.getADNNetworkSlotId());
        new RewardVideoLoader(context, gMCustomServiceConfig.getADNNetworkSlotId(), new RewardVideoAdListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomRewardAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                HYGMCustomRewardAdapter.this.callRewardedAdClosed();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYGMCustomRewardAdapter.this.callLoadFail(new GMCustomAdError(-1, "loadAdError"));
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                HYGMCustomRewardAdapter.this.callRewardedAdShow();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(RewardVideoAd rewardVideoAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(RewardVideoAd rewardVideoAd) {
                HYGMCustomRewardAdapter.this.rewardVideoAd = rewardVideoAd;
                if (rewardVideoAd != null) {
                    rewardVideoAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomRewardAdapter.1.2
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HYGMCustomRewardAdapter.this.callRewardClick();
                        }
                    });
                    double d = 0.0d;
                    if (rewardVideoAd.getData() != null) {
                        try {
                            d = Double.parseDouble(rewardVideoAd.getData().getEcpm());
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                    HYGMCustomRewardAdapter.this.callLoadSuccess(d);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYGMCustomRewardAdapter.this.callLoadFail(new GMCustomAdError(-2, "AdRenderFail"));
            }

            @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
            public void onReward(Map<String, Object> map) {
                HYGMCustomRewardAdapter.this.callRewardVerify(new RewardItem() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomRewardAdapter.1.1
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
