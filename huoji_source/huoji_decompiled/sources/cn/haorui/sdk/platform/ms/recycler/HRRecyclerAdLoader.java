package cn.haorui.sdk.platform.ms.recycler;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecyclerMixAdListener;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import cn.haorui.sdk.core.loader.AdPlatformError;
import cn.haorui.sdk.platform.ms.HRInitManager;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.core.ad.recycler.RecyclerMixAdLoader;
import com.meishu.sdk.core.domain.SdkAdInfo;
import com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerAdapter;
import com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerFeedAd;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HRRecyclerAdLoader extends MsCustomRecyclerAdapter {
    private RecyclerAdData adData;
    private HrCustomExpressAd hrCustomExpressAd;
    private HrCustomFeedAd hrCustomFeedAd;

    public HRRecyclerAdLoader(RecyclerMixAdLoader recyclerMixAdLoader, SdkAdInfo sdkAdInfo) {
        super(recyclerMixAdLoader, sdkAdInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAdWithCallback(String str) {
        new cn.haorui.sdk.core.ad.recycler.RecyclerMixAdLoader(getContext(), str, 1, new RecyclerMixAdListener() { // from class: cn.haorui.sdk.platform.ms.recycler.HRRecyclerAdLoader.2
            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdClosed() {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdError() {
                HRRecyclerAdLoader.this.onRenderFail(-1, "加载失败");
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdExposure() {
                if (HRRecyclerAdLoader.this.adData != null) {
                    if (HRRecyclerAdLoader.this.adData.isNativeExpress()) {
                        if (HRRecyclerAdLoader.this.hrCustomExpressAd != null) {
                            HRRecyclerAdLoader hRRecyclerAdLoader = HRRecyclerAdLoader.this;
                            hRRecyclerAdLoader.onExpressAdExposure(hRRecyclerAdLoader.hrCustomExpressAd);
                            return;
                        }
                        return;
                    }
                    if (HRRecyclerAdLoader.this.hrCustomFeedAd != null) {
                        HRRecyclerAdLoader hRRecyclerAdLoader2 = HRRecyclerAdLoader.this;
                        hRRecyclerAdLoader2.onFeedAdExposure(hRRecyclerAdLoader2.hrCustomFeedAd);
                    }
                }
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdLoaded(List<RecyclerAdData> list) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdPlatformError(AdPlatformError adPlatformError) {
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdReady(List<RecyclerAdData> list) {
                MsCustomRecyclerFeedAd msCustomRecyclerFeedAd;
                if (list == null || list.size() <= 0) {
                    return;
                }
                HRRecyclerAdLoader.this.adData = list.get(0);
                if (HRRecyclerAdLoader.this.adData.getData() != null) {
                    String ecpm = HRRecyclerAdLoader.this.adData.getData().getEcpm();
                    if (HRRecyclerAdLoader.this.getSdkAdInfo() != null) {
                        HRRecyclerAdLoader.this.getSdkAdInfo().setEcpm(ecpm);
                    }
                }
                ArrayList arrayList = new ArrayList();
                if (HRRecyclerAdLoader.this.adData.isNativeExpress()) {
                    HRRecyclerAdLoader hRRecyclerAdLoader = HRRecyclerAdLoader.this;
                    hRRecyclerAdLoader.hrCustomExpressAd = new HrCustomExpressAd(hRRecyclerAdLoader, hRRecyclerAdLoader.adData);
                    msCustomRecyclerFeedAd = HRRecyclerAdLoader.this.hrCustomExpressAd;
                } else {
                    HRRecyclerAdLoader hRRecyclerAdLoader2 = HRRecyclerAdLoader.this;
                    hRRecyclerAdLoader2.hrCustomFeedAd = new HrCustomFeedAd(hRRecyclerAdLoader2, hRRecyclerAdLoader2.adData);
                    msCustomRecyclerFeedAd = HRRecyclerAdLoader.this.hrCustomFeedAd;
                }
                arrayList.add(msCustomRecyclerFeedAd);
                if (!HRRecyclerAdLoader.this.adData.isNativeExpress()) {
                    HRRecyclerAdLoader.this.onFeedAdLoad(arrayList);
                    return;
                }
                HRRecyclerAdLoader.this.onNativeExpressAdLoad(arrayList);
                HRRecyclerAdLoader hRRecyclerAdLoader3 = HRRecyclerAdLoader.this;
                hRRecyclerAdLoader3.onExpressAdRenderSuccess(hRRecyclerAdLoader3.hrCustomExpressAd);
            }

            @Override // cn.haorui.sdk.core.loader.IAdLoadListener
            public void onAdRenderFail(String str2, int i) {
                HRRecyclerAdLoader.this.onRenderFail(i, str2);
            }
        }).loadAd();
    }

    public void bindExpressAdToView(Context context, ViewGroup viewGroup, List<View> list) {
        RecyclerAdData recyclerAdData = this.adData;
        if (recyclerAdData != null) {
            recyclerAdData.bindAdToView(context, viewGroup, list, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.ms.recycler.HRRecyclerAdLoader.3
                @Override // cn.haorui.sdk.core.loader.InteractionListener
                public void onAdClicked() {
                    if (HRRecyclerAdLoader.this.adData.isNativeExpress()) {
                        HRRecyclerAdLoader hRRecyclerAdLoader = HRRecyclerAdLoader.this;
                        hRRecyclerAdLoader.onExpressAdClicked(hRRecyclerAdLoader.hrCustomExpressAd);
                    } else {
                        HRRecyclerAdLoader hRRecyclerAdLoader2 = HRRecyclerAdLoader.this;
                        hRRecyclerAdLoader2.onFeedAdClicked(hRRecyclerAdLoader2.hrCustomFeedAd);
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdClosed() {
                    if (!HRRecyclerAdLoader.this.adData.isNativeExpress() || HRRecyclerAdLoader.this.hrCustomExpressAd == null) {
                        return;
                    }
                    HRRecyclerAdLoader hRRecyclerAdLoader = HRRecyclerAdLoader.this;
                    hRRecyclerAdLoader.onExpressAdClosed(hRRecyclerAdLoader.hrCustomExpressAd);
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdRenderFailed() {
                    HRRecyclerAdLoader.this.onRenderFail(-1, "渲染失败");
                }
            });
        }
    }

    public void loadCustomAd(String str, final String str2, String str3) {
        HRInitManager.getInstance().initSdk(((MsCustomRecyclerAdapter) this).context, str, new HRInitManager.InitCallback() { // from class: cn.haorui.sdk.platform.ms.recycler.HRRecyclerAdLoader.1
            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onError(int i, String str4) {
            }

            @Override // cn.haorui.sdk.platform.ms.HRInitManager.InitCallback
            public void onSuccess() {
                HRRecyclerAdLoader.this.loadAdWithCallback(str2);
            }
        });
    }

    public void setExpressMediaListener(final ExpressMediaListener expressMediaListener) {
        RecyclerAdData recyclerAdData = this.adData;
        if (recyclerAdData != null) {
            recyclerAdData.setExpressMediaListener(new cn.haorui.sdk.core.ad.recycler.ExpressMediaListener() { // from class: cn.haorui.sdk.platform.ms.recycler.HRRecyclerAdLoader.4
                @Override // cn.haorui.sdk.core.ad.recycler.ExpressMediaListener
                public void onVideoCompleted() {
                    ExpressMediaListener expressMediaListener2 = expressMediaListener;
                    if (expressMediaListener2 != null) {
                        expressMediaListener2.onVideoCompleted();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.ExpressMediaListener
                public void onVideoError(int i, String str) {
                    ExpressMediaListener expressMediaListener2 = expressMediaListener;
                    if (expressMediaListener2 != null) {
                        expressMediaListener2.onVideoError(i, str);
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.ExpressMediaListener
                public void onVideoLoaded() {
                    ExpressMediaListener expressMediaListener2 = expressMediaListener;
                    if (expressMediaListener2 != null) {
                        expressMediaListener2.onVideoLoaded();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.ExpressMediaListener
                public void onVideoPause() {
                    ExpressMediaListener expressMediaListener2 = expressMediaListener;
                    if (expressMediaListener2 != null) {
                        expressMediaListener2.onVideoPause();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.ExpressMediaListener
                public void onVideoResume() {
                    ExpressMediaListener expressMediaListener2 = expressMediaListener;
                    if (expressMediaListener2 != null) {
                        expressMediaListener2.onVideoResume();
                    }
                }

                @Override // cn.haorui.sdk.core.ad.recycler.ExpressMediaListener
                public void onVideoStart() {
                    ExpressMediaListener expressMediaListener2 = expressMediaListener;
                    if (expressMediaListener2 != null) {
                        expressMediaListener2.onVideoStart();
                    }
                }
            });
        }
    }
}
