package cn.haorui.sdk.platform.hr.reward;

import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.AdNative;
import cn.haorui.sdk.adsail_ad.nativ.INativeAdListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.core.ad.BaseFullScreenVideoAdLoader;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListener;
import cn.haorui.sdk.core.ad.reward.RewardVideoLoader;
import cn.haorui.sdk.platform.hr.HRAdLoader;

/* JADX INFO: loaded from: classes.dex */
public class HRRewardVideoHRAdWrapper extends HRAdLoader<NativeAdSlot, RewardVideoLoader, RewardVideoAdListener> {
    private static final String TAG = "AdSailRewardVideoAdWrapper";
    private INativeAdListener adListener;
    private AdNative adNative;

    public HRRewardVideoHRAdWrapper(@NonNull RewardVideoLoader rewardVideoLoader, @NonNull NativeAdSlot nativeAdSlot) {
        super(rewardVideoLoader, nativeAdSlot);
        this.adNative = new AdNative(rewardVideoLoader.getContext());
    }

    public INativeAdListener getAdSailAdListener() {
        return this.adListener;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [cn.haorui.sdk.core.loader.IAdLoadListener] */
    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public void loadAd() {
        if (getLoaderListener() != 0) {
            ((RewardVideoAdListener) getLoaderListener()).onAdLoaded(null);
        }
        AdListenerAdapter adListenerAdapter = new AdListenerAdapter(this, getLoaderListener(), (NativeAdSlot) this.adSlot) { // from class: cn.haorui.sdk.platform.hr.reward.HRRewardVideoHRAdWrapper.1
            @Override // cn.haorui.sdk.platform.hr.reward.AdListenerAdapter
            public String[] getResponUrl() {
                return ((NativeAdSlot) HRRewardVideoHRAdWrapper.this.adSlot).getResponUrl();
            }
        };
        this.adListener = adListenerAdapter;
        this.adNative.loadRewardVideoAd((NativeAdSlot) this.adSlot, adListenerAdapter, (BaseFullScreenVideoAdLoader) getAdLoader());
    }
}
