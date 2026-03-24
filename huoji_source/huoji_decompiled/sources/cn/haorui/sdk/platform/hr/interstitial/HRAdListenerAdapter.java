package cn.haorui.sdk.platform.hr.interstitial;

import android.text.TextUtils;
import android.view.View;
import cn.haorui.sdk.adsail_ad.interstitial.IInterstitialAdListener;
import cn.haorui.sdk.adsail_ad.interstitial.NativeInterstitialAd;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import cn.haorui.sdk.core.utils.RecordUtil;
import cn.haorui.sdk.platform.hr.HRPlatformError;

/* JADX INFO: loaded from: classes.dex */
public class HRAdListenerAdapter implements IInterstitialAdListener {
    private static final String TAG = "AdSailAdListenerAdapter";
    private InterstitialAdListener adListener;
    private View adView;
    private HRHRAdNativeWrapper adWrapper;
    private volatile boolean hasExposed;

    public HRAdListenerAdapter(HRHRAdNativeWrapper hRHRAdNativeWrapper, InterstitialAdListener interstitialAdListener) {
        this.adWrapper = hRHRAdNativeWrapper;
        this.adListener = interstitialAdListener;
    }

    @Override // cn.haorui.sdk.adsail_ad.interstitial.IInterstitialAdListener
    public void onADClosed() {
        InterstitialAdListener interstitialAdListener = this.adListener;
        if (interstitialAdListener != null) {
            interstitialAdListener.onAdClosed();
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADError(String str, Integer num) {
        if (this.adWrapper.getAdSlot().getErrorUrl() != null) {
            HttpUtil.asyncGetErrorReport(this.adWrapper.getAdSlot().getErrorUrl()[0], num, str);
        }
        new HRPlatformError(str, num).post(this.adListener);
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADExposure() {
        if (this.hasExposed) {
            return;
        }
        RecordUtil.saveAction(this.adWrapper.getAdSlot().getPosId(), 3);
        String[] monitorUrl = this.adWrapper.getAdSlot().getMonitorUrl();
        if (monitorUrl != null) {
            LogUtil.d(TAG, "send onADExposure");
            for (String str : monitorUrl) {
                if (!TextUtils.isEmpty(str)) {
                    HttpUtil.asyncGetWithWebViewUA(this.adWrapper.getContext(), MacroUtil.replaceExposureMacros(str), new DefaultHttpGetWithNoHandlerCallback());
                }
            }
        }
        InterstitialAdListener interstitialAdListener = this.adListener;
        if (interstitialAdListener != null) {
            interstitialAdListener.onAdExposure();
        }
        this.hasExposed = true;
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADLoaded(NativeInterstitialAd nativeInterstitialAd) {
        InterstitialAdListener interstitialAdListener = this.adListener;
        if (interstitialAdListener != null) {
            HRInterstitialAdAdapter hRInterstitialAdAdapter = new HRInterstitialAdAdapter(nativeInterstitialAd, interstitialAdListener);
            View adView = nativeInterstitialAd.getAdView();
            this.adView = adView;
            hRInterstitialAdAdapter.setAdView(adView);
            this.adListener.onAdReady(hRInterstitialAdAdapter);
        }
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onAdRenderFail(String str, int i) {
        if (this.adWrapper.getAdSlot().getErrorUrl() != null) {
            HttpUtil.asyncGetErrorReport(this.adWrapper.getAdSlot().getErrorUrl()[0], Integer.valueOf(i), str);
        }
        InterstitialAdListener interstitialAdListener = this.adListener;
        if (interstitialAdListener != null) {
            interstitialAdListener.onAdPlatformError(new HRPlatformError(str, Integer.valueOf(i)));
            this.adListener.onAdRenderFail(str, i);
        }
    }
}
