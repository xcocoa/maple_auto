package cn.haorui.sdk.platform.csjblend;

import android.content.Context;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad.MediationCustomNativeAd;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad.MediationCustomNativeLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HYCBCustomNativeAdapter extends MediationCustomNativeLoader {
    private static final String TAG = "HYCBCustomNativeAdapter";
    private RecyclerAdData adData;
    private HYCBGMExpressAd hygmExpressAd;
    private HYCBGMNativeAd hygmNativeAd;

    public void load(final Context context, AdSlot adSlot, MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台信息流，pid=" + mediationCustomServiceConfig.getADNNetworkSlotId());
        new RecyclerMixAdLoader(context, mediationCustomServiceConfig.getADNNetworkSlotId(), 1, new RecyclerMixAdListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomNativeAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYCBCustomNativeAdapter.this.callLoadFail(-1, "loadAdError");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                MediationCustomNativeAd mediationCustomNativeAd;
                if (HYCBCustomNativeAdapter.this.adData.isNativeExpress()) {
                    if (HYCBCustomNativeAdapter.this.hygmExpressAd == null) {
                        return;
                    } else {
                        mediationCustomNativeAd = HYCBCustomNativeAdapter.this.hygmExpressAd;
                    }
                } else if (HYCBCustomNativeAdapter.this.hygmNativeAd == null) {
                    return;
                } else {
                    mediationCustomNativeAd = HYCBCustomNativeAdapter.this.hygmNativeAd;
                }
                mediationCustomNativeAd.callAdShow();
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(List<RecyclerAdData> list) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(List<RecyclerAdData> list) {
                MediationCustomNativeAd mediationCustomNativeAd;
                if (list == null || list.size() <= 0) {
                    return;
                }
                HYCBCustomNativeAdapter.this.adData = list.get(0);
                if (HYCBCustomNativeAdapter.this.adData == null) {
                    HYCBCustomNativeAdapter.this.callLoadFail(-1, "加载失败");
                    return;
                }
                ArrayList arrayList = new ArrayList();
                if (HYCBCustomNativeAdapter.this.adData.isNativeExpress()) {
                    HYCBCustomNativeAdapter hYCBCustomNativeAdapter = HYCBCustomNativeAdapter.this;
                    hYCBCustomNativeAdapter.hygmExpressAd = new HYCBGMExpressAd(context, hYCBCustomNativeAdapter.adData);
                    mediationCustomNativeAd = HYCBCustomNativeAdapter.this.hygmExpressAd;
                } else {
                    HYCBCustomNativeAdapter hYCBCustomNativeAdapter2 = HYCBCustomNativeAdapter.this;
                    hYCBCustomNativeAdapter2.hygmNativeAd = new HYCBGMNativeAd(hYCBCustomNativeAdapter2.adData);
                    mediationCustomNativeAd = HYCBCustomNativeAdapter.this.hygmNativeAd;
                }
                arrayList.add(mediationCustomNativeAd);
                arrayList.add(HYCBCustomNativeAdapter.this.hygmNativeAd);
                HYCBCustomNativeAdapter.this.callLoadSuccess(arrayList);
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYCBCustomNativeAdapter.this.callLoadFail(-2, "AdRenderFail");
            }
        }).loadAd();
    }
}
