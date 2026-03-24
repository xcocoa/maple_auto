package cn.haorui.sdk.platform.ms.splash;

import android.view.ViewGroup;
import cn.haorui.sdk.core.ad.splash.ISplashAd;
import com.meishu.sdk.platform.custom.splash.MsCustomSplashAd;
import com.meishu.sdk.platform.custom.splash.MsCustomSplashAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomSplashAd extends MsCustomSplashAd {
    private ISplashAd iSplashAd;

    public HrCustomSplashAd(MsCustomSplashAdapter msCustomSplashAdapter, ISplashAd iSplashAd) {
        super(msCustomSplashAdapter);
        this.iSplashAd = iSplashAd;
    }

    public void showAd(ViewGroup viewGroup) {
        ISplashAd iSplashAd = this.iSplashAd;
        if (iSplashAd != null) {
            iSplashAd.showAd(viewGroup);
        }
    }
}
