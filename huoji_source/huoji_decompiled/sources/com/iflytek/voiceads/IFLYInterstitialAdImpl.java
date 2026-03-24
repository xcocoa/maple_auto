package com.iflytek.voiceads;

import android.content.Context;
import android.text.TextUtils;
import com.iflytek.voiceads.listener.IFLYAdListener;
import com.iflytek.voiceads.utils.g;
import com.iflytek.voiceads.utils.i;
import com.iflytek.voiceads.view.InterstitialAdView;

/* JADX INFO: loaded from: assets/AdDex.4.0.1.dex */
public class IFLYInterstitialAdImpl extends IFLYInterstitialAd {
    public InterstitialAdView a;

    /* JADX WARN: Multi-variable type inference failed */
    private IFLYInterstitialAdImpl(Context context, String str) {
        super(context);
        this.a = new InterstitialAdView(context, this, str, this.mInternalListener);
    }

    public static synchronized IFLYInterstitialAd createInterstitialAd(Context context, String str) {
        IFLYInterstitialAdImpl iFLYInterstitialAdImpl = null;
        synchronized (IFLYInterstitialAdImpl.class) {
            if (TextUtils.isEmpty(str) || context == null) {
                g.a("IFLY_AD_SDK", "Ad constructor parameters error!");
            } else if (i.a(context)) {
                iFLYInterstitialAdImpl = new IFLYInterstitialAdImpl(context, str);
            } else {
                g.a("IFLY_AD_SDK", "please check your uses-permission");
            }
        }
        return iFLYInterstitialAdImpl;
    }

    public void destroy() {
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

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
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
