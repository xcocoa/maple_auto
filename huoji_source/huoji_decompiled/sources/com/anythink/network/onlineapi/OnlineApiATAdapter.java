package com.anythink.network.onlineapi;

import android.content.Context;
import com.anythink.basead.d.b;
import com.anythink.basead.d.e;
import com.anythink.basead.e.d;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.m;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OnlineApiATAdapter extends CustomNativeAdapter {
    public e a;
    public m b;
    public String c;

    private void a(Context context, Map<String, Object> map) {
        this.c = map.get("unit_id") != null ? map.get("unit_id").toString() : "";
        m mVar = (m) map.get(h.p.a);
        this.b = mVar;
        this.a = new e(context, b.EnumC0055b.ONLINE_API_OFFER_REQUEST_TYPE, mVar, false);
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        if (this.a != null) {
            this.a = null;
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return "";
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.c;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return "";
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        int i;
        int i2;
        this.c = map.get("unit_id") != null ? map.get("unit_id").toString() : "";
        m mVar = (m) map.get(h.p.a);
        this.b = mVar;
        this.a = new e(context, b.EnumC0055b.ONLINE_API_OFFER_REQUEST_TYPE, mVar, false);
        int iMin = -1;
        if (map2 != null) {
            try {
                i = Integer.parseInt(map2.get(ATAdConst.KEY.AD_WIDTH).toString());
            } catch (Throwable unused) {
                i = -1;
            }
            try {
                i2 = Integer.parseInt(map2.get(ATAdConst.KEY.AD_HEIGHT).toString());
                iMin = i;
            } catch (Throwable unused2) {
                iMin = i;
                i2 = -1;
            }
        } else {
            i2 = -1;
        }
        final int i3 = context.getResources().getDisplayMetrics().widthPixels;
        final int i4 = context.getResources().getDisplayMetrics().heightPixels;
        if (iMin <= 0) {
            iMin = Math.min(i3, i4);
        }
        if (i2 <= 0) {
            i2 = (iMin * 3) / 4;
        }
        if (iMin <= i3) {
            i3 = iMin;
        }
        if (i2 <= i4) {
            i4 = i2;
        }
        final Context applicationContext = context.getApplicationContext();
        this.a.a(new d() { // from class: com.anythink.network.onlineapi.OnlineApiATAdapter.1
            @Override // com.anythink.basead.e.d
            public final void onNativeAdLoadError(com.anythink.basead.c.e eVar) {
                if (OnlineApiATAdapter.this.mLoadListener != null) {
                    OnlineApiATAdapter.this.mLoadListener.onAdLoadError(eVar.a(), eVar.b());
                }
            }

            @Override // com.anythink.basead.e.d
            public final void onNativeAdLoaded(com.anythink.basead.d.h... hVarArr) {
                OnlineApiATNativeAd[] onlineApiATNativeAdArr = new OnlineApiATNativeAd[hVarArr.length];
                for (int i5 = 0; i5 < hVarArr.length; i5++) {
                    hVarArr[i5].a(i3, i4);
                    onlineApiATNativeAdArr[i5] = new OnlineApiATNativeAd(applicationContext, hVarArr[i5]);
                }
                if (OnlineApiATAdapter.this.mLoadListener != null) {
                    OnlineApiATAdapter.this.mLoadListener.onAdCacheLoaded(onlineApiATNativeAdArr);
                }
            }
        });
    }
}
