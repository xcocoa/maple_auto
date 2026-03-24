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

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATNativeExpressAd extends CustomNativeAd {
    private static final String TAG = "OctopusATNativeExpressAd";
    private NativeAdResponse mAdResponse;
    private Context mContext;

    public OctopusATNativeExpressAd(Context context, NativeAdResponse nativeAdResponse) {
        this.mContext = context.getApplicationContext();
        this.mAdResponse = nativeAdResponse;
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
        return true;
    }

    @Override // com.anythink.nativead.unitgroup.api.CustomNativeAd, com.anythink.nativead.unitgroup.a
    public void prepare(View view, ATNativePrepareInfo aTNativePrepareInfo) {
        if (view == null) {
            return;
        }
        this.mAdResponse.bindView((ViewGroup) view, new NativeAdEventListener() { // from class: com.octopus.ad.topon.OctopusATNativeExpressAd.1
            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onADExposed() {
                Log.i(OctopusATNativeExpressAd.TAG, "onADExposed");
                OctopusATNativeExpressAd.this.notifyAdImpression();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClick() {
                Log.i(OctopusATNativeExpressAd.TAG, "onAdClick");
                OctopusATNativeExpressAd.this.notifyAdClicked();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdClose() {
                Log.i(OctopusATNativeExpressAd.TAG, "onAdClose");
                OctopusATNativeExpressAd.this.notifyAdDislikeClick();
            }

            @Override // com.octopus.ad.internal.nativead.NativeAdEventListener
            public void onAdRenderFailed(int i) {
                Log.i(OctopusATNativeExpressAd.TAG, "onAdRenderFailed");
            }
        });
    }
}
