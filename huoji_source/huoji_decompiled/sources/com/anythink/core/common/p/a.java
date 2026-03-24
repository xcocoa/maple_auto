package com.anythink.core.common.p;

import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.ATCustomLoadListenerExt;
import com.anythink.core.api.BaseAd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a implements ATCustomLoadListenerExt {
    private static final String a = "a";
    private final com.anythink.core.common.f.h b;
    private final String c;
    private final Map<String, Object> d;
    private final ATCustomLoadListener e;
    private volatile boolean f = false;

    public a(com.anythink.core.common.f.h hVar, String str, Map<String, Object> map, ATCustomLoadListener aTCustomLoadListener) {
        this.b = hVar;
        this.c = str;
        this.e = aTCustomLoadListener;
        this.d = map;
    }

    private boolean a() {
        Map<String, Object> map = this.d;
        if (map == null) {
            return false;
        }
        try {
            Object obj = map.get("ad_s_reqf_mode");
            if (obj != null) {
                return obj.toString().equals("2");
            }
        } catch (Throwable th) {
            new StringBuilder("isSupportDoubleCallback() >>> ").append(th.getMessage());
        }
        return false;
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public void onAdCacheLoaded(BaseAd... baseAdArr) {
        StringBuilder sb = new StringBuilder("onAdCacheLoaded() >>> adSourceId: ");
        sb.append(this.c);
        sb.append(" isCallbacked: ");
        sb.append(this.f);
        if (this.f) {
            return;
        }
        this.f = true;
        ATCustomLoadListener aTCustomLoadListener = this.e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdCacheLoaded(baseAdArr);
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public void onAdDataLoaded() {
        ATCustomLoadListener aTCustomLoadListener = this.e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdDataLoaded();
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListenerExt
    public void onAdDataLoadedWithAds(BaseAd... baseAdArr) {
        new StringBuilder("onAdDataLoaded() >>> called. adSourceId: ").append(this.c);
        ATCustomLoadListener aTCustomLoadListener = this.e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdDataLoaded();
        }
        if (a()) {
            com.anythink.core.common.f.h hVar = this.b;
            if (hVar != null) {
                hVar.c();
            }
            onAdCacheLoaded(baseAdArr);
        }
    }

    @Override // com.anythink.core.api.ATCustomLoadListener
    public void onAdLoadError(String str, String str2) {
        ATCustomLoadListener aTCustomLoadListener = this.e;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }
}
