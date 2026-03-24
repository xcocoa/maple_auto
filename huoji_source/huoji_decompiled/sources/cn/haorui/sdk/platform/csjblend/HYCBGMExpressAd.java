package cn.haorui.sdk.platform.csjblend;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.native_ad.MediationCustomNativeAd;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class HYCBGMExpressAd extends MediationCustomNativeAd {
    private RecyclerAdData adData;
    private Context context;
    private RelativeLayout mExpressView;

    public HYCBGMExpressAd(Context context, RecyclerAdData recyclerAdData) {
        this.context = context;
        this.adData = recyclerAdData;
        setExpressAd(true);
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
    }

    public View getExpressView() {
        return this.mExpressView;
    }

    public boolean isClientBidding() {
        return getBiddingType() == 1;
    }

    public void render() {
        super.render();
        if (this.adData != null) {
            this.mExpressView = new RelativeLayout(this.context);
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.mExpressView);
            this.adData.bindAdToView(this.context, this.mExpressView, arrayList, new RecylcerAdInteractionListener() { // from class: cn.haorui.sdk.platform.csjblend.HYCBGMExpressAd.1
                @Override // cn.haorui.sdk.core.loader.InteractionListener
                public void onAdClicked() {
                    HYCBGMExpressAd.this.callAdClick();
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdClosed() {
                    HYCBGMExpressAd.this.callDislikeSelected(-1, "模板关闭");
                }

                @Override // cn.haorui.sdk.core.ad.recycler.RecylcerAdInteractionListener
                public void onAdRenderFailed() {
                    HYCBGMExpressAd hYCBGMExpressAd = HYCBGMExpressAd.this;
                    hYCBGMExpressAd.callRenderFail(hYCBGMExpressAd.mExpressView, -2, "渲染失败");
                }
            });
            callRenderSuccess(-1.0f, -2.0f);
        }
    }
}
