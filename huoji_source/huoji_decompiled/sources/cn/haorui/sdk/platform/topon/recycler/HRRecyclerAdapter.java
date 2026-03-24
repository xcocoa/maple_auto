package cn.haorui.sdk.platform.topon.recycler;

import android.content.Context;
import android.text.TextUtils;
import cn.haorui.sdk.core.AdSdk;
import cn.haorui.sdk.core.HRConfig;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.platform.topon.HRInitManager;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ATBiddingListener;
import com.anythink.core.api.ATBiddingResult;
import com.anythink.core.api.ATCustomLoadListener;
import com.anythink.core.api.MediationInitCallback;
import com.anythink.nativead.unitgroup.api.CustomNativeAd;
import com.anythink.nativead.unitgroup.api.CustomNativeAdapter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class HRRecyclerAdapter extends CustomNativeAdapter {
    private RecyclerMixAdLoader recyclerMixAdLoader;
    private String slotId;

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(Context context, Map<String, Object> map, final ATBiddingListener aTBiddingListener) {
        String str = (String) map.get("app_id");
        this.slotId = (String) map.get("slot_id");
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.slotId)) {
            RecyclerMixAdLoader recyclerMixAdLoader = new RecyclerMixAdLoader(context, this.slotId, 1, new RecyclerMixAdListener() { // from class: cn.haorui.sdk.platform.topon.recycler.HRRecyclerAdapter.3
                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdClosed() {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdError() {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRRecyclerAdapter.this.mLoadListener != null) {
                        HRRecyclerAdapter.this.mLoadListener.onAdLoadError(HRConfig.GENDER_UNKNOWN, "加载失败");
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdExposure() {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdLoaded(List<RecyclerAdData> list) {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdPlatformError(AdPlatformError adPlatformError) {
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdReady(List<RecyclerAdData> list) {
                    if (list == null || list.size() <= 0) {
                        return;
                    }
                    RecyclerAdData recyclerAdData = list.get(0);
                    double d = 0.0d;
                    if (recyclerAdData.isNativeExpress()) {
                        ArrayList arrayList = new ArrayList();
                        HRExpressAd hRExpressAd = new HRExpressAd(recyclerAdData);
                        if (recyclerAdData.getData() != null) {
                            String string = UUID.randomUUID().toString();
                            if (recyclerAdData.getData() != null) {
                                try {
                                    d = Double.parseDouble(recyclerAdData.getData().getEcpm());
                                } catch (NumberFormatException e) {
                                    e.printStackTrace();
                                }
                            }
                            ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                            if (aTBiddingListener2 != null) {
                                aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.success(d, string, null, ATAdConst.CURRENCY.RMB), hRExpressAd);
                            }
                        }
                        arrayList.add(hRExpressAd);
                        CustomNativeAd[] customNativeAdArr = (CustomNativeAd[]) arrayList.toArray(new CustomNativeAd[arrayList.size()]);
                        if (HRRecyclerAdapter.this.mLoadListener != null) {
                            HRRecyclerAdapter.this.mLoadListener.onAdCacheLoaded(customNativeAdArr);
                            return;
                        }
                        return;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    HRNativeAd hRNativeAd = new HRNativeAd(recyclerAdData);
                    if (recyclerAdData.getData() != null) {
                        String string2 = UUID.randomUUID().toString();
                        if (recyclerAdData.getData() != null) {
                            try {
                                d = Double.parseDouble(recyclerAdData.getData().getEcpm());
                            } catch (NumberFormatException e2) {
                                e2.printStackTrace();
                            }
                        }
                        ATBiddingListener aTBiddingListener3 = aTBiddingListener;
                        if (aTBiddingListener3 != null) {
                            aTBiddingListener3.onC2SBiddingResultWithCache(ATBiddingResult.success(d, string2, null, ATAdConst.CURRENCY.RMB), hRNativeAd);
                        }
                    }
                    arrayList2.add(hRNativeAd);
                    CustomNativeAd[] customNativeAdArr2 = (CustomNativeAd[]) arrayList2.toArray(new CustomNativeAd[arrayList2.size()]);
                    if (HRRecyclerAdapter.this.mLoadListener != null) {
                        HRRecyclerAdapter.this.mLoadListener.onAdCacheLoaded(customNativeAdArr2);
                    }
                }

                @Override // cn.haorui.sdk.core.loader.IAdLoadListener
                public void onAdRenderFail(String str2, int i) {
                    ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                    if (aTBiddingListener2 != null) {
                        aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
                    }
                    if (HRRecyclerAdapter.this.mLoadListener != null) {
                        HRRecyclerAdapter.this.mLoadListener.onAdLoadError(HRConfig.GENDER_UNKNOWN, "加载失败");
                    }
                }
            });
            this.recyclerMixAdLoader = recyclerMixAdLoader;
            recyclerMixAdLoader.loadAd();
        } else {
            if (aTBiddingListener != null) {
                aTBiddingListener.onC2SBiddingResultWithCache(ATBiddingResult.fail("load error"), null);
            }
            ATCustomLoadListener aTCustomLoadListener = this.mLoadListener;
            if (aTCustomLoadListener != null) {
                aTCustomLoadListener.onAdLoadError("", " app_id or slot_id is empty!");
            }
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void destory() {
        RecyclerMixAdLoader recyclerMixAdLoader = this.recyclerMixAdLoader;
        if (recyclerMixAdLoader != null) {
            recyclerMixAdLoader.destroy();
        }
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkName() {
        return HRInitManager.getInstance().getNetworkName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkPlacementId() {
        return this.slotId;
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public String getNetworkSDKVersion() {
        return AdSdk.getVersionName();
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public void loadCustomNetworkAd(final Context context, final Map<String, Object> map, Map<String, Object> map2) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.recycler.HRRecyclerAdapter.1
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRRecyclerAdapter.this.loadAd(context, map, null);
            }
        });
    }

    @Override // com.anythink.core.api.ATBaseAdAdapter
    public boolean startBiddingRequest(final Context context, final Map<String, Object> map, Map<String, Object> map2, final ATBiddingListener aTBiddingListener) {
        HRInitManager.getInstance().initSDK(context, map, new MediationInitCallback() { // from class: cn.haorui.sdk.platform.topon.recycler.HRRecyclerAdapter.2
            @Override // com.anythink.core.api.MediationInitCallback
            public void onFail(String str) {
                ATBiddingListener aTBiddingListener2 = aTBiddingListener;
                if (aTBiddingListener2 != null) {
                    aTBiddingListener2.onC2SBiddingResultWithCache(ATBiddingResult.fail(str), null);
                }
            }

            @Override // com.anythink.core.api.MediationInitCallback
            public void onSuccess() {
                HRRecyclerAdapter.this.loadAd(context, map, aTBiddingListener);
            }
        });
        return true;
    }
}
