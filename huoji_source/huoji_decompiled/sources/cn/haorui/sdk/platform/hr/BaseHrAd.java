package cn.haorui.sdk.platform.hr;

import android.content.Context;
import cn.haorui.sdk.adsail_ad.banner.BannerAdSlot;
import cn.haorui.sdk.core.ad.AdSlot;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.utils.HRConstants;

/* JADX INFO: loaded from: classes.dex */
public class BaseHrAd extends BaseAd implements IAdSailAd {
    public AdSlot adSlot;

    public BaseHrAd(BannerAdSlot bannerAdSlot) {
        super(null, HRConstants.PLATFORM_HR);
        this.adSlot = bannerAdSlot;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public AdSlot getAdSlot() {
        return this.adSlot;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public AdType getAdType() {
        return null;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public Context getContext() {
        return null;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public int getInteractionType() {
        return this.adSlot.getInteractionType();
    }
}
