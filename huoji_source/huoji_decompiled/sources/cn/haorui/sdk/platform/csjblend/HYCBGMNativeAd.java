package cn.haorui.sdk.platform.csjblend;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationViewBinder;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad.MediationCustomNativeAd;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HYCBGMNativeAd extends MediationCustomNativeAd {
    private static final String TAG = "HYCBGMNativeAd";
    private RecyclerAdData adData;

    public HYCBGMNativeAd(RecyclerAdData recyclerAdData) {
        this.adData = recyclerAdData;
        if (isClientBidding()) {
            double d = 0.0d;
            if (recyclerAdData.getData() != null) {
                try {
                    d = Double.parseDouble(recyclerAdData.getData().getEcpm());
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
            }
            setBiddingPrice(d);
        }
        setActionText(recyclerAdData.getActionText());
        setDescription(recyclerAdData.getDesc());
        setIconUrl(recyclerAdData.getIconUrl());
        setSource(recyclerAdData.getAppName());
        setTitle(recyclerAdData.getTitle());
        setExpressAd(false);
        setInteractionType(recyclerAdData.getInteractionType() == 1 ? 4 : 3);
        String[] imgUrls = recyclerAdData.getImgUrls();
        if (imgUrls != null && imgUrls.length > 0) {
            if (recyclerAdData.getAdPatternType() == 12 || recyclerAdData.getAdPatternType() == 1 || recyclerAdData.getAdPatternType() == 11) {
                setImageUrl(imgUrls[0]);
            } else if (recyclerAdData.getAdPatternType() == 13) {
                setImageList(Arrays.asList(imgUrls));
            }
        }
        setAdImageMode(getAdImageMode());
    }

    public int getAdImageMode() {
        int adPatternType = this.adData.getAdPatternType();
        if (adPatternType == 2) {
            return 5;
        }
        if (adPatternType != 11) {
            return adPatternType != 13 ? 3 : 4;
        }
        return 2;
    }

    public boolean isClientBidding() {
        return getBiddingType() == 1;
    }

    public void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, MediationViewBinder mediationViewBinder) {
        RecyclerAdData recyclerAdData = this.adData;
        if (recyclerAdData != null) {
            recyclerAdData.bindAdToView(activity, viewGroup, list, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBGMNativeAd.1
                @Override // cn.haorui.sdk.core.loader.InteractionListener
                public void onAdClicked() {
                    HYCBGMNativeAd.this.callAdClick();
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdClosed() {
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdRenderFailed() {
                }
            });
            if (viewGroup == null || mediationViewBinder == null) {
                return;
            }
            try {
                View viewFindViewById = viewGroup.findViewById(mediationViewBinder.mediaViewId);
                if (viewFindViewById instanceof ViewGroup) {
                    this.adData.bindMediaView((ViewGroup) viewFindViewById, new RecyclerAdMediaListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBGMNativeAd.2
                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoCompleted() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoError() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoLoaded() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoPause() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoResume() {
                        }

                        @Override // cn.haorui.sdk.core.ad.recycler.RecyclerAdMediaListener
                        public void onVideoStart() {
                        }
                    });
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
