package com.octopus.ad;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.view.InterstitialAdViewImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class RewardVideoAd implements IBidding, IRewardVideoAd {
    private final InterstitialAdViewImpl a;

    @RequiresPermission("android.permission.INTERNET")
    public RewardVideoAd(Context context, String str, RewardVideoAdListener rewardVideoAdListener) {
        InterstitialAdViewImpl interstitialAdViewImpl = new InterstitialAdViewImpl(context, true, false);
        this.a = interstitialAdViewImpl;
        interstitialAdViewImpl.setAdSlotId(str);
        interstitialAdViewImpl.setRewardVideoAdListener(rewardVideoAdListener);
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void destroy() {
        this.a.destroy();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public int getPrice() {
        return this.a.getPrice();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public String getTagId() {
        return this.a.getTagId();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public boolean isLoaded() {
        return this.a.isLoaded();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    @RequiresPermission("android.permission.INTERNET")
    public void loadAd() {
        this.a.loadAd(new AdRequest.Builder().build().impl());
    }

    public void openAdInNativeBrowser(boolean z) {
        this.a.openAdInNativeBrowser(z);
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void pause() {
        this.a.activityOnPause();
    }

    @Override // com.octopus.ad.IRewardVideoAd
    public void resume() {
        this.a.activityOnResume();
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i, String str, String str2) {
        InterstitialAdViewImpl interstitialAdViewImpl = this.a;
        if (interstitialAdViewImpl == null) {
            return;
        }
        interstitialAdViewImpl.sendLossNotice(i, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i) {
        InterstitialAdViewImpl interstitialAdViewImpl = this.a;
        if (interstitialAdViewImpl == null) {
            return;
        }
        interstitialAdViewImpl.sendWinNotice(i);
    }

    @Override // com.octopus.ad.IRewardVideoAd
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

    @Override // com.octopus.ad.IRewardVideoAd
    public void show(Activity activity) {
        if (isLoaded()) {
            this.a.show(activity);
        }
    }
}
