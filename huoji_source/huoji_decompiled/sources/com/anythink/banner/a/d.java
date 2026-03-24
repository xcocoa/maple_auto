package com.anythink.banner.a;

import android.content.Context;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.api.ATNetworkConfirmInfo;

/* JADX INFO: loaded from: classes.dex */
public interface d {
    void onBannerClicked(CustomBannerAdapter customBannerAdapter);

    void onBannerClose(CustomBannerAdapter customBannerAdapter);

    void onBannerShow(CustomBannerAdapter customBannerAdapter, boolean z);

    void onDeeplinkCallback(CustomBannerAdapter customBannerAdapter, boolean z);

    void onDownloadConfirm(Context context, CustomBannerAdapter customBannerAdapter, ATNetworkConfirmInfo aTNetworkConfirmInfo);
}
