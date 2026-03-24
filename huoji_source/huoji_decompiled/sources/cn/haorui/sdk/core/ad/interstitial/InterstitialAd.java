package cn.haorui.sdk.core.ad.interstitial;

import android.app.Activity;
import cn.haorui.sdk.core.ad.BaseAd;
import cn.haorui.sdk.core.loader.d;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public abstract class InterstitialAd extends BaseAd implements IInterstitialAd, Serializable {
    public InterstitialAd(d dVar, String str) {
        super(dVar, str);
    }

    public abstract void showAd();

    public abstract void showAd(Activity activity);
}
