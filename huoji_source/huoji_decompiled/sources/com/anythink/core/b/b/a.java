package com.anythink.core.b.b;

import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingListenerExt;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.BaseAd;
import com.anythink.core.common.f.h;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a implements ATBiddingListenerExt {
    private static final String a = "a";
    private final h b;
    private final String c;
    private final Map<String, Object> d;
    private final ATBiddingListener e;
    private volatile boolean f = false;

    public a(h hVar, String str, Map<String, Object> map, ATBiddingListener aTBiddingListener) {
        this.b = hVar;
        this.c = str;
        this.d = map;
        this.e = aTBiddingListener;
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

    @Override // com.anythink.core.api.ATBiddingListener
    public void onC2SBidResult(ATBiddingResult aTBiddingResult) {
        ATBiddingListener aTBiddingListener = this.e;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBidResult(aTBiddingResult);
        }
    }

    @Override // com.anythink.core.api.ATBiddingListener
    public void onC2SBiddingResultWithCache(ATBiddingResult aTBiddingResult, BaseAd baseAd) {
        StringBuilder sb = new StringBuilder("onC2SBiddingResultWithCache() >>> adSourceId: ");
        sb.append(this.c);
        sb.append(" isCallbacked: ");
        sb.append(this.f);
        if (this.f) {
            return;
        }
        this.f = true;
        ATBiddingListener aTBiddingListener = this.e;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(aTBiddingResult, baseAd);
        }
    }

    @Override // com.anythink.core.api.ATBiddingListenerExt
    public void onC2SBiddingResultWithData(ATBiddingResult aTBiddingResult, BaseAd baseAd) {
        new StringBuilder("onC2SBiddingResultWithData() >>> adSourceId: ").append(this.c);
        h hVar = this.b;
        if (hVar != null) {
            hVar.i(System.currentTimeMillis());
        }
        if (a()) {
            h hVar2 = this.b;
            if (hVar2 != null) {
                hVar2.c();
            }
            onC2SBiddingResultWithCache(aTBiddingResult, baseAd);
        }
    }
}
