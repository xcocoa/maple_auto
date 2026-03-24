package cn.haorui.sdk.core.ad.reward;

import android.content.Context;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.core.a;
import cn.haorui.sdk.core.ad.BaseFullScreenVideoAdLoader;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.d;
import cn.haorui.sdk.platform.hr.reward.HRRewardVideoHRAdWrapper;

/* JADX INFO: loaded from: classes.dex */
public class RewardVideoLoader extends BaseFullScreenVideoAdLoader<RewardVideoAdListener> {
    private static final String TAG = "RewardVideoLoader";

    public RewardVideoLoader(@NonNull Context context, @NonNull String str, RewardVideoAdListener rewardVideoAdListener) {
        super(context, str, rewardVideoAdListener);
    }

    @Override // cn.haorui.sdk.core.ad.BaseFullScreenVideoAdLoader
    public d createAdSailDelegateInternal(NativeAdSlot nativeAdSlot) {
        return new HRRewardVideoHRAdWrapper(this, nativeAdSlot);
    }

    @Override // cn.haorui.sdk.core.loader.b
    public d createDelegate(SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return a.a(sdkAdInfo.getSdk()).rewardLoader(this, sdkAdInfo, hRAdInfo);
    }
}
