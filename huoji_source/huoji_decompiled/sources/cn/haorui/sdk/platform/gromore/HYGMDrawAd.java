package cn.haorui.sdk.platform.gromore;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.draw.IDrawAd;
import com.bytedance.msdk.api.v2.ad.custom.draw.GMCustomDrawAd;
import com.bytedance.msdk.api.v2.ad.nativeAd.GMViewBinder;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HYGMDrawAd extends GMCustomDrawAd {
    private static final String TAG = "HYGMDrawAd";
    private IDrawAd iDrawAd;

    public HYGMDrawAd(IDrawAd iDrawAd) {
        this.iDrawAd = iDrawAd;
        setInteractionType(getInteractionType());
    }

    public View getExpressView() {
        View adView = this.iDrawAd.getAdView();
        Log.e(TAG, "getExpressView: " + adView);
        return adView;
    }

    public int getInteractionType() {
        return this.iDrawAd.getInteractionType() == 1 ? 4 : 2;
    }

    public void registerViewForInteraction(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, GMViewBinder gMViewBinder) {
        showAd(viewGroup);
    }

    public void showAd(ViewGroup viewGroup) {
        IDrawAd iDrawAd = this.iDrawAd;
        if (iDrawAd != null) {
            iDrawAd.showAd(viewGroup);
        }
    }
}
