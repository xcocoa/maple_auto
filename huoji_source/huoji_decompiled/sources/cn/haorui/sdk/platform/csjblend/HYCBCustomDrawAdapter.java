package cn.haorui.sdk.platform.csjblend;

import android.content.Context;
import cn.haorui.sdk.core.ad.draw.DrawAdListener;
import cn.haorui.sdk.core.ad.draw.DrawAdLoader;
import cn.haorui.sdk.core.ad.draw.IDrawAd;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.draw.MediationCustomDrawLoader;
import com.bytedance.sdk.openadsdk.mediation.custom.MediationCustomServiceConfig;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HYCBCustomDrawAdapter extends MediationCustomDrawLoader {
    private static final String TAG = "HYCBCustomDrawAdapter";
    private HYCBDrawAd hygmDrawAd;

    public void load(Context context, AdSlot adSlot, MediationCustomServiceConfig mediationCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台draw，pid=" + mediationCustomServiceConfig.getADNNetworkSlotId());
        new DrawAdLoader(context, mediationCustomServiceConfig.getADNNetworkSlotId(), new DrawAdListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomDrawAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYCBCustomDrawAdapter.this.callLoadFail(-1, "loadAdError");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HYCBCustomDrawAdapter.this.hygmDrawAd != null) {
                    HYCBCustomDrawAdapter.this.hygmDrawAd.callAdShow();
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(IDrawAd iDrawAd) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(IDrawAd iDrawAd) {
                if (iDrawAd != null) {
                    iDrawAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBCustomDrawAdapter.1.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            if (HYCBCustomDrawAdapter.this.hygmDrawAd != null) {
                                HYCBCustomDrawAdapter.this.hygmDrawAd.callAdClick();
                            }
                        }
                    });
                    HYCBCustomDrawAdapter.this.hygmDrawAd = new HYCBDrawAd(iDrawAd);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(HYCBCustomDrawAdapter.this.hygmDrawAd);
                    HYCBCustomDrawAdapter.this.callLoadSuccess(arrayList);
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYCBCustomDrawAdapter.this.callLoadFail(-2, "AdRenderFail");
            }
        }).loadAd();
    }
}
