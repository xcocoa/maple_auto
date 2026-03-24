package cn.haorui.sdk.platform.ms.reward;

import android.app.Activity;
import cn.haorui.sdk.core.ad.reward.RewardVideoAd;
import com.meishu.sdk.platform.custom.reward.MsCustomRewardAd;
import com.meishu.sdk.platform.custom.reward.MsCustomRewardAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomRewardAd extends MsCustomRewardAd {
    private RewardVideoAd rewardVideoAd;

    public HrCustomRewardAd(MsCustomRewardAdapter msCustomRewardAdapter, RewardVideoAd rewardVideoAd) {
        super(msCustomRewardAdapter);
        this.rewardVideoAd = rewardVideoAd;
    }

    public void destroy() {
    }

    public void showAd(Activity activity) {
        RewardVideoAd rewardVideoAd = this.rewardVideoAd;
        if (rewardVideoAd != null) {
            rewardVideoAd.showAd(activity);
        }
    }
}
