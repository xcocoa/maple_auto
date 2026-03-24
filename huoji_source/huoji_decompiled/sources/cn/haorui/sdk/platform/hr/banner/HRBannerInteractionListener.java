package cn.haorui.sdk.platform.hr.banner;

import androidx.annotation.NonNull;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.platform.hr.IAdSailAd;

/* JADX INFO: loaded from: classes.dex */
public class HRBannerInteractionListener implements InteractionListener {
    private static final String TAG = "AdSailBannerInteractionListener";
    private InteractionListener interactionListener;
    private IAdSailAd nativeAd;

    public HRBannerInteractionListener(@NonNull IAdSailAd iAdSailAd, InteractionListener interactionListener) {
        this.nativeAd = iAdSailAd;
        this.interactionListener = interactionListener;
    }

    @Override // cn.haorui.sdk.core.loader.InteractionListener
    public void onAdClicked() {
        InteractionListener interactionListener = this.interactionListener;
        if (interactionListener != null) {
            interactionListener.onAdClicked();
        }
    }
}
