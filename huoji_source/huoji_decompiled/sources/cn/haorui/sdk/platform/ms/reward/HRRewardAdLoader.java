package cn.haorui.sdk.platform.ms.reward;

import cn.haorui.sdk.core.ad.reward.RewardVideoAd;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListener;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.ms.HRInitManager;
import com.meishu.sdk.core.ad.reward.RewardVideoLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.reward.MsCustomRewardAdapter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HRRewardAdLoader extends MsCustomRewardAdapter {
    private HrCustomRewardAd hrCustomRewardAd;

    public HRRewardAdLoader(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo) {
        super(rewardVideoLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        new cn.haorui.sdk.core.ad.reward.RewardVideoLoader(getContext(), str, new RewardVideoAdListener() { // from class: cn.haorui.sdk.platform.ms.reward.HRRewardAdLoader.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
                if (HRRewardAdLoader.this.hrCustomRewardAd != null) {
                    HRRewardAdLoader hRRewardAdLoader = HRRewardAdLoader.this;
                    hRRewardAdLoader.onAdClosed(hRRewardAdLoader.hrCustomRewardAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HRRewardAdLoader.this.onError(-1, "加载失败");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HRRewardAdLoader.this.hrCustomRewardAd != null) {
                    HRRewardAdLoader hRRewardAdLoader = HRRewardAdLoader.this;
                    hRRewardAdLoader.onAdExposure(hRRewardAdLoader.hrCustomRewardAd);
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
                if (rewardVideoAd != null) {
                    if (rewardVideoAd.getData() != null) {
                        String ecpm = rewardVideoAd.getData().getEcpm();
                        if (HRRewardAdLoader.this.getSdkAdInfo() != null) {
                            HRRewardAdLoader.this.getSdkAdInfo().setEcpm(ecpm);
                        }
                    }
                    rewardVideoAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.ms.reward.HRRewardAdLoader.2.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            HRRewardAdLoader hRRewardAdLoader = HRRewardAdLoader.this;
                            hRRewardAdLoader.onAdClick(hRRewardAdLoader.hrCustomRewardAd);
                        }
                    });
                    HRRewardAdLoader hRRewardAdLoader = HRRewardAdLoader.this;
                    hRRewardAdLoader.hrCustomRewardAd = new HrCustomRewardAd(hRRewardAdLoader, rewardVideoAd);
                    HRRewardAdLoader hRRewardAdLoader2 = HRRewardAdLoader.this;
                    hRRewardAdLoader2.onRenderSuccess(hRRewardAdLoader2.hrCustomRewardAd);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str2, int i) {
                HRRewardAdLoader.this.onRenderFail(i, str2);
            }

            @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
            public void onReward(Map<String, Object> map) {
                if (HRRewardAdLoader.this.hrCustomRewardAd != null) {
                    HRRewardAdLoader hRRewardAdLoader = HRRewardAdLoader.this;
                    hRRewardAdLoader.onReward(hRRewardAdLoader.hrCustomRewardAd, map);
                }
            }

            @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
            public void onVideoCached() {
            }
        }).loadAd();
    }

    public void loadCustomAd(String str, final String str2, String str3) {
        HRInitManager.getInstance().initSdk(((MsCustomRewardAdapter) this).context, str, new HRInitManager.InitCallback() { // from class: cn.haorui.sdk.platform.ms.reward.HRRewardAdLoader.1
            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onError(int i, String str4) {
            }

            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onSuccess() {
                HRRewardAdLoader.this.loadAdWithCallback(str2);
            }
        });
    }
}
