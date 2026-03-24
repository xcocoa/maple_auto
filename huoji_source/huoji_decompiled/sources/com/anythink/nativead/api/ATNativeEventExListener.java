package com.anythink.nativead.api;

import com.anythink.core.api.ATAdInfo;

/* JADX INFO: loaded from: classes.dex */
public interface ATNativeEventExListener extends ATNativeEventListener {
    void onDeeplinkCallback(ATNativeAdView aTNativeAdView, ATAdInfo aTAdInfo, boolean z);
}
