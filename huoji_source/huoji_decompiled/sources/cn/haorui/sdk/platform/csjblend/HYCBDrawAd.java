package cn.haorui.sdk.platform.csjblend;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.adsail_ad.nativ.NormalMediaView;
import cn.haorui.sdk.core.ad.draw.IDrawAd;
import com.bytedance.sdk.openadsdk.mediation.ad.MediationViewBinder;
import com.bytedance.sdk.openadsdk.mediation.bridge.custom.draw.MediationCustomDrawAd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HYCBDrawAd extends MediationCustomDrawAd {
    private static final String TAG = "HYCBDrawAd";
    private IDrawAd iDrawAd;

    public HYCBDrawAd(IDrawAd iDrawAd) {
        this.iDrawAd = iDrawAd;
        if (isClientBidding()) {
            double d = 0.0d;
            if (iDrawAd.getData() != null) {
                try {
                    d = Double.parseDouble(iDrawAd.getData().getEcpm());
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                }
            }
            setBiddingPrice(d);
        }
        setInteractionType(getInteractionType());
    }

    public View getExpressView() {
        View adView = this.iDrawAd.getAdView();
        Log.e(TAG, "getExpressView: " + adView);
        if (adView instanceof NormalMediaView) {
            ((NormalMediaView) adView).start();
        }
        return adView;
    }

    public int getInteractionType() {
        return this.iDrawAd.getInteractionType() == 1 ? 4 : 2;
    }

    public boolean isClientBidding() {
        return getBiddingType() == 1;
    }

    public void registerView(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, MediationViewBinder mediationViewBinder) {
        IDrawAd iDrawAd = this.iDrawAd;
        if (iDrawAd != null) {
            iDrawAd.showAd(viewGroup);
        }
    }

    public void render() {
        super.render();
        View adView = this.iDrawAd.getAdView();
        callRenderSuccess(adView.getMeasuredWidth(), adView.getMeasuredHeight());
    }
}
