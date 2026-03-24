package com.octopus.ad.topon;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.anythink.banner.unitgroup.api.CustomBannerAdapter;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.MediationInitCallback;
import com.octopus.ad.BannerAd;
import com.octopus.ad.BannerAdListener;
import com.octopus.ad.internal.utilities.ViewUtil;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class OctopusATBannerAdapter extends CustomBannerAdapter {
    private FrameLayout mAdContainer;
    private BannerAd mBannerAd;
    private final String TAG = getClass().getSimpleName();
    private String mSlotId = "";

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoadBanner(final Context context) {
        postOnMainThread(new Runnable() { // from class: com.octopus.ad.topon.OctopusATBannerAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                if (context == null) {
                    return;
                }
                OctopusATBannerAdapter.this.mAdContainer = new FrameLayout(context);
                OctopusATBannerAdapter octopusATBannerAdapter = OctopusATBannerAdapter.this;
                octopusATBannerAdapter.mBannerAd = new BannerAd(context, octopusATBannerAdapter.mSlotId, new BannerAdListener() { // from class: com.octopus.ad.topon.OctopusATBannerAdapter.2.1
                    @Override // com.octopus.ad.BannerAdListener
                    public void onAdClicked() {
                        Log.i(OctopusATBannerAdapter.this.TAG, "onAdClicked");
                        if (OctopusATBannerAdapter.this.mImpressionEventListener != null) {
                            OctopusATBannerAdapter.this.mImpressionEventListener.onBannerAdClicked();
                        }
                    }

                    @Override // com.octopus.ad.BannerAdListener
                    public void onAdClosed() {
                        Log.i(OctopusATBannerAdapter.this.TAG, "onAdClosed");
                        if (OctopusATBannerAdapter.this.mAdContainer == null || OctopusATBannerAdapter.this.mAdContainer.getChildCount() <= 0) {
                            return;
                        }
                        OctopusATBannerAdapter.this.mAdContainer.removeAllViews();
                    }

                    @Override // com.octopus.ad.BannerAdListener
                    public void onAdFailedToLoad(int i) {
                        Log.i(OctopusATBannerAdapter.this.TAG, "onAdFailedToLoad:" + i);
                        if (OctopusATBannerAdapter.this.mLoadListener != null) {
                            OctopusATBannerAdapter.this.mLoadListener.onAdLoadError(String.valueOf(i), "onAdFailedToLoad errorCode：" + i);
                        }
                        ATBiddingListener aTBiddingListener = OctopusATBannerAdapter.this.mBiddingListener;
                        if (aTBiddingListener != null) {
                            aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(String.valueOf(i)), null);
                        }
                    }

                    @Override // com.octopus.ad.BannerAdListener
                    public void onAdLoaded() {
                        Log.i(OctopusATBannerAdapter.this.TAG, "onAdLoaded:");
                    }

                    @Override // com.octopus.ad.BannerAdListener
                    public void onAdShown() {
                        Log.i(OctopusATBannerAdapter.this.TAG, "onAdShown");
                        if (OctopusATBannerAdapter.this.mImpressionEventListener != null) {
                            OctopusATBannerAdapter.this.mImpressionEventListener.onBannerAdShow();
                        }
                    }

                    @Override // com.octopus.ad.BannerAdListener
                    public void onRenderSuccess(View view) {
                        Log.i(OctopusATBannerAdapter.this.TAG, "onRenderSuccess");
                        AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                        OctopusATBannerAdapter.this.showBanner(context, view);
                        if (OctopusATBannerAdapter.this.mLoadListener != null) {
                            OctopusATBannerAdapter.this.mLoadListener.onAdCacheLoaded(new BaseAd[0]);
                        }
                        OctopusATBannerAdapter octopusATBannerAdapter2 = OctopusATBannerAdapter.this;
                        if (octopusATBannerAdapter2.mBiddingListener != null) {
                            OctopusATBannerAdapter.this.mBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.success(octopusATBannerAdapter2.mBannerAd.getPrice(), UUID.randomUUID().toString(), new OctopusBiddingNotice(OctopusATBannerAdapter.this.mBannerAd), ATAdConst.CURRENCY.RMB_CENT), null);
                        }
                    }
                });
                OctopusATBannerAdapter.this.mBannerAd.openAdInNativeBrowser(true);
                OctopusATBannerAdapter.this.mBannerAd.loadAd();
            }
        });
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        BannerAd bannerAd = this.mBannerAd;
        if (bannerAd != null) {
            bannerAd.destroy();
            this.mBannerAd = null;
        }
    }

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter
    public View getBannerView() {
        return this.mAdContainer;
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

    @Override // com.anythink.banner.unitgroup.api.CustomBannerAdapter, com.anythink.core.api.ATBaseAdAdapter
    public boolean isAdReady() {
        BannerAd bannerAd = this.mBannerAd;
        return bannerAd != null && bannerAd.isLoaded();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, Map<String, Object> map, Map<String, Object> map2) {
        Log.i(this.TAG, "onAd loadCustomNetworkAd");
        if (map.containsKey("slot_id")) {
            this.mSlotId = (String) map.get("slot_id");
        }
        if (!TextUtils.isEmpty(this.mSlotId)) {
            OctopusATInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: com.octopus.ad.topon.OctopusATBannerAdapter.1
                @Override // com.anythink.core.api.MediationInitCallback
                public void onFail(String str) {
                    if (OctopusATBannerAdapter.this.mLoadListener != null) {
                        OctopusATBannerAdapter.this.mLoadListener.onAdLoadError("80000", str);
                    }
                    ATBiddingListener aTBiddingListener = OctopusATBannerAdapter.this.mBiddingListener;
                    if (aTBiddingListener != null) {
                        aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                    }
                }

                @Override // com.anythink.core.api.MediationInitCallback
                public void onSuccess() {
                    OctopusATBannerAdapter.this.startLoadBanner(context);
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

    public void showBanner(Context context, View view) {
        FrameLayout frameLayout;
        if (view == null || (frameLayout = this.mAdContainer) == null) {
            return;
        }
        frameLayout.removeAllViews();
        int screenWidth = (int) ViewUtil.getScreenWidth(context);
        this.mAdContainer.addView(view, new LinearLayout.LayoutParams(screenWidth, (int) (screenWidth / 6.4f)));
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(Context context, Map<String, Object> map, Map<String, Object> map2, ATBiddingListener aTBiddingListener) {
        Log.i(this.TAG, "onAd startBiddingRequest");
        loadCustomNetworkAd(context, map, map2);
        return true;
    }
}
