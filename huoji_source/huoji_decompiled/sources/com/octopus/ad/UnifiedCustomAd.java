package com.octopus.ad;

import android.content.Context;
import androidx.annotation.RequiresPermission;
import com.octopus.ad.internal.network.a;

/* JADX INFO: loaded from: classes2.dex */
public final class UnifiedCustomAd implements AdLifeControl, IBidding {
    private final com.octopus.ad.internal.nativead.a a;

    @RequiresPermission("android.permission.INTERNET")
    public UnifiedCustomAd(Context context, String str, NativeAdListener nativeAdListener) {
        com.octopus.ad.internal.nativead.a aVar = new com.octopus.ad.internal.nativead.a(context, str, 1);
        this.a = aVar;
        aVar.a(nativeAdListener);
    }

    @Override // com.octopus.ad.AdLifeControl
    public void cancel() {
        com.octopus.ad.internal.nativead.a aVar = this.a;
        if (aVar != null) {
            aVar.g();
            this.a.a.a();
            this.a.cancel(true);
        }
    }

    @Override // com.octopus.ad.AdLifeControl
    public void destroy() {
        cancel();
    }

    public String getAdSlotId() {
        return this.a.b();
    }

    public int getPrice() {
        com.octopus.ad.internal.nativead.a aVar = this.a;
        if (aVar == null) {
            return 0;
        }
        return aVar.c();
    }

    public String getTagId() {
        com.octopus.ad.internal.nativead.a aVar = this.a;
        if (aVar == null) {
            return null;
        }
        return aVar.d();
    }

    @RequiresPermission("android.permission.INTERNET")
    public void loadAd() {
        this.a.a((a.C0197a) null);
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onCreateLifeCycle() {
    }

    @Override // com.octopus.ad.AdLifeControl
    public void onDestroyLifeCycle() {
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
        this.a.b(z);
    }

    @Override // com.octopus.ad.IBidding
    public void sendLossNotice(int i, String str, String str2) {
        com.octopus.ad.internal.nativead.a aVar = this.a;
        if (aVar == null) {
            return;
        }
        aVar.sendLossNotice(i, str, str2);
    }

    @Override // com.octopus.ad.IBidding
    public void sendWinNotice(int i) {
        com.octopus.ad.internal.nativead.a aVar = this.a;
        if (aVar == null) {
            return;
        }
        aVar.sendWinNotice(i);
    }

    public void setAdSlotId(String str) {
        this.a.a(str);
    }
}
