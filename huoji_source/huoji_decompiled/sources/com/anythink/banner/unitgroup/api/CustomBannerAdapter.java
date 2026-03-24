package com.anythink.banner.unitgroup.api;

import android.view.View;
import com.anythink.core.api.ATBaseAdAdapter;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomBannerAdapter extends ATBaseAdAdapter {
    public CustomBannerEventListener mImpressionEventListener;

    public abstract View getBannerView();

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean isAdReady() {
        return getBannerView() != null;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean isMixFormatAd() {
        int i = this.mMixedFormatAdType;
        return (i == -1 || i == 2) ? false : true;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public final void releaseLoadResource() {
        super.releaseLoadResource();
    }

    public final void setAdEventListener(CustomBannerEventListener customBannerEventListener) {
        this.mImpressionEventListener = customBannerEventListener;
    }
}
