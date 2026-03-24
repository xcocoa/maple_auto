package cn.haorui.sdk.platform.hr.recycler;

import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdData;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdInteractionListener;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import cn.haorui.sdk.core.utils.ClickHandler;

/* JADX INFO: loaded from: classes.dex */
public class HRInteractionListenerAdapter implements NativeAdInteractionListener {
    private NativeAdData nativeAdData;
    private RecylcerAdInteractionListener recylcerAdInteractionListener;

    public HRInteractionListenerAdapter(@NonNull NativeAdData nativeAdData, RecylcerAdInteractionListener recylcerAdInteractionListener) {
        this.nativeAdData = nativeAdData;
        this.recylcerAdInteractionListener = recylcerAdInteractionListener;
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdInteractionListener
    public void onADExposure() {
    }

    @Override // cn.haorui.sdk.adsail_ad.nativ.NativeAdInteractionListener
    public void onAdClicked() {
        try {
            if (this.recylcerAdInteractionListener != null && this.nativeAdData.getAdSlot().getCbc() == 0) {
                this.recylcerAdInteractionListener.onAdClicked();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ClickHandler.handleClick(this.nativeAdData);
    }
}
