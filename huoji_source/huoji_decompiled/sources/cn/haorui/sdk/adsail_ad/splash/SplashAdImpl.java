package cn.haorui.sdk.adsail_ad.splash;

import android.content.Context;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.ad.AdType;
import cn.haorui.sdk.core.ad.splash.SplashAd;
import cn.haorui.sdk.core.ad.splash.SplashAdLoader;
import cn.haorui.sdk.core.utils.HRConstants;
import cn.haorui.sdk.core.utils.LogUtil;
import cn.haorui.sdk.platform.hr.splash.HRHRAdNativeWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SplashAdImpl extends SplashAd implements NativeSplashAd {
    private static final String TAG = "SplashAdImpl";
    private HRSplashRootView adRoot;
    private SplashAdSlot adSlot;
    private boolean autoShow;
    private boolean isAnimFinish;
    private boolean isVideoFinish;
    private IAdShowListener listener;
    private NormalMediaView mediaView;
    private List<IAdShowListener> showListeners;
    private boolean showed;
    private SplashSkipView skipView;
    private HRHRAdNativeWrapper wrapper;

    public interface IAdShowListener {
        void onShow();
    }

    public SplashAdImpl(@NonNull SplashAdSlot splashAdSlot, HRHRAdNativeWrapper hRHRAdNativeWrapper, boolean z) {
        super(null, HRConstants.PLATFORM_HR);
        this.showListeners = new ArrayList();
        this.adSlot = splashAdSlot;
        this.wrapper = hRHRAdNativeWrapper;
        this.autoShow = z;
    }

    public static boolean checkContainerVisibility(View view) {
        if (view == null) {
            return false;
        }
        String str = TAG;
        LogUtil.d(str, "{Visibility: " + view.getVisibility() + ", Shown: " + view.isShown() + ", Alpha: " + view.getAlpha() + ", WindowVisibility: " + view.getWindowVisibility() + ", MeasuredWidth: " + view.getMeasuredWidth() + ", MeasuredHeight: " + view.getMeasuredHeight() + "}");
        if (view.getVisibility() != 0 || !view.isShown() || view.getWindowVisibility() != 0) {
            return false;
        }
        Rect rect = new Rect();
        boolean globalVisibleRect = view.getGlobalVisibleRect(rect);
        LogUtil.d(str, "{cover: " + globalVisibleRect + ", rect: " + rect + "}");
        if (!globalVisibleRect || rect.width() < view.getMeasuredWidth() || rect.height() < view.getMeasuredHeight()) {
            return false;
        }
        DisplayMetrics displayMetrics = AdSdk.getContext().getResources().getDisplayMetrics();
        float fWidth = ((rect.width() * rect.height()) / displayMetrics.widthPixels) / displayMetrics.heightPixels;
        LogUtil.d(str, "{rect.width: " + rect.width() + ", rect.height: " + rect.height() + ", screen.width: " + displayMetrics.widthPixels + ", screen.height: " + displayMetrics.heightPixels + ", proportion: " + fWidth + "}");
        return 0.75d <= ((double) fWidth);
    }

    public HRSplashRootView getAdRoot() {
        return this.adRoot;
    }

    @Override // cn.haorui.sdk.adsail_ad.splash.NativeSplashAd, cn.haorui.sdk.platform.hr.IAdSailAd
    public SplashAdSlot getAdSlot() {
        return this.adSlot;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public AdType getAdType() {
        return AdType.SPLASH;
    }

    @Override // cn.haorui.sdk.platform.hr.IAdSailAd
    public Context getContext() {
        return this.adView.getContext();
    }

    @Override // cn.haorui.sdk.adsail_ad.splash.NativeSplashAd, cn.haorui.sdk.platform.hr.IAdSailAd
    public int getInteractionType() {
        return this.adSlot.getInteractionType();
    }

    public boolean getIsAnimFinish() {
        return this.isAnimFinish;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean getIsHideSkipBtn() {
        return ((SplashAdLoader) this.wrapper.getAdLoader()).getIsHideSkipBtn();
    }

    public boolean getIsVideoFinish() {
        return this.isVideoFinish;
    }

    public NormalMediaView getMediaView() {
        return this.mediaView;
    }

    public void pause() {
        this.skipView.manualPause();
    }

    public void resume() {
        this.skipView.manualResume();
    }

    public void setAdRoot(HRSplashRootView hRSplashRootView) {
        this.adRoot = hRSplashRootView;
    }

    @Override // cn.haorui.sdk.core.ad.BaseAd, cn.haorui.sdk.core.ad.IAd
    public void setAdView(View view) {
        this.adView = view;
    }

    public void setAnimFinish(boolean z) {
        this.isAnimFinish = z;
    }

    public void setMediaView(NormalMediaView normalMediaView) {
        this.mediaView = normalMediaView;
    }

    public void setOnAdShowListener(IAdShowListener iAdShowListener) {
        this.showListeners.add(iAdShowListener);
    }

    public void setSkipView(SplashSkipView splashSkipView) {
        this.skipView = splashSkipView;
    }

    public void setVideoFinish(boolean z) {
        this.isVideoFinish = z;
    }

    @Override // cn.haorui.sdk.core.ad.splash.ISplashAd
    public void showAd(ViewGroup viewGroup) {
        setAdContainer(viewGroup);
        List<IAdShowListener> list = this.showListeners;
        if (list == null || list.size() <= 0) {
            return;
        }
        Iterator<IAdShowListener> it = this.showListeners.iterator();
        while (it.hasNext()) {
            it.next().onShow();
        }
    }

    public void showAdReal() {
        if (this.showed || this.adContainer == null) {
            return;
        }
        View view = this.adView;
        if (view != null && view.getParent() != null && (this.adView.getParent() instanceof ViewGroup)) {
            ((ViewGroup) this.adView.getParent()).removeView(this.adView);
        }
        this.adContainer.addView(this.adView);
        this.adRoot.setVisibility(0);
        this.skipView.start();
        this.showed = true;
    }
}
