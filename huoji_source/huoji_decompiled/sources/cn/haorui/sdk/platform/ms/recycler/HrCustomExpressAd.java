package cn.haorui.sdk.platform.ms.recycler;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdData;
import com.meishu.sdk.core.ad.recycler.ExpressMediaListener;
import com.meishu.sdk.platform.custom.recycler.MsCustomRecyclerExpressAd;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomExpressAd extends MsCustomRecyclerExpressAd {
    private HRRecyclerAdLoader adWrapper;
    private RecyclerAdData expressAd;

    public HrCustomExpressAd(HRRecyclerAdLoader hRRecyclerAdLoader, RecyclerAdData recyclerAdData) {
        super(hRRecyclerAdLoader);
        this.adWrapper = hRRecyclerAdLoader;
        this.expressAd = recyclerAdData;
    }

    public void bindAdToView(Context context, ViewGroup viewGroup, List<View> list) {
        HRRecyclerAdLoader hRRecyclerAdLoader = this.adWrapper;
        if (hRRecyclerAdLoader != null) {
            hRRecyclerAdLoader.bindExpressAdToView(context, viewGroup, list);
        }
    }

    public void destroy() {
    }

    public int getAdPatternType() {
        return this.expressAd.getAdPatternType();
    }

    public View getAdView() {
        return this.expressAd.getAdView();
    }

    public int getInteractionType() {
        return this.expressAd.getInteractionType();
    }

    public boolean isNativeExpress() {
        return true;
    }

    public void setExpressMediaListener(ExpressMediaListener expressMediaListener) {
        HRRecyclerAdLoader hRRecyclerAdLoader = this.adWrapper;
        if (hRRecyclerAdLoader != null) {
            hRRecyclerAdLoader.setExpressMediaListener(expressMediaListener);
        }
    }
}
