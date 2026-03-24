package cn.haorui.sdk.adsail_ad.splash;

import cn.haorui.sdk.core.ad.AdSlot;
import cn.haorui.sdk.platform.hr.IAdSailAd;

/* JADX INFO: loaded from: classes.dex */
public interface NativeSplashAd extends IAdSailAd {
    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    AdSlot getAdSlot();

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    int getInteractionType();
}
