package cn.haorui.sdk.platform.hr.banner;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.banner.IBannerAdListener;
import cn.haorui.sdk.core.ad.banner.BannerAdListener;
import cn.haorui.sdk.core.utils.DefaultHttpGetWithNoHandlerCallback;
import cn.haorui.sdk.core.utils.HttpUtil;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.core.utils.MacroUtil;
import cn.haorui.sdk.core.utils.RecordUtil;
import cn.haorui.sdk.core.view.TouchAdContainer;
import cn.haorui.sdk.core.view.TouchPositionListener;
import cn.haorui.sdk.platform.hr.HRPlatformError;

/* JADX INFO: loaded from: classes.dex */
public class BannerAdListenerAdapter implements IBannerAdListener {
    private static final String TAG = "BannerAdListenerAdapter";
    private View adView;
    private HRViewWrapper adWrapper;
    private BannerAdListener bannerAdListener;
    private volatile boolean hasExposed;

    public BannerAdListenerAdapter(@NonNull HRViewWrapper hRViewWrapper, @NonNull BannerAdListener bannerAdListener) {
        this.adWrapper = hRViewWrapper;
        this.bannerAdListener = bannerAdListener;
    }

    @Override // cn.haorui.sdk.adsail_ad.banner.IBannerAdListener
    public void onADClosed() {
        this.bannerAdListener.onAdClosed();
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADError(String str, Integer num) {
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADExposure() {
        View view;
        if (this.hasExposed || (view = this.adView) == null) {
            return;
        }
        view.post(new Runnable() { // from class: cn.haorui.sdk.platform.hr.banner.BannerAdListenerAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                RecordUtil.saveAction(BannerAdListenerAdapter.this.adWrapper.getAdSlot().getPosId(), 3);
                String[] monitorUrl = BannerAdListenerAdapter.this.adWrapper.getAdSlot().getMonitorUrl();
                if (monitorUrl != null) {
                    LogUtil.d(BannerAdListenerAdapter.TAG, "send onAdExposure");
                    for (String str : monitorUrl) {
                        if (!TextUtils.isEmpty(str)) {
                            HttpUtil.asyncGetWithWebViewUA(BannerAdListenerAdapter.this.adWrapper.getContext(), MacroUtil.replaceExposureMacros(MacroUtil.doReplaceUrl(str, BannerAdListenerAdapter.this.adView.getWidth(), BannerAdListenerAdapter.this.adView.getHeight())), new DefaultHttpGetWithNoHandlerCallback());
                        }
                    }
                }
                BannerAdListenerAdapter.this.bannerAdListener.onAdExposure();
                BannerAdListenerAdapter.this.hasExposed = true;
            }
        });
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onADLoaded(HRBannerAd hRBannerAd) {
        this.adView = hRBannerAd.getAdView();
        TouchAdContainer touchAdContainer = new TouchAdContainer(this.adView.getContext());
        touchAdContainer.setTouchPositionListener(new TouchPositionListener(hRBannerAd));
        touchAdContainer.addView(this.adView);
        this.adView = touchAdContainer;
        hRBannerAd.setAdView(touchAdContainer);
        this.bannerAdListener.onAdReady(hRBannerAd);
    }

    @Override // cn.haorui.sdk.adsail_ad.IAdListener
    public void onAdRenderFail(String str, int i) {
        if (this.adWrapper.getAdSlot().getErrorUrl() != null) {
            HttpUtil.asyncGetErrorReport(this.adWrapper.getAdSlot().getErrorUrl()[0], Integer.valueOf(i), str);
        }
        BannerAdListener bannerAdListener = this.bannerAdListener;
        if (bannerAdListener != null) {
            bannerAdListener.onAdPlatformError(new HRPlatformError(str, Integer.valueOf(i)));
            this.bannerAdListener.onAdRenderFail(str, i);
        }
    }
}
