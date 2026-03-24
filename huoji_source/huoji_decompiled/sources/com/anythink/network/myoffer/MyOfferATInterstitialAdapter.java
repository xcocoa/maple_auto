package com.anythink.network.myoffer;

import android.app.Activity;
import android.content.Context;
import com.anythink.basead.b;
import com.anythink.basead.c.e;
import com.anythink.basead.e.c;
import com.anythink.basead.e.i;
import com.anythink.basead.e.j;
import com.anythink.basead.f.d;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.h;
import com.anythink.core.common.r;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MyOfferATInterstitialAdapter extends CustomInterstitialAdapter {
    public m a;
    public Map<String, Object> b;
    private d d;
    private String c = "";
    private boolean e = false;

    private void a(Context context) {
        this.d = new d(context, this.a, this.c, this.e);
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        d dVar = this.d;
        if (dVar != null) {
            dVar.a((j) null);
            this.d = null;
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public Map<String, Object> getNetworkInfoMap() {
        return this.b;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return "MyOffer";
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.c;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return h.a();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (map.containsKey("my_oid")) {
            this.c = map.get("my_oid").toString();
        }
        if (map.containsKey(h.p.a)) {
            this.a = (m) map.get(h.p.a);
        }
        if (map.containsKey(r.b)) {
            this.e = ((Boolean) map.get(r.b)).booleanValue();
        }
        a(context);
        return true;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean isAdReady() {
        d dVar = this.d;
        boolean z = dVar != null && dVar.a();
        if (z && this.b == null) {
            this.b = b.a(this.d);
        }
        return z;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2) {
        if (map.containsKey("my_oid")) {
            this.c = map.get("my_oid").toString();
        }
        if (map.containsKey(h.p.a)) {
            this.a = (m) map.get(h.p.a);
        }
        a(context);
        this.d.a(new c() { // from class: com.anythink.network.myoffer.MyOfferATInterstitialAdapter.1
            @Override // com.anythink.basead.e.c
            public final void onAdCacheLoaded() {
                MyOfferATInterstitialAdapter myOfferATInterstitialAdapter = MyOfferATInterstitialAdapter.this;
                myOfferATInterstitialAdapter.b = b.a(myOfferATInterstitialAdapter.d);
                if (MyOfferATInterstitialAdapter.this.mLoadListener != null) {
                    MyOfferATInterstitialAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                }
            }

            @Override // com.anythink.basead.e.c
            public final void onAdDataLoaded() {
            }

            @Override // com.anythink.basead.e.c
            public final void onAdLoadFailed(e eVar) {
                if (MyOfferATInterstitialAdapter.this.mLoadListener != null) {
                    MyOfferATInterstitialAdapter.this.mLoadListener.onAdLoadError(eVar.a(), eVar.b());
                }
            }
        });
    }

    @Override // com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter
    public void show(Activity activity) {
        if (isAdReady()) {
            HashMap map = new HashMap(1);
            int iG = com.anythink.core.common.o.e.g(activity);
            map.put(com.anythink.basead.f.c.h, this.a.d);
            map.put("extra_scenario", this.mScenario);
            map.put(com.anythink.basead.f.c.j, Integer.valueOf(iG));
            this.d.a(new j() { // from class: com.anythink.network.myoffer.MyOfferATInterstitialAdapter.2
                @Override // com.anythink.basead.e.a
                public final void onAdClick(i iVar) {
                    com.anythink.core.common.f.h trackingInfo = MyOfferATInterstitialAdapter.this.getTrackingInfo();
                    if (trackingInfo != null) {
                        trackingInfo.B(iVar.a);
                        trackingInfo.C(iVar.b);
                    }
                    if (MyOfferATInterstitialAdapter.this.mImpressListener != null) {
                        MyOfferATInterstitialAdapter.this.mImpressListener.onInterstitialAdClicked();
                    }
                }

                @Override // com.anythink.basead.e.a
                public final void onAdClosed() {
                    if (MyOfferATInterstitialAdapter.this.mImpressListener != null) {
                        MyOfferATInterstitialAdapter.this.mImpressListener.onInterstitialAdClose();
                    }
                }

                @Override // com.anythink.basead.e.a
                public final void onAdShow(i iVar) {
                    if (MyOfferATInterstitialAdapter.this.mImpressListener != null) {
                        MyOfferATInterstitialAdapter.this.mImpressListener.onInterstitialAdShow();
                    }
                }

                @Override // com.anythink.basead.e.a
                public final void onDeeplinkCallback(boolean z) {
                }

                @Override // com.anythink.basead.e.j
                public final void onRewarded() {
                }

                @Override // com.anythink.basead.e.a
                public final void onShowFailed(e eVar) {
                    if (MyOfferATInterstitialAdapter.this.mImpressListener != null) {
                        MyOfferATInterstitialAdapter.this.mImpressListener.onInterstitialAdVideoError(eVar.a(), eVar.b());
                    }
                }

                @Override // com.anythink.basead.e.j
                public final void onVideoAdPlayEnd() {
                    if (MyOfferATInterstitialAdapter.this.mImpressListener != null) {
                        MyOfferATInterstitialAdapter.this.mImpressListener.onInterstitialAdVideoEnd();
                    }
                }

                @Override // com.anythink.basead.e.j
                public final void onVideoAdPlayStart() {
                    if (MyOfferATInterstitialAdapter.this.mImpressListener != null) {
                        MyOfferATInterstitialAdapter.this.mImpressListener.onInterstitialAdVideoStart();
                    }
                }
            });
            this.d.a(activity, map);
        }
    }
}
