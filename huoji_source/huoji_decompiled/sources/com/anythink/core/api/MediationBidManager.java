package com.anythink.core.api;

import com.anythink.core.common.f.a;
import com.anythink.core.common.f.av;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediationBidManager {
    public static final String NO_BID_TOKEN_ERROR = "NO_BID_TOKEN";
    public String mRequestUrl;

    public interface BidListener {
        void onBidFail(String str);

        void onBidStart(av avVar, ATBaseAdAdapter aTBaseAdAdapter);

        void onBidSuccess(List<av> list);
    }

    public abstract void notifyWinnerDisplay(String str, av avVar);

    public void setBidRequestUrl(String str) {
        this.mRequestUrl = str;
    }

    public abstract void startBid(a aVar, BidListener bidListener);
}
