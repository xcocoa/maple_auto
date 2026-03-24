package com.iflytek.voiceads;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.utils.g;
import com.iflytek.voiceads.utils.i;
import com.iflytek.voiceads.view.BannerAdView;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class IFLYBannerAdImpl extends IFLYBannerAd {
    public BannerAdView a;

    /* JADX WARN: Multi-variable type inference failed */
    private IFLYBannerAdImpl(Context context, String str) {
        super(context);
        this.a = new BannerAdView(context, this, str, this.mInternalListener);
    }

    public static IFLYBannerAdImpl createBannerAd(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            g.a("IFLY_AD_SDK", "Ad constructor parameters error!");
            return null;
        }
        if (i.a(context)) {
            return new IFLYBannerAdImpl(context, str);
        }
        g.a("IFLY_AD_SDK", "please check your uses-permission");
        return null;
    }

    public synchronized void destroy() {
        super.destroy();
        if (this.a != null) {
            this.a.l();
            this.a = null;
        }
    }

    public synchronized void loadAd(IFLYAdListener iFLYAdListener) {
        if (this.a != null) {
            this.a.a(iFLYAdListener);
        }
    }

    public void setParameter(String str, Object obj) {
        if (this.a != null) {
            this.a.a(str, obj);
        }
    }

    public synchronized void showAd() {
        if (this.a != null) {
            this.a.g();
        }
    }
}
