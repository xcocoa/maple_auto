package cn.haorui.sdk.platform.hr;

import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.banner.BannerAdLoader;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader;
import cn.haorui.sdk.core.ad.paster.PasterAdLoader;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdLoader;
import cn.haorui.sdk.core.ad.reward.RewardVideoLoader;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.c;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;
import cn.haorui.sdk.core.loader.d;

/* JADX INFO: loaded from: classes.dex */
public class HRSdkPlatform extends c {
    @Override // cn.haorui.sdk.core.c, cn.haorui.sdk.core.e
    public d bannerLoader(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return null;
    }

    @Override // cn.haorui.sdk.core.c
    public cn.haorui.sdk.core.d createConfig() {
        return new HRInitConfig();
    }

    @Override // cn.haorui.sdk.core.c, cn.haorui.sdk.core.e
    public d interstitialLoader(InterstitialAdLoader interstitialAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return null;
    }

    @Override // cn.haorui.sdk.core.c, cn.haorui.sdk.core.e
    public d pasterLoader(PasterAdLoader pasterAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return null;
    }

    @Override // cn.haorui.sdk.core.c, cn.haorui.sdk.core.e
    public d recyclerLoader(RecyclerAdLoader recyclerAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return null;
    }

    @Override // cn.haorui.sdk.core.c, cn.haorui.sdk.core.e
    public d rewardLoader(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return null;
    }

    @Override // cn.haorui.sdk.core.c, cn.haorui.sdk.core.e
    public d splashLoader(SplashAdLoader splashAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo) {
        return null;
    }

    @Override // cn.haorui.sdk.core.e
    public AdType[] support() {
        return new AdType[]{AdType.FEED, AdType.FEED_PRE_RENDER, AdType.FEED_MIX, AdType.BANNER, AdType.SPLASH, AdType.INTERSTITIAL, AdType.PASTER, AdType.REWARD, AdType.FULL_SCREEN_VIDEO, AdType.DRAW};
    }
}
