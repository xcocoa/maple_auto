package cn.haorui.sdk.core.ad.reward;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import cn.haorui.sdk.core.loader.a;
import cn.haorui.sdk.core.loader.d;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RewardVideoAdListenerProxy extends a<RewardVideoAd, RewardVideoAdListener> implements RewardVideoAdListener {
    public RewardVideoAdListenerProxy(@NonNull d dVar, @Nullable RewardVideoAdListener rewardVideoAdListener) {
        super(dVar, rewardVideoAdListener);
    }

    @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
    public void onReward(Map<String, Object> map) {
        K k = this.listener;
        if (k != 0) {
            ((RewardVideoAdListener) k).onReward(map);
        }
    }

    @Override // cn.haorui.sdk.core.ad.reward.RewardVideoAdListener
    public void onVideoCached() {
        K k = this.listener;
        if (k != 0) {
            ((RewardVideoAdListener) k).onVideoCached();
        }
    }
}
