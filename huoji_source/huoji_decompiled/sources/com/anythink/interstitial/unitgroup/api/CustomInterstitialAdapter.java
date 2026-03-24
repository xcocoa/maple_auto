package com.anythink.interstitial.unitgroup.api;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATNetworkConfirmInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomInterstitialAdapter extends ATBaseAdAdapter {
    public CustomInterstitialEventListener mImpressListener;

    public void clearImpressionListener() {
        this.mImpressListener = null;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public final void internalFormatShow(Activity activity, ViewGroup viewGroup, final ATCommonImpressionListener aTCommonImpressionListener) {
        this.mImpressListener = new CustomInterstitialEventListener() { // from class: com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter.1
            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onDeeplinkCallback(boolean z) {
                aTCommonImpressionListener.onDeeplinkCallback(z);
            }

            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                aTCommonImpressionListener.onDownloadConfirm(context, aTNetworkConfirmInfo);
            }

            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onInterstitialAdClicked() {
                aTCommonImpressionListener.onAdClick();
            }

            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onInterstitialAdClose() {
                aTCommonImpressionListener.onAdDismiss();
            }

            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onInterstitialAdShow() {
                aTCommonImpressionListener.onAdImpression();
            }

            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onInterstitialAdVideoEnd() {
                aTCommonImpressionListener.onAdVideoPlayEnd();
            }

            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onInterstitialAdVideoError(String str, String str2) {
                aTCommonImpressionListener.onAdShowFail(str, str2);
            }

            @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialEventListener
            public final void onInterstitialAdVideoStart() {
                aTCommonImpressionListener.onAdVideoPlayStart();
            }
        };
        try {
            show(activity);
        } catch (Throwable th) {
            th.printStackTrace();
            if (this.mImpressListener != null) {
                this.mImpressListener.onInterstitialAdVideoError("", "exception, show failed: " + th.getMessage());
            }
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public final boolean isMixFormatAd() {
        int i = this.mMixedFormatAdType;
        return (i == -1 || i == 3) ? false : true;
    }

    public abstract void show(Activity activity);
}
