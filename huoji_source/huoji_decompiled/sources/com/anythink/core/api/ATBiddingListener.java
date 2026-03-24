package com.anythink.core.api;

/* JADX INFO: loaded from: classes.dex */
public interface ATBiddingListener {
    void onC2SBidResult(ATBiddingResult aTBiddingResult);

    void onC2SBiddingResultWithCache(ATBiddingResult aTBiddingResult, BaseAd baseAd);
}
