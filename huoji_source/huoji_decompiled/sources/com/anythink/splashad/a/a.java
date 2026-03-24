package com.anythink.splashad.a;

import android.content.Context;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.splashad.api.ATSplashAdExtraInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    public boolean mHasDismiss;

    public abstract void onAdClick(ATAdInfo aTAdInfo);

    public abstract void onAdDismiss(ATAdInfo aTAdInfo, ATSplashAdExtraInfo aTSplashAdExtraInfo);

    public abstract void onAdShow(ATAdInfo aTAdInfo);

    public void onCallbackAdDismiss(ATAdInfo aTAdInfo, ATSplashAdExtraInfo aTSplashAdExtraInfo) {
        if (this.mHasDismiss) {
            return;
        }
        this.mHasDismiss = true;
        onAdDismiss(aTAdInfo, aTSplashAdExtraInfo);
    }

    public abstract void onDeeplinkCallback(ATAdInfo aTAdInfo, boolean z);

    public abstract void onDownloadConfirm(Context context, ATAdInfo aTAdInfo, ATNetworkConfirmInfo aTNetworkConfirmInfo);
}
