package cn.haorui.sdk.core.ad.reward;

import cn.haorui.sdk.core.loader.IAdLoadListener;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public interface RewardVideoAdListener extends IAdLoadListener<RewardVideoAd> {
    void onReward(Map<String, Object> map);

    void onVideoCached();
}
