package com.anythink.network.onlineapi;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.anythink.basead.c.e;
import com.anythink.basead.d.b;
import com.anythink.basead.d.c;
import com.anythink.basead.d.d;
import com.anythink.basead.e.i;
import com.anythink.basead.e.j;
import com.anythink.core.api.ATInitMediation;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.m;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class OnlineApiATInterstitialAdapter extends CustomInterstitialAdapter {
    public m a;
    public d b;
    public String c;
    public Map<String, Object> d;

    private void a(Context context, Map<String, Object> map) {
        Object obj;
        Object obj2;
        this.c = map.get("unit_id") != null ? map.get("unit_id").toString() : "";
        int i = 0;
        int i2 = -1;
        if (map.containsKey("v_m") && (obj2 = map.get("v_m")) != null) {
            i = Integer.parseInt(obj2.toString());
        }
        if (map.containsKey("s_c_t") && (obj = map.get("s_c_t")) != null) {
            i2 = Integer.parseInt(obj.toString());
        }
        this.a = (m) map.get(h.p.a);
        d dVar = new d(context, b.EnumC0055b.ONLINE_API_OFFER_REQUEST_TYPE, this.a);
        this.b = dVar;
        dVar.a(new c.a().a(i).b(i2).a());
        String stringFromMap = ATInitMediation.getStringFromMap(map, "unit_type");
        if (TextUtils.isEmpty(stringFromMap)) {
            return;
        }
        this.b.a(stringFromMap);
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        d dVar = this.b;
        if (dVar != null) {
            dVar.b();
            this.b = null;
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.d;
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
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(context, map);
        return true;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean isAdReady() {
        d dVar = this.b;
        boolean z = dVar != null && dVar.c();
        if (z && this.d == null) {
            this.d = com.anythink.basead.b.a(this.b);
        }
        return z;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        a(context, map);
        this.b.a(new com.anythink.basead.e.c() { // from class: com.anythink.network.onlineapi.OnlineApiATInterstitialAdapter.2
            @Override // com.anythink.basead.e.c
            public final void onAdCacheLoaded() {
                OnlineApiATInterstitialAdapter onlineApiATInterstitialAdapter = OnlineApiATInterstitialAdapter.this;
                onlineApiATInterstitialAdapter.d = com.anythink.basead.b.a(onlineApiATInterstitialAdapter.b);
                if (OnlineApiATInterstitialAdapter.this.mLoadListener != null) {
                    OnlineApiATInterstitialAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.anythink.basead.e.c
            public final void onAdDataLoaded() {
                if (OnlineApiATInterstitialAdapter.this.mLoadListener != null) {
                    OnlineApiATInterstitialAdapter.this.mLoadListener.onAdDataLoaded();
                }
            }

            @Override // com.anythink.basead.e.c
            public final void onAdLoadFailed(e eVar) {
                if (OnlineApiATInterstitialAdapter.this.mLoadListener != null) {
                    OnlineApiATInterstitialAdapter.this.mLoadListener.onAdLoadError(eVar.a(), eVar.b());
                }
            }
        });
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        int iG = com.anythink.core.common.o.e.g(activity);
        HashMap map = new HashMap(1);
        map.put("extra_scenario", this.mScenario);
        map.put(com.anythink.basead.f.c.j, Integer.valueOf(iG));
        this.b.a(new j() { // from class: com.anythink.network.onlineapi.OnlineApiATInterstitialAdapter.1
            @Override // com.anythink.basead.e.a
            public final void onAdClick(i iVar) {
                com.anythink.core.common.f.h trackingInfo = OnlineApiATInterstitialAdapter.this.getTrackingInfo();
                if (trackingInfo != null) {
                    trackingInfo.B(iVar.a);
                    trackingInfo.C(iVar.b);
                }
                if (OnlineApiATInterstitialAdapter.this.mImpressListener != null) {
                    OnlineApiATInterstitialAdapter.this.mImpressListener.onInterstitialAdClicked();
                }
            }

            @Override // com.anythink.basead.e.a
            public final void onAdClosed() {
                if (OnlineApiATInterstitialAdapter.this.mImpressListener != null) {
                    OnlineApiATInterstitialAdapter.this.mImpressListener.onInterstitialAdClose();
                }
            }

            @Override // com.anythink.basead.e.a
            public final void onAdShow(i iVar) {
                if (OnlineApiATInterstitialAdapter.this.mImpressListener != null) {
                    OnlineApiATInterstitialAdapter.this.mImpressListener.onInterstitialAdShow();
                }
            }

            @Override // com.anythink.basead.e.a
            public final void onDeeplinkCallback(boolean z) {
                if (OnlineApiATInterstitialAdapter.this.mImpressListener != null) {
                    OnlineApiATInterstitialAdapter.this.mImpressListener.onDeeplinkCallback(z);
                }
            }

            @Override // com.anythink.basead.e.j
            public final void onRewarded() {
            }

            @Override // com.anythink.basead.e.a
            public final void onShowFailed(e eVar) {
                if (OnlineApiATInterstitialAdapter.this.mImpressListener != null) {
                    OnlineApiATInterstitialAdapter.this.mImpressListener.onInterstitialAdVideoError(eVar.a(), eVar.b());
                }
            }

            @Override // com.anythink.basead.e.j
            public final void onVideoAdPlayEnd() {
                if (OnlineApiATInterstitialAdapter.this.mImpressListener != null) {
                    OnlineApiATInterstitialAdapter.this.mImpressListener.onInterstitialAdVideoEnd();
                }
            }

            @Override // com.anythink.basead.e.j
            public final void onVideoAdPlayStart() {
                if (OnlineApiATInterstitialAdapter.this.mImpressListener != null) {
                    OnlineApiATInterstitialAdapter.this.mImpressListener.onInterstitialAdVideoStart();
                }
            }
        });
        d dVar = this.b;
        if (dVar != null) {
            dVar.a(activity, map);
        }
    }
}
