package com.anythink.banner.api;

import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.AdError;

/* JADX INFO: loaded from: classes.dex */
public interface ATBannerListener {
    void onBannerAutoRefreshFail(AdError adError);

    void onBannerAutoRefreshed(ATAdInfo aTAdInfo);

    void onBannerClicked(ATAdInfo aTAdInfo);

    void onBannerClose(ATAdInfo aTAdInfo);

    void onBannerFailed(AdError adError);

    void onBannerLoaded();

    void onBannerShow(ATAdInfo aTAdInfo);
}
