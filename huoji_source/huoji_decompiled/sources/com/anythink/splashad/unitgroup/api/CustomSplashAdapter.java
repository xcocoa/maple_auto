package com.anythink.splashad.unitgroup.api;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ATCommonImpressionListener;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.splashad.api.ATSplashSkipInfo;
import com.anythink.splashad.api.IATSplashEyeAd;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomSplashAdapter extends ATBaseAdAdapter {
    public ATSplashSkipInfo mATSplashSkipInfo;
    public CustomSplashEventListener mImpressionListener;

    public final void cleanImpressionListener() {
    }

    public IATSplashEyeAd getSplashEyeAd() {
        return null;
    }

    public final ATSplashSkipInfo getSplashSkipInfo() {
        return this.mATSplashSkipInfo;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public final void internalFormatShow(Activity activity, ViewGroup viewGroup, final ATCommonImpressionListener aTCommonImpressionListener) {
        this.mImpressionListener = new CustomSplashEventListener() { // from class: com.anythink.splashad.unitgroup.api.CustomSplashAdapter.1
            @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
            public final void onDeeplinkCallback(boolean z) {
                aTCommonImpressionListener.onDeeplinkCallback(z);
            }

            @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
            public final void onDownloadConfirm(Context context, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                aTCommonImpressionListener.onDownloadConfirm(context, aTNetworkConfirmInfo);
            }

            @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
            public final void onSplashAdClicked() {
                aTCommonImpressionListener.onAdClick();
            }

            @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
            public final void onSplashAdDismiss() {
                aTCommonImpressionListener.onAdDismiss();
            }

            @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
            public final void onSplashAdShow() {
                aTCommonImpressionListener.onAdImpression();
            }

            @Override // com.anythink.splashad.unitgroup.api.CustomSplashEventListener
            public final void onSplashAdShowFail(AdError adError) {
                aTCommonImpressionListener.onAdShowFail(adError.getPlatformCode(), adError.getPlatformMSG());
            }
        };
        show(activity, viewGroup);
    }

    public final boolean isCustomSkipView() {
        ATSplashSkipInfo aTSplashSkipInfo = this.mATSplashSkipInfo;
        if (aTSplashSkipInfo != null) {
            return aTSplashSkipInfo.canUseCustomSkipView();
        }
        return false;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public final boolean isMixFormatAd() {
        int i = this.mMixedFormatAdType;
        return (i == -1 || i == 4) ? false : true;
    }

    public boolean isSupportCustomSkipView() {
        return getMixedFormatAdType() == 0;
    }

    public final void setSplashSkipInfo(ATSplashSkipInfo aTSplashSkipInfo) {
        this.mATSplashSkipInfo = aTSplashSkipInfo;
    }

    public abstract void show(Activity activity, ViewGroup viewGroup);

    public void startSplashCustomSkipViewClickEye() {
    }
}
