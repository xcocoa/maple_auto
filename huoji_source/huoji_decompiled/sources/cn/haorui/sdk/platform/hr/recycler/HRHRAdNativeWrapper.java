package cn.haorui.sdk.platform.hr.recycler;

import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.AdNative;
import cn.haorui.sdk.adsail_ad.nativ.NativeAdSlot;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdLoader;
import cn.haorui.sdk.platform.hr.HRAdLoader;

/* JADX INFO: loaded from: classes.dex */
public class HRHRAdNativeWrapper extends HRAdLoader<NativeAdSlot, RecyclerAdLoader, RecyclerAdListener> {
    private static final String TAG = "AdSailAdNativeWrapper";
    private HRAdListenerAdapter HRAdListenerAdapter;
    private AdNative adNative;

    public HRHRAdNativeWrapper(@NonNull RecyclerAdLoader recyclerAdLoader, NativeAdSlot nativeAdSlot) {
        super(recyclerAdLoader, nativeAdSlot);
        this.adNative = new AdNative(recyclerAdLoader.getContext());
    }

    public HRAdListenerAdapter getHRAdListenerAdapter() {
        return this.HRAdListenerAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public void loadAd() {
        if (getLoaderListener() != 0) {
            ((RecyclerAdListener) getLoaderListener()).onAdLoaded(null);
        }
        HRAdListenerAdapter hRAdListenerAdapter = new HRAdListenerAdapter(this, (RecyclerAdListener) getLoaderListener());
        this.HRAdListenerAdapter = hRAdListenerAdapter;
        this.adNative.loadNativeAd((NativeAdSlot) this.adSlot, hRAdListenerAdapter, ((RecyclerAdLoader) getAdLoader()).isShowDetail(), ((RecyclerAdLoader) getAdLoader()).getIsVideoAutoPlay(), ((RecyclerAdLoader) getAdLoader()).getContainerWidth(), ((RecyclerAdLoader) getAdLoader()).getContainerHeight());
    }
}
