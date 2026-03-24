package com.octopus.ad;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.animation.TransitionDirection;
import com.octopus.ad.internal.animation.TransitionType;
import com.octopus.ad.internal.view.BannerAdViewImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class BannerAd implements AdLifeControl, IBidding {
    private final BannerAdViewImpl a;

    @RequiresPermission("android.permission.INTERNET")
    public BannerAd(Context context, String str, BannerAdListener bannerAdListener) {
        BannerAdViewImpl bannerAdViewImpl = new BannerAdViewImpl(context);
        this.a = bannerAdViewImpl;
        bannerAdViewImpl.setBannerAdListener(bannerAdListener);
        bannerAdViewImpl.setAdSlotId(str);
        setTransitionType(TransitionType.MOVEIN);
        setTransitionDirection(TransitionDirection.LEFT);
        setTransitionDuration(600);
        setAutoRefresh(true);
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

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd() {
        this.a.loadAd(new AdRequest.Builder().build().impl());
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
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
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onRestartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onResumeLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStartLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onStopLifeCycle() {
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

    public void setAutoRefresh(boolean z) {
        this.a.setAutoRefresh(z);
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

    public void setTransitionDirection(TransitionDirection transitionDirection) {
        this.a.setTransitionDirection(transitionDirection);
    }

    public void setTransitionDuration(int i) {
        this.a.setTransitionDuration(i);
    }

    public void setTransitionType(TransitionType transitionType) {
        this.a.setTransitionType(transitionType);
    }
}
