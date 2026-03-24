package cn.haorui.sdk.platform.gromore;

import android.view.View;
import android.widget.FrameLayout;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.bytedance.msdk.api.v2.ad.custom.nativeAd.GMCustomNativeAd;

/* JADX INFO: loaded from: classes.dex */
public class HYGMExpressAd extends GMCustomNativeAd {
    private RecyclerAdData adData;

    public HYGMExpressAd(RecyclerAdData recyclerAdData) {
        this.adData = recyclerAdData;
    }

    public View getExpressView() {
        RecyclerAdData recyclerAdData = this.adData;
        return (recyclerAdData == null || !recyclerAdData.isNativeExpress()) ? super.getExpressView() : this.adData.getAdView();
    }

    public void render() {
        if (this.adData != null) {
            this.adData.bindAdToView(getActivity(), new FrameLayout(getActivity()), null, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.gromore.HYGMExpressAd.1
                @Override // cn.haorui.sdk.core.loader.InteractionListener
                public void onAdClicked() {
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
