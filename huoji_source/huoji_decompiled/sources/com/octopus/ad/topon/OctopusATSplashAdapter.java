package com.octopus.ad.topon;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import com.octopus.ad.SplashAd;
import com.octopus.ad.SplashAdListener;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATSplashAdapter extends CustomSplashAdapter {
    private ViewGroup mContainer;
    private SplashAd mSplashAd;
    private final String TAG = getClass().getSimpleName();
    private String mSlotId = "";

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoad(final Context context) {
        this.mContainer = new FrameLayout(context);
        postOnMainThread(new Runnable() { // from class: com.octopus.ad.topon.OctopusATSplashAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                OctopusATSplashAdapter octopusATSplashAdapter = OctopusATSplashAdapter.this;
                octopusATSplashAdapter.mSplashAd = new SplashAd(context, octopusATSplashAdapter.mSlotId, OctopusATSplashAdapter.this.mContainer, new SplashAdListener() { // from class: com.octopus.ad.topon.OctopusATSplashAdapter.2.1
                    @Override // com.octopus.ad.SplashAdListener
                    public void onAdClicked() {
                        Log.i(OctopusATSplashAdapter.this.TAG, "onAdClick");
                        if (OctopusATSplashAdapter.this.mImpressionListener != null) {
                            OctopusATSplashAdapter.this.mImpressionListener.onSplashAdClicked();
                        }
                    }

                    @Override // com.octopus.ad.SplashAdListener
                    public void onAdClosed() {
                        Log.i(OctopusATSplashAdapter.this.TAG, "onAdClosed");
                        OctopusATSplashAdapter.this.mDismissType = 0;
                        if (OctopusATSplashAdapter.this.mImpressionListener != null) {
                            OctopusATSplashAdapter.this.mImpressionListener.onSplashAdDismiss();
                        }
                    }

                    @Override // com.octopus.ad.SplashAdListener
                    public void onAdFailedToLoad(int i) {
                        Log.i(OctopusATSplashAdapter.this.TAG, "onAdFailedToLoad:" + i);
                        if (OctopusATSplashAdapter.this.mLoadListener != null) {
                            OctopusATSplashAdapter.this.mLoadListener.onAdLoadError(String.valueOf(i), "onAdFailedToLoad errorCode：" + i);
                        }
                        ATBiddingListener aTBiddingListener = OctopusATSplashAdapter.this.mBiddingListener;
                        if (aTBiddingListener != null) {
                            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i)), null);
                        }
                    }

                    @Override // com.octopus.ad.SplashAdListener
                    public void onAdLoaded() {
                        Log.i(OctopusATSplashAdapter.this.TAG, "onAdLoaded");
                        if (OctopusATSplashAdapter.this.mLoadListener != null) {
                            OctopusATSplashAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                        OctopusATSplashAdapter octopusATSplashAdapter2 = OctopusATSplashAdapter.this;
                        if (octopusATSplashAdapter2.mBiddingListener != null) {
                            OctopusATSplashAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(octopusATSplashAdapter2.mSplashAd.getPrice(), UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATSplashAdapter.this.mSplashAd), ATAdConst.CURRENCY.RMB_CENT), null);
                        }
                    }

                    @Override // com.octopus.ad.SplashAdListener
                    public void onAdShown() {
                        Log.i(OctopusATSplashAdapter.this.TAG, "onAdShown");
                        if (OctopusATSplashAdapter.this.mImpressionListener != null) {
                            OctopusATSplashAdapter.this.mImpressionListener.onSplashAdShow();
                        }
                    }

                    @Override // com.octopus.ad.SplashAdListener
                    public void onAdTick(long j) {
                    }
                });
                OctopusATSplashAdapter.this.mSplashAd.openAdInNativeBrowser(true);
            }
        });
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        SplashAd splashAd = this.mSplashAd;
        if (splashAd != null) {
            splashAd.destroy();
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
    public boolean isAdReady() {
        SplashAd splashAd = this.mSplashAd;
        return splashAd != null && splashAd.isLoaded();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        Log.i(this.TAG, "onAd loadCustomNetworkAd");
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            OctopusATInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATSplashAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str) {
                    if (OctopusATSplashAdapter.this.mLoadListener != null) {
                        OctopusATSplashAdapter.this.mLoadListener.onAdLoadError("80000", str);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATSplashAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATSplashAdapter.this.startLoad(context);
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

    @Override // com.anythink.splashad.unitgroup.api.CustomSplashAdapter
    public void show(Activity activity, ViewGroup viewGroup) {
        SplashAd splashAd = this.mSplashAd;
        if (splashAd == null || !splashAd.isLoaded() || viewGroup == null) {
            return;
        }
        viewGroup.removeAllViews();
        viewGroup.addView(this.mContainer);
        this.mSplashAd.showAd();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        Log.i(this.TAG, "onAd startBiddingRequest");
        loadCustomNetworkAd(context, map, map2);
        return true;
    }
}
