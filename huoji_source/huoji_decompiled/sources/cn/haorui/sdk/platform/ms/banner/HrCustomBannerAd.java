package cn.haorui.sdk.platform.ms.banner;

import android.app.Activity;
import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.banner.IBannerAd;
import com.meishu.sdk.platform.custom.banner.MsCustomBannerAd;
import com.meishu.sdk.platform.custom.banner.MsCustomBannerAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomBannerAd extends MsCustomBannerAd {
    private IBannerAd iBannerAd;

    public HrCustomBannerAd(MsCustomBannerAdapter msCustomBannerAdapter, IBannerAd iBannerAd) {
        super(msCustomBannerAdapter);
        this.iBannerAd = iBannerAd;
    }

    public void showAd(Activity activity, ViewGroup viewGroup) {
        IBannerAd iBannerAd = this.iBannerAd;
        if (iBannerAd != null) {
            iBannerAd.showAd(activity, viewGroup);
        }
    }

    public void showAd(ViewGroup viewGroup) {
        IBannerAd iBannerAd = this.iBannerAd;
        if (iBannerAd != null) {
            iBannerAd.showAd(viewGroup);
        }
    }
}
