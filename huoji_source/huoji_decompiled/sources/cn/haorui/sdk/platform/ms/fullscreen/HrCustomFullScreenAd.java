package cn.haorui.sdk.platform.ms.fullscreen;

import android.app.Activity;
import cn.haorui.sdk.core.ad.fullscreenvideo.IFullScreenVideoAd;
import com.meishu.sdk.platform.custom.fullscreen.MsCustomFullScreenAd;
import com.meishu.sdk.platform.custom.fullscreen.MsCustomFullScreenAdapter;

/* JADX INFO: loaded from: classes.dex */
public class HrCustomFullScreenAd extends MsCustomFullScreenAd {
    private IFullScreenVideoAd iFullScreenVideoAd;

    public HrCustomFullScreenAd(MsCustomFullScreenAdapter msCustomFullScreenAdapter, IFullScreenVideoAd iFullScreenVideoAd) {
        super(msCustomFullScreenAdapter);
        this.iFullScreenVideoAd = iFullScreenVideoAd;
    }

    public void showAd(Activity activity) {
        IFullScreenVideoAd iFullScreenVideoAd = this.iFullScreenVideoAd;
        if (iFullScreenVideoAd != null) {
            iFullScreenVideoAd.showAd(activity);
        }
    }
}
