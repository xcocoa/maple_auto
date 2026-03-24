package cn.haorui.sdk.platform.ms.draw;

import android.app.Activity;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.draw.IDrawAd;
import com.meishu.sdk.platform.custom.draw.MsCustomDrawAd;
import com.meishu.sdk.platform.custom.draw.MsCustomDrawAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomDrawAd extends MsCustomDrawAd {
    private IDrawAd iDrawAd;

    public HrCustomDrawAd(MsCustomDrawAdapter msCustomDrawAdapter, IDrawAd iDrawAd) {
        super(msCustomDrawAdapter);
        this.iDrawAd = iDrawAd;
    }

    public void showAd(Activity activity, ViewGroup viewGroup) {
    }

    public void showAd(ViewGroup viewGroup) {
        IDrawAd iDrawAd = this.iDrawAd;
        if (iDrawAd != null) {
            iDrawAd.showAd(viewGroup);
        }
    }
}
