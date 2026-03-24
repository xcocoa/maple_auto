package cn.haorui.sdk.core;

import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.banner.BannerAdLoader;
import cn.haorui.sdk.core.ad.draw.DrawAdLoader;
import cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader;
import cn.haorui.sdk.core.ad.paster.PasterAdLoader;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdLoader;
import cn.haorui.sdk.core.ad.reward.RewardVideoLoader;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.domain.HRAdInfo;
import cn.haorui.sdk.core.domain.SdkAdInfo;

/* JADX INFO: loaded from: classes.dex */
public interface e {
    cn.haorui.sdk.core.loader.d bannerLoader(BannerAdLoader bannerAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    d config();

    cn.haorui.sdk.core.loader.d drawLoader(DrawAdLoader drawAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    cn.haorui.sdk.core.loader.d fullScreenVideoLoader(FullScreenVideoAdLoader fullScreenVideoAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    cn.haorui.sdk.core.loader.d interstitialLoader(InterstitialAdLoader interstitialAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    cn.haorui.sdk.core.loader.d pasterLoader(PasterAdLoader pasterAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    cn.haorui.sdk.core.loader.d recyclerLoader(RecyclerAdLoader recyclerAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    cn.haorui.sdk.core.loader.d rewardLoader(RewardVideoLoader rewardVideoLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    cn.haorui.sdk.core.loader.d splashLoader(SplashAdLoader splashAdLoader, SdkAdInfo sdkAdInfo, HRAdInfo hRAdInfo);

    AdType[] support();
}
