package cn.haorui.sdk.platform.gromore;

import android.content.Context;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdLoader;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAdapter;
import com.bytedance.msdk.api.v2.slot.GMAdSlotNative;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HYGMCustomNativeAdapter extends GMCustomNativeAdapter {
    private static final String TAG = "HYGMCustomNativeAdapter";
    private RecyclerAdData adData;
    private HYGMExpressAd hygmExpressAd;
    private HYGMNativeAd hygmNativeAd;

    public void load(Context context, GMAdSlotNative gMAdSlotNative, GMCustomServiceConfig gMCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台信息流，pid=" + gMCustomServiceConfig.getADNNetworkSlotId());
        new RecyclerMixAdLoader(context, gMCustomServiceConfig.getADNNetworkSlotId(), 1, new RecyclerMixAdListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomNativeAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYGMCustomNativeAdapter.this.callLoadFail(new GMCustomAdError(-1, "loadAdError"));
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                (HYGMCustomNativeAdapter.this.isExpressRender() ? HYGMCustomNativeAdapter.this.hygmExpressAd : HYGMCustomNativeAdapter.this.hygmNativeAd).callNativeAdShow();
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
                HYGMCustomNativeAdapter.this.adData = list.get(0);
                ArrayList arrayList = new ArrayList();
                LogUtil.e(HYGMCustomNativeAdapter.TAG, "isExpressRender=" + HYGMCustomNativeAdapter.this.isExpressRender());
                LogUtil.e(HYGMCustomNativeAdapter.TAG, "adData.isExpress=" + HYGMCustomNativeAdapter.this.adData.isNativeExpress());
                HYGMCustomNativeAdapter hYGMCustomNativeAdapter = HYGMCustomNativeAdapter.this;
                hYGMCustomNativeAdapter.hygmNativeAd = new HYGMNativeAd(hYGMCustomNativeAdapter.adData);
                double d = 0.0d;
                if (HYGMCustomNativeAdapter.this.adData.getData() != null) {
                    try {
                        d = Double.parseDouble(HYGMCustomNativeAdapter.this.adData.getData().getEcpm());
                    } catch (NumberFormatException e) {
                        e.printStackTrace();
                    }
                }
                HYGMCustomNativeAdapter.this.hygmNativeAd.setBiddingPrice(d);
                arrayList.add(HYGMCustomNativeAdapter.this.hygmNativeAd);
                HYGMCustomNativeAdapter.this.callLoadSuccess(arrayList);
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYGMCustomNativeAdapter.this.callLoadFail(new GMCustomAdError(-2, "AdRenderFail"));
            }
        }).loadAd();
    }
}
