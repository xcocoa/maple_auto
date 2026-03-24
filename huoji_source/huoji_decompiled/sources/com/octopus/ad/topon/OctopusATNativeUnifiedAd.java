package com.octopus.ad.topon;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.nativead.api.ATNativePrepareInfo;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.octopus.ad.NativeAdResponse;
import com.octopus.ad.internal.nativead.NativeAdEventListener;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATNativeUnifiedAd extends CustomNativeAd {
    private static final String TAG = "OctopusATNativeUnifiedAd";
    private NativeAdResponse mAdResponse;
    private Context mContext;

    public OctopusATNativeUnifiedAd(Context context, NativeAdResponse nativeAdResponse) {
        this.mContext = context.getApplicationContext();
        this.mAdResponse = nativeAdResponse;
        setAdData();
    }

    private void getChildView(List<View> list, View view) {
        if (!(view instanceof ViewGroup)) {
            list.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            getChildView(list, viewGroup.getChildAt(i));
        }
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void clear(View view) {
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.BaseAd
    public void destroy() {
        this.mContext = null;
        this.mAdResponse = null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.core.api.IATThirdPartyMaterial
    public Bitmap getAdLogo() {
        NativeAdResponse nativeAdResponse = this.mAdResponse;
        if (nativeAdResponse != null) {
            return nativeAdResponse.getLogo(this.mContext);
        }
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a, com.anythink.core.api.IATThirdPartyMaterial
    public View getAdMediaView(Object... objArr) {
        return null;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public boolean isNativeExpress() {
        return false;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (view == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        List<View> clickViewList = aTNativePrepareInfo.getClickViewList();
        if (clickViewList == null) {
            clickViewList = new ArrayList<>();
            getChildView(clickViewList, view);
        }
        this.mAdResponse.bindUnifiedView(viewGroup, clickViewList, new NativeAdEventListener() { // from class: com.octopus.ad.topon.OctopusATNativeUnifiedAd.1
            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onADExposed() {
                Log.i(OctopusATNativeUnifiedAd.TAG, "onADExposed");
                OctopusATNativeUnifiedAd.this.notifyAdImpression();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClick() {
                Log.i(OctopusATNativeUnifiedAd.TAG, "onAdClick");
                OctopusATNativeUnifiedAd.this.notifyAdClicked();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClose() {
                Log.i(OctopusATNativeUnifiedAd.TAG, "onAdClose");
                OctopusATNativeUnifiedAd.this.notifyAdDislikeClick();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdRenderFailed(int i) {
                Log.i(OctopusATNativeUnifiedAd.TAG, "onADExposed");
            }
        });
    }

    public void setAdData() {
        setTitle(this.mAdResponse.getTitle());
        setDescriptionText(this.mAdResponse.getDescription());
        setIconImageUrl(this.mAdResponse.getIconUrl());
        setMainImageUrl(this.mAdResponse.getImageUrl());
        setImageUrlList(this.mAdResponse.getImageUrls());
        setCallToActionText(this.mAdResponse.getButtonText());
    }
}
