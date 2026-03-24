package cn.haorui.sdk.platform.gromore;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HYGMNativeAd extends GMCustomNativeAd {
    private static final String TAG = "HYGMNativeAd";
    private RecyclerAdData adData;

    public HYGMNativeAd(RecyclerAdData recyclerAdData) {
        this.adData = recyclerAdData;
        setTitle(recyclerAdData.getTitle());
        setDescription(recyclerAdData.getDesc());
        setActionText(recyclerAdData.getActionText());
        setIconUrl(recyclerAdData.getIconUrl());
        setAdImageMode(recyclerAdData.getAdPatternType());
        setInteractionType(recyclerAdData.getInteractionType());
        setSource(recyclerAdData.getAppName());
        String[] imgUrls = recyclerAdData.getImgUrls();
        Log.e(TAG, "imgUrl=" + imgUrls);
        if (imgUrls == null || imgUrls.length <= 0) {
            return;
        }
        if (recyclerAdData.getAdPatternType() == 12 || recyclerAdData.getAdPatternType() == 1 || recyclerAdData.getAdPatternType() == 11) {
            setImageUrl(imgUrls[0]);
        } else if (recyclerAdData.getAdPatternType() == 13) {
            setImageList(Arrays.asList(imgUrls));
        }
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

    public int getInteractionType() {
        return this.adData.getInteractionType() == 1 ? 4 : 2;
    }

    public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
        RecyclerAdData recyclerAdData = this.adData;
        if (recyclerAdData != null) {
            recyclerAdData.bindAdToView(getActivity(), viewGroup, list, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMNativeAd.1
                @Override // cn.haorui.sdk.core.loader.InteractionListener
                public void onAdClicked() {
                    HYGMNativeAd.this.callNativeAdClick();
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdClosed() {
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdRenderFailed() {
                }
            });
        }
    }
}
