package cn.haorui.sdk.platform.hr.banner;

import androidx.annotation.NonNull;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.platform.hr.IAdSailAd;

/* JADX INFO: loaded from: classes.dex */
public class HRBannerAdAdapter extends BaseAd {
    private IAdSailAd nativeBannerAd;

    public HRBannerAdAdapter(@NonNull IAdSailAd iAdSailAd) {
        super(null, HRConstants.PLATFORM_HR);
        this.nativeBannerAd = iAdSailAd;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public void setInteractionListener(InteractionListener interactionListener) {
        super.setInteractionListener(interactionListener);
        this.nativeBannerAd.setInteractionListener(interactionListener);
    }
}
