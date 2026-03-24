package cn.haorui.sdk.platform.hr.fullscreenvideo;

import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.AdNative;
import cn.haorui.sdk.adsail_ad.nativ.INativeAdListener;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdListener;
import cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdLoader;
import cn.haorui.sdk.platform.hr.HRAdLoader;
import cn.haorui.sdk.platform.hr.reward.AdListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HRFullScreenVideoHRAdWrapper extends HRAdLoader<NativeAdSlot, FullScreenVideoAdLoader, FullScreenVideoAdListener> {
    private static final String TAG = "AdSailFullScreenVideoAdWrapper";
    private INativeAdListener adListener;
    private AdNative adNative;

    public HRFullScreenVideoHRAdWrapper(@NonNull FullScreenVideoAdLoader fullScreenVideoAdLoader, @NonNull NativeAdSlot nativeAdSlot) {
        super(fullScreenVideoAdLoader, nativeAdSlot);
        this.adNative = new AdNative(fullScreenVideoAdLoader.getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [cn.haorui.sdk.core.loader.IAdLoadListener] */
    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public void loadAd() {
        if (getLoaderListener() != 0) {
            ((FullScreenVideoAdListener) getLoaderListener()).onAdLoaded(null);
        }
        AdListenerAdapter adListenerAdapter = new AdListenerAdapter(this, getLoaderListener(), (NativeAdSlot) this.adSlot) { // from class: cn.haorui.sdk.platform.hr.fullscreenvideo.HRFullScreenVideoHRAdWrapper.1
            @Override // cn.haorui.sdk.platform.hr.reward.AdListenerAdapter
            public String[] getResponUrl() {
                return ((NativeAdSlot) HRFullScreenVideoHRAdWrapper.this.adSlot).getResponUrl();
            }
        };
        this.adListener = adListenerAdapter;
        this.adNative.loadFullScreenVideoAd((NativeAdSlot) this.adSlot, adListenerAdapter, (FullScreenVideoAdLoader) getAdLoader());
    }
}
