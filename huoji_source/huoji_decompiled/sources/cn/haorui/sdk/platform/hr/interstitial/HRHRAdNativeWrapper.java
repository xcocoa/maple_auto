package cn.haorui.sdk.platform.hr.interstitial;

import android.util.Log;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.AdNative;
import cn.haorui.sdk.adsail_ad.interstitial.InterstitialAdSlot;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdLoader;
import cn.haorui.sdk.platform.hr.HRAdLoader;

/* JADX INFO: loaded from: classes.dex */
public class HRHRAdNativeWrapper extends HRAdLoader<InterstitialAdSlot, InterstitialAdLoader, InterstitialAdListener> {
    private static final String TAG = "AdSailAdNativeWrapper";
    private AdNative adNative;

    public HRHRAdNativeWrapper(@NonNull InterstitialAdLoader interstitialAdLoader, @NonNull InterstitialAdSlot interstitialAdSlot) {
        super(interstitialAdLoader, interstitialAdSlot);
        this.adNative = new AdNative(interstitialAdLoader.getContext());
    }

    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public void loadAd() {
        Log.e(TAG, "loadAd: ");
        if (getLoaderListener() != 0) {
            ((InterstitialAdListener) getLoaderListener()).onAdLoaded(null);
        }
        this.adNative.loadInterstitialAd(this, new HRAdListenerAdapter(this, (InterstitialAdListener) getLoaderListener()));
    }
}
