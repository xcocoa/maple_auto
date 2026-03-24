package com.octopus.ad.topon;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import com.octopus.ad.NativeAd;
import com.octopus.ad.NativeAdListener;
import com.octopus.ad.NativeAdResponse;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATNativeAdapter extends CustomNativeAdapter {
    private final String TAG = getClass().getSimpleName();
    private String mIsUnified;
    private NativeAd mNativeAd;
    private OctopusATNativeExpressAd mOctopusATNativeExpressAd;
    private OctopusATNativeUnifiedAd mOctopusATNativeUnifiedAd;
    private String mSlotId;

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(final Context context) {
        postOnMainThread(new Runnable() { // from class: com.octopus.ad.topon.OctopusATNativeAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                final boolean zEquals = TextUtils.equals("1", OctopusATNativeAdapter.this.mIsUnified);
                OctopusATNativeAdapter octopusATNativeAdapter = OctopusATNativeAdapter.this;
                octopusATNativeAdapter.mNativeAd = new NativeAd(context, octopusATNativeAdapter.mSlotId, new NativeAdListener() { // from class: com.octopus.ad.topon.OctopusATNativeAdapter.2.1
                    @Override // com.octopus.ad.NativeAdListener
                    public void onAdFailed(int i) {
                        Log.d(OctopusATNativeAdapter.this.TAG, "onAdFailed:" + i);
                        if (OctopusATNativeAdapter.this.mLoadListener != null) {
                            OctopusATNativeAdapter.this.mLoadListener.onAdLoadError(String.valueOf(i), "onAdFailed errorCode：" + i);
                        }
                        ATBiddingListener aTBiddingListener = OctopusATNativeAdapter.this.mBiddingListener;
                        if (aTBiddingListener != null) {
                            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i)), null);
                        }
                    }

                    @Override // com.octopus.ad.NativeAdListener
                    public void onAdLoaded(NativeAdResponse nativeAdResponse) {
                        ATBiddingListener aTBiddingListener;
                        ATBiddingResult aTBiddingResultSuccess;
                        BaseAd baseAd;
                        Log.d(OctopusATNativeAdapter.this.TAG, "onAdLoaded");
                        if (OctopusATNativeAdapter.this.mLoadListener != null && nativeAdResponse != null) {
                            if (zEquals) {
                                OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd = new OctopusATNativeUnifiedAd(context, nativeAdResponse);
                                OctopusATNativeAdapter.this.mLoadListener.onAdCacheLoaded(OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd);
                            } else {
                                OctopusATNativeAdapter.this.mOctopusATNativeExpressAd = new OctopusATNativeExpressAd(context, nativeAdResponse);
                                OctopusATNativeAdapter.this.mLoadListener.onAdCacheLoaded(OctopusATNativeAdapter.this.mOctopusATNativeExpressAd);
                            }
                        }
                        OctopusATNativeAdapter octopusATNativeAdapter2 = OctopusATNativeAdapter.this;
                        if (octopusATNativeAdapter2.mBiddingListener == null || nativeAdResponse == null) {
                            return;
                        }
                        double price = octopusATNativeAdapter2.mNativeAd.getPrice();
                        ATAdConst.CURRENCY currency = ATAdConst.CURRENCY.RMB_CENT;
                        String string = UUID.randomUUID().toString();
                        OctopusBiddingNotice octopusBiddingNotice = new OctopusBiddingNotice(OctopusATNativeAdapter.this.mNativeAd);
                        if (zEquals) {
                            OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd = new OctopusATNativeUnifiedAd(context, nativeAdResponse);
                            aTBiddingListener = OctopusATNativeAdapter.this.mBiddingListener;
                            aTBiddingResultSuccess = ATBiddingResult.success(price, string, octopusBiddingNotice, currency);
                            baseAd = OctopusATNativeAdapter.this.mOctopusATNativeUnifiedAd;
                        } else {
                            OctopusATNativeAdapter.this.mOctopusATNativeExpressAd = new OctopusATNativeExpressAd(context, nativeAdResponse);
                            aTBiddingListener = OctopusATNativeAdapter.this.mBiddingListener;
                            aTBiddingResultSuccess = ATBiddingResult.success(price, string, octopusBiddingNotice, currency);
                            baseAd = OctopusATNativeAdapter.this.mOctopusATNativeExpressAd;
                        }
                        aTBiddingListener.onC2SBiddingResultWithCache(aTBiddingResultSuccess, baseAd);
                    }
                });
                OctopusATNativeAdapter.this.mNativeAd.openAdInNativeBrowser(true);
                OctopusATNativeAdapter.this.mNativeAd.loadAd();
            }
        });
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        NativeAd nativeAd = this.mNativeAd;
        if (nativeAd != null) {
            nativeAd.destroy();
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return OctopusATInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.mSlotId;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return OctopusATInitManager.getInstance().getNetworkVersion();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        Log.i(this.TAG, "onAd loadCustomNetworkAd");
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            this.mIsUnified = "0";
            if (map.containsKey("is_unified")) {
                this.mIsUnified = (String) map.get("is_unified");
            }
            OctopusATInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATNativeAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str) {
                    if (OctopusATNativeAdapter.this.mLoadListener != null) {
                        OctopusATNativeAdapter.this.mLoadListener.onAdLoadError("80000", str);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATNativeAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATNativeAdapter.this.startLoad(context);
                }
            });
            return;
        }
        ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
        if (aTCustomLoadListener != null) {
            aTCustomLoadListener.onAdLoadError("80000", "SlotId is empty!");
        }
        ATBiddingListener aTBiddingListener = this.mBiddingListener;
        if (aTBiddingListener != null) {
            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("SlotId is empty!"), null);
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        Log.i(this.TAG, "onAd startBiddingRequest");
        loadCustomNetworkAd(context, map, map2);
        return true;
    }
}
