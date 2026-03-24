package com.octopus.ad;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.view.BannerAdViewImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class SplashAd implements AdLifeControl, IBidding {
    private final BannerAdViewImpl a;

    @RequiresPermission("android.permission.INTERNET")
    public SplashAd(Context context, String str, ViewGroup viewGroup, SplashAdListener splashAdListener) {
        viewGroup.setPadding(0, 0, 0, 0);
        BannerAdViewImpl bannerAdViewImpl = new BannerAdViewImpl(context, viewGroup, (View) null);
        this.a = bannerAdViewImpl;
        bannerAdViewImpl.setSplashAdListener(splashAdListener);
        bannerAdViewImpl.setAdSlotId(str);
        bannerAdViewImpl.loadAd(new AdRequest.Builder().build().impl());
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        BannerAdViewImpl bannerAdViewImpl = this.a;
        if (bannerAdViewImpl != null) {
            bannerAdViewImpl.cancel();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        onDestroyLifeCycle();
        cancel();
    }

    public String getAdSlotId() {
        return this.a.getAdSlotId();
    }

    public int getPrice() {
        BannerAdViewImpl bannerAdViewImpl = this.a;
        if (bannerAdViewImpl == null) {
            return 0;
        }
        return bannerAdViewImpl.getPrice();
    }

    public String getTagId() {
        BannerAdViewImpl bannerAdViewImpl = this.a;
        if (bannerAdViewImpl == null) {
            return null;
        }
        return bannerAdViewImpl.getTagId();
    }

    public boolean isLoaded() {
        return this.a.isLoaded();
    }

    public boolean isLoading() {
        return this.a.isLoading();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
        this.a.onCreateLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        BannerAdViewImpl bannerAdViewImpl = this.a;
        if (bannerAdViewImpl != null) {
            bannerAdViewImpl.onDestroyLifeCycle();
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onPauseLifeCycle() {
        this.a.onPauseLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
        this.a.onRestartLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
        this.a.onResumeLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
        this.a.onStartLifeCycle();
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
        this.a.onStopLifeCycle();
    }

    public void openAdInNativeBrowser(boolean z) {
        this.a.openAdInNativeBrowser(z);
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i, String str, String str2) {
        BannerAdViewImpl bannerAdViewImpl = this.a;
        if (bannerAdViewImpl == null) {
            return;
        }
        bannerAdViewImpl.sendLossNotice(i, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i) {
        BannerAdViewImpl bannerAdViewImpl = this.a;
        if (bannerAdViewImpl == null) {
            return;
        }
        bannerAdViewImpl.sendWinNotice(i);
    }

    public void setAdSlotId(String str) {
        this.a.setAdSlotId(str);
    }

    public void setChannel(String str) {
        this.a.setChannel(str);
    }

    public void setRequestId(String str) {
        this.a.setRequestId(str);
    }

    public void setTag(String str) {
        this.a.setTag(str);
    }

    public void showAd() {
        this.a.showAd();
    }
}
