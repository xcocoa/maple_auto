package com.anythink.network.adx;

import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.d.b;
import com.anythink.basead.d.e;
import com.anythink.basead.e.d;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBidRequestInfoListener;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.m;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdxATAdapter extends CustomNativeAdapter {
    public e a;
    public m b;
    public boolean c;
    public boolean d;
    public String e;
    public int f;
    public int g;
    private boolean h;

    private void a(Context context, Map<String, Object> map, Map<String, Object> map2) {
        int intFromMap;
        this.h = TextUtils.equals("1", ATInitMediation.getStringFromMap(map, "layout_type"));
        m mVar = (m) map.get(h.p.a);
        this.b = mVar;
        this.a = new e(context, b.EnumC0055b.ADX_OFFER_REQUEST_TYPE, mVar, this.h);
        this.c = TextUtils.equals("0", ATInitMediation.getStringFromMap(map, "close_button", "0"));
        this.d = TextUtils.equals("0", ATInitMediation.getStringFromMap(map, "v_m", "0"));
        this.e = ATInitMediation.getStringFromMap(map, "video_autoplay", "1");
        int iMin = -1;
        if (map2 != null) {
            iMin = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_WIDTH);
            intFromMap = ATInitMediation.getIntFromMap(map2, ATAdConst.KEY.AD_HEIGHT);
        } else {
            intFromMap = -1;
        }
        int i = context.getResources().getDisplayMetrics().widthPixels;
        int i2 = context.getResources().getDisplayMetrics().heightPixels;
        if (iMin <= 0) {
            iMin = Math.min(i, i2);
        }
        if (intFromMap <= 0) {
            intFromMap = (iMin * 3) / 4;
        }
        if (iMin <= i) {
            i = iMin;
        }
        if (intFromMap <= i2) {
            i2 = intFromMap;
        }
        this.f = i;
        this.g = i2;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        if (this.a != null) {
            this.a = null;
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public BaseAd getBaseAdObject(Context context) {
        e eVar = this.a;
        if (eVar == null || !eVar.c()) {
            return null;
        }
        com.anythink.basead.d.h hVarA = this.a.a();
        hVarA.a(this.f, this.g);
        hVarA.a(this.d);
        hVarA.a(this.e);
        AdxATNativeAd adxATNativeAd = new AdxATNativeAd(context.getApplicationContext(), hVarA, this.h, this.c);
        adxATNativeAd.setNetworkInfoMap(com.anythink.basead.b.a(this.a.f()));
        return adxATNativeAd;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        m mVar = (m) map.get(h.p.a);
        AdxBidRequestInfo adxBidRequestInfo = new AdxBidRequestInfo(context, mVar != null ? mVar.b : "");
        boolean zEquals = TextUtils.equals("1", ATInitMediation.getStringFromMap(map, "layout_type"));
        this.h = zEquals;
        if (zEquals) {
            adxBidRequestInfo.fillAdAcceptType();
        }
        if (aTBidRequestInfoListener != null) {
            aTBidRequestInfoListener.onSuccess(adxBidRequestInfo);
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return AdxATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        m mVar = this.b;
        return mVar != null ? mVar.b : "";
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return "";
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(context, map, map2);
        e eVar = this.a;
        if (eVar == null || eVar.c()) {
            return true;
        }
        this.a.d();
        return true;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(context, map, map2);
        this.a.a(new d() { // from class: com.anythink.network.adx.AdxATAdapter.1
            @Override // com.anythink.basead.e.d
            public final void onNativeAdLoadError(com.anythink.basead.c.e eVar) {
                if (AdxATAdapter.this.mLoadListener != null) {
                    AdxATAdapter.this.mLoadListener.onAdLoadError(eVar.a(), eVar.b());
                }
            }

            @Override // com.anythink.basead.e.d
            public final void onNativeAdLoaded(com.anythink.basead.d.h... hVarArr) {
                AdxATNativeAd[] adxATNativeAdArr = new AdxATNativeAd[hVarArr.length];
                for (int i = 0; i < hVarArr.length; i++) {
                    com.anythink.basead.d.h hVar = hVarArr[i];
                    AdxATAdapter adxATAdapter = AdxATAdapter.this;
                    hVar.a(adxATAdapter.f, adxATAdapter.g);
                    hVar.a(AdxATAdapter.this.d);
                    hVar.a(AdxATAdapter.this.e);
                    adxATNativeAdArr[i] = new AdxATNativeAd(context.getApplicationContext(), hVar, AdxATAdapter.this.h, AdxATAdapter.this.c);
                }
                if (AdxATAdapter.this.mLoadListener != null) {
                    AdxATAdapter.this.mLoadListener.onAdCacheLoaded(adxATNativeAdArr);
                }
            }
        });
    }
}
