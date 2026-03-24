package com.anythink.interstitial.a;

import android.content.Context;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATNetworkConfirmInfo;

/* JADX INFO: loaded from: classes.dex */
public final class b implements ATCommonImpressionListener {
    public e a;

    public b(e eVar) {
        this.a = eVar;
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onAdClick() {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onInterstitialAdClicked();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onAdDismiss() {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onInterstitialAdClose();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onAdImpression() {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onInterstitialAdShow();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onAdReward() {
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onAdShowFail(String str, String str2) {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onInterstitialAdVideoError(str, str2);
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onAdVideoPlayEnd() {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onInterstitialAdVideoEnd();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onAdVideoPlayStart() {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onInterstitialAdVideoStart();
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onDeeplinkCallback(boolean z) {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onDeeplinkCallback(z);
        }
    }

    @Override // com.anythink.core.api.ATCommonImpressionListener
    public final void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
        e eVar = this.a;
        if (eVar != null) {
            eVar.onDownloadConfirm(context, aTNetworkConfirmInfo);
        }
    }
}
