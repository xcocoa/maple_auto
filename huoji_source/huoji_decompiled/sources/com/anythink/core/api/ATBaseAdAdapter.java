package com.anythink.core.api;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.common.b.d;
import com.anythink.core.common.b.o;
import com.anythink.core.common.b.p;
import com.anythink.core.common.o.h;
import com.anythink.expressad.foundation.g.a;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class ATBaseAdAdapter extends d {
    public ATBiddingListener mBiddingListener;
    public ATEventInterface mDownloadListener;
    public ATCustomLoadListener mLoadListener;
    public ATBaseAdAdapter mThirdPartyAdapter;
    public String mUserId = "";
    public String mUserData = "";
    public String mScenario = "";
    public int mDismissType = 0;
    public int mFetchAdTimeout = 10000;
    public int mRequestNum = 1;
    public int mMixedFormatAdType = -1;

    private void cleanLoadListener() {
        this.mBiddingListener = null;
        this.mLoadListener = null;
    }

    private void fillParams(Map<String, Object> map) {
        if (getTrackingInfo() != null) {
            h.a(map, getTrackingInfo().V());
        }
    }

    private void parseGloableParams(Map<String, Object> map, Map<String, Object> map2) {
        if (map2 != null) {
            this.mUserId = map2.get("user_id") != null ? map2.get("user_id").toString() : "";
            this.mUserData = map2.get(ATAdConst.KEY.USER_CUSTOM_DATA) != null ? map2.get(ATAdConst.KEY.USER_CUSTOM_DATA).toString() : "";
        }
        if (map == null || !map.containsKey("ad_type")) {
            return;
        }
        this.mMixedFormatAdType = Integer.parseInt(map.get("ad_type").toString());
    }

    public abstract void destory();

    public Map<String, Object> getAdExtraInfoMap() {
        return null;
    }

    public BaseAd getBaseAdObject(Context context) {
        return null;
    }

    public MediationBidManager getBidManager() {
        return null;
    }

    public void getBidRequestInfo(Context context, Map<String, Object> map, Map<String, Object> map2, ATBidRequestInfoListener aTBidRequestInfoListener) {
        if (aTBidRequestInfoListener != null) {
            aTBidRequestInfoListener.onFailed(ATBidRequestInfo.NO_SUPPORT_BIDDING_TYPE);
        }
    }

    public final int getDismissType() {
        return this.mDismissType;
    }

    public String getILRD() {
        return null;
    }

    public final String getInternalNetworkName() {
        ATBaseAdAdapter aTBaseAdAdapter = this.mThirdPartyAdapter;
        return aTBaseAdAdapter != null ? aTBaseAdAdapter.getNetworkName() : getNetworkName();
    }

    public final String getInternalNetworkPlacementId() {
        ATBaseAdAdapter aTBaseAdAdapter = this.mThirdPartyAdapter;
        return aTBaseAdAdapter != null ? aTBaseAdAdapter.getNetworkPlacementId() : getNetworkPlacementId();
    }

    public final String getInternalNetworkSDKVersion() {
        ATBaseAdAdapter aTBaseAdAdapter = this.mThirdPartyAdapter;
        return aTBaseAdAdapter != null ? aTBaseAdAdapter.getNetworkSDKVersion() : getNetworkSDKVersion();
    }

    public ATInitMediation getMediationInitManager() {
        return null;
    }

    public final int getMixedFormatAdType() {
        return this.mMixedFormatAdType;
    }

    public Map<String, Object> getNetworkInfoMap() {
        return null;
    }

    public abstract String getNetworkName();

    public abstract String getNetworkPlacementId();

    public abstract String getNetworkSDKVersion();

    public final String getUserCustomData() {
        return this.mUserData;
    }

    public final String getUserId() {
        return this.mUserId;
    }

    public boolean initNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        return false;
    }

    public final void internalDestory() {
        ATBaseAdAdapter aTBaseAdAdapter = this.mThirdPartyAdapter;
        if (aTBaseAdAdapter != null) {
            aTBaseAdAdapter.destory();
        }
        destory();
    }

    public void internalFormatShow(Activity activity, ViewGroup viewGroup, ATCommonImpressionListener aTCommonImpressionListener) {
    }

    public final boolean internalInitNetworkObjectByPlacementId(Context context, Map<String, Object> map, Map<String, Object> map2) {
        fillParams(map);
        parseGloableParams(map, map2);
        return initNetworkObjectByPlacementId(context, map, map2);
    }

    public final boolean internalIsAdReady() {
        ATBaseAdAdapter aTBaseAdAdapter = this.mThirdPartyAdapter;
        return aTBaseAdAdapter != null ? aTBaseAdAdapter.isAdReady() : isAdReady();
    }

    public final void internalLoad(Context context, Map<String, Object> map, Map<String, Object> map2, ATCustomLoadListener aTCustomLoadListener) {
        this.mLoadListener = aTCustomLoadListener;
        fillParams(map);
        parseGloableParams(map, map2);
        loadCustomNetworkAd(context, map, map2);
    }

    public final boolean internalSetUserDataConsent(Context context, boolean z, boolean z3) {
        ATBaseAdAdapter aTBaseAdAdapter = this.mThirdPartyAdapter;
        return aTBaseAdAdapter != null ? aTBaseAdAdapter.setUserDataConsent(context, z, z3) : setUserDataConsent(context, z, z3);
    }

    public final void internalShow(Activity activity, ViewGroup viewGroup, ATCommonImpressionListener aTCommonImpressionListener) {
        ATBaseAdAdapter aTBaseAdAdapter;
        if (!isMixFormatAd() || (aTBaseAdAdapter = this.mThirdPartyAdapter) == null) {
            internalFormatShow(activity, viewGroup, aTCommonImpressionListener);
        } else {
            aTBaseAdAdapter.internalFormatShow(activity, viewGroup, aTCommonImpressionListener);
        }
    }

    public final boolean internalStartBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        fillParams(map);
        parseGloableParams(map, map2);
        this.mBiddingListener = aTBiddingListener;
        boolean zStartBiddingRequest = startBiddingRequest(context, map, map2, aTBiddingListener);
        if (!zStartBiddingRequest) {
            this.mBiddingListener = null;
        }
        return zStartBiddingRequest;
    }

    public abstract boolean isAdReady();

    public boolean isMixFormatAd() {
        return false;
    }

    public abstract void loadCustomNetworkAd(Context context, Map<String, Object> map, Map<String, Object> map2);

    public final void notifyATLoadFail(String str, String str2) {
        String str3;
        if (this.mBiddingListener != null) {
            if (TextUtils.isEmpty(str)) {
                str3 = str2;
            } else {
                str3 = str + a.bQ + str2;
            }
            this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str3), null);
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError(str, str2);
        }
    }

    public void releaseLoadResource() {
        cleanLoadListener();
    }

    public void setAdDownloadListener(ATEventInterface aTEventInterface) {
        this.mDownloadListener = aTEventInterface;
    }

    public final void setFetchAdTimeout(int i) {
        this.mFetchAdTimeout = i;
    }

    public final void setRequestNum(int i) {
        if (i > 0) {
            this.mRequestNum = i;
        }
    }

    public final void setScenario(String str) {
        this.mScenario = str;
    }

    public boolean setUserDataConsent(Context context, boolean z, boolean z3) {
        return false;
    }

    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        return false;
    }

    public boolean supportImpressionCallback() {
        return true;
    }

    public final void thirdPartyLoad(ATBaseAdAdapter aTBaseAdAdapter, Context context, Map<String, Object> map, Map<String, Object> map2) {
        this.mThirdPartyAdapter = aTBaseAdAdapter;
        aTBaseAdAdapter.internalLoad(context, map, map2, new p(this.mLoadListener, map, this.mMixedFormatAdType));
    }

    public final boolean thirdPartyStartBiddingRequest(ATBaseAdAdapter aTBaseAdAdapter, Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        this.mThirdPartyAdapter = aTBaseAdAdapter;
        return aTBaseAdAdapter.internalStartBiddingRequest(context, map, map2, new o(aTBiddingListener, map, this.mMixedFormatAdType));
    }
}
