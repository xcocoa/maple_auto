package cn.haorui.sdk.platform.gromore;

import android.content.Context;
import android.view.View;
import cn.haorui.sdk.core.ad.draw.DrawAdListener;
import cn.haorui.sdk.core.ad.draw.DrawAdLoader;
import cn.haorui.sdk.core.ad.draw.IDrawAd;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.core.loader.InteractionListener;
import cn.haorui.sdk.core.utils.LogUtil;
import com.bytedance.msdk.api.v2.ad.custom.GMCustomAdError;
import com.bytedance.msdk.api.v2.ad.custom.bean.GMCustomServiceConfig;
import com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAdapter;
import com.bytedance.msdk.api.v2.slot.GMAdSlotDraw;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HYGMCustomDrawAdapter extends GMCustomDrawAdapter {
    private static final String TAG = "HYGMCustomDrawAdapter";
    private HYGMDrawAd hygmDrawAd;

    public void load(Context context, GMAdSlotDraw gMAdSlotDraw, GMCustomServiceConfig gMCustomServiceConfig) {
        LogUtil.e(TAG, "开始加载gromore自定义平台draw，pid=" + gMCustomServiceConfig.getADNNetworkSlotId());
        new DrawAdLoader(context, gMCustomServiceConfig.getADNNetworkSlotId(), new DrawAdListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomDrawAdapter.1
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HYGMCustomDrawAdapter.this.callLoadFail(new GMCustomAdError(-1, "loadAdError"));
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HYGMCustomDrawAdapter.this.hygmDrawAd != null) {
                    HYGMCustomDrawAdapter.this.hygmDrawAd.callDrawAdShow();
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
                    iDrawAd.setInteractionListener(new InteractionListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMCustomDrawAdapter.1.1
                        @Override // cn.haorui.sdk.core.loader.InteractionListener
                        public void onAdClicked() {
                            if (HYGMCustomDrawAdapter.this.hygmDrawAd != null) {
                                HYGMCustomDrawAdapter.this.hygmDrawAd.callDrawAdClick();
                            }
                        }
                    });
                    HYGMCustomDrawAdapter.this.hygmDrawAd = new HYGMDrawAd(iDrawAd);
                    double d = 0.0d;
                    if (iDrawAd.getData() != null) {
                        try {
                            d = Double.parseDouble(iDrawAd.getData().getEcpm());
                        } catch (NumberFormatException e) {
                            e.printStackTrace();
                        }
                    }
                    HYGMCustomDrawAdapter.this.hygmDrawAd.setBiddingPrice(d);
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(HYGMCustomDrawAdapter.this.hygmDrawAd);
                    HYGMCustomDrawAdapter.this.callLoadSuccess(arrayList);
                    View adView = iDrawAd.getAdView();
                    HYGMCustomDrawAdapter.this.hygmDrawAd.callDrawRenderSuccess(adView.getMeasuredWidth(), adView.getMeasuredHeight());
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str, int i) {
                HYGMCustomDrawAdapter.this.callLoadFail(new GMCustomAdError(-2, "AdRenderFail"));
            }
        }).loadAd();
    }
}
