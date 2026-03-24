package cn.haorui.sdk.platform.hr.splash;

import android.view.View;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.AdNative;
import cn.haorui.sdk.adsail_ad.splash.SplashAdSlot;
import cn.haorui.sdk.core.ad.splash.SplashAdListener;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.platform.hr.HRAdLoader;

/* JADX INFO: loaded from: classes.dex */
public class HRHRAdNativeWrapper extends HRAdLoader<SplashAdSlot, SplashAdLoader, SplashAdListener> {
    private static final String TAG = "AdSailAdNativeWrapper";
    private AdNative adNative;

    public HRHRAdNativeWrapper(@NonNull SplashAdLoader splashAdLoader, SplashAdSlot splashAdSlot) {
        super(splashAdLoader, splashAdSlot);
        this.adNative = new AdNative(splashAdLoader.getContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // cn.haorui.sdk.core.loader.IAdLoader
    public void loadAd() {
        View view = null;
        ((SplashAdListener) getLoaderListener()).onAdLoaded(null);
        boolean zBooleanValue = ((Boolean) this.localParams.get(SplashAdLoader.KEY_AUTO_SHOW)).booleanValue();
        SplashAdListenerAdapter splashAdListenerAdapter = new SplashAdListenerAdapter(this, (SplashAdListener) getLoaderListener(), zBooleanValue);
        if (zBooleanValue && ((SplashAdLoader) getAdLoader()).getAdContainer() == null) {
            splashAdListenerAdapter.onAdRenderFail("未指定广告容器", -1);
            return;
        }
        Object obj = this.localParams.get(SplashAdLoader.KEY_SKIP_BUTTON);
        if (obj != null && (obj instanceof View)) {
            view = (View) obj;
            view.setVisibility(4);
        }
        this.adNative.loadSplashAd((SplashAdSlot) this.adSlot, splashAdListenerAdapter, this, view, zBooleanValue);
    }
}
