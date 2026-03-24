package com.octopus.ad;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.AdRequest;
import com.octopus.ad.internal.view.InterstitialAdViewImpl;

/* JADX INFO: loaded from: classes2.dex */
public final class InterstitialAd implements AdLifeControl, IBidding {
    private final InterstitialAdViewImpl a;

    @RequiresPermission("android.permission.INTERNET")
    public InterstitialAd(Context context, String str, InterstitialAdListener interstitialAdListener) {
        InterstitialAdViewImpl interstitialAdViewImpl = new InterstitialAdViewImpl(context, false, false);
        this.a = interstitialAdViewImpl;
        interstitialAdViewImpl.setAdSlotId(str);
        interstitialAdViewImpl.setInterstitialAdListener(interstitialAdListener);
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        this.a.cancel();
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
        return this.a.getPrice();
    }

    public String getTagId() {
        return this.a.getTagId();
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

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd(AdRequest adRequest) {
        this.a.loadAd(adRequest.impl());
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
        this.a.onDestroyLifeCycle();
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
        this.a.setOpensNativeBrowser(z);
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

    public void setChannel(String str) {
        this.a.setChannel(str);
    }

    public void setRequestId(String str) {
        this.a.setRequestId(str);
    }

    public void setTag(String str) {
        this.a.setTag(str);
    }

    public void show(Activity activity) {
        this.a.show(activity);
    }
}
