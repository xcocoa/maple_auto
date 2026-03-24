package cn.haorui.sdk.core.loader;

import cn.haorui.sdk.core.ad.banner.BannerAdListener;
import cn.haorui.sdk.core.ad.banner.BannerAdListenerProxy;
import cn.haorui.sdk.core.ad.draw.DrawAdListener;
import cn.haorui.sdk.core.ad.draw.DrawAdListenerProxy;
import cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdListener;
import cn.haorui.sdk.core.ad.fullscreenvideo.FullScreenVideoAdListenerProxy;
import cn.haorui.sdk.core.ad.image.ImageAdListener;
import cn.haorui.sdk.core.ad.image.ImageAdListenerProxy;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListener;
import cn.haorui.sdk.core.ad.interstitial.InterstitialAdListenerProxy;
import cn.haorui.sdk.core.ad.media.NativeMediaAdListener;
import cn.haorui.sdk.core.ad.media.NativeMediaAdListenerProxy;
import cn.haorui.sdk.core.ad.paster.PasterAdListener;
import cn.haorui.sdk.core.ad.paster.PasterAdListenerProxy;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdListener;
import cn.haorui.sdk.core.ad.recycler.RecyclerAdListenerProxy;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListener;
import cn.haorui.sdk.core.ad.reward.RewardVideoAdListenerProxy;
import cn.haorui.sdk.core.ad.splash.SplashAdListener;
import cn.haorui.sdk.core.ad.splash.SplashAdListenerProxy;

/* JADX INFO: loaded from: classes.dex */
public class e {
    public static cn.haorui.sdk.core.oaid.b a;

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T a(d dVar, IAdLoadListener iAdLoadListener) {
        return iAdLoadListener instanceof RecyclerAdListener ? (T) new RecyclerAdListenerProxy(dVar, (RecyclerAdListener) iAdLoadListener) : iAdLoadListener instanceof BannerAdListener ? (T) new BannerAdListenerProxy(dVar, (BannerAdListener) iAdLoadListener) : iAdLoadListener instanceof SplashAdListener ? (T) new SplashAdListenerProxy(dVar, (SplashAdListener) iAdLoadListener) : iAdLoadListener instanceof RewardVideoAdListener ? (T) new RewardVideoAdListenerProxy(dVar, (RewardVideoAdListener) iAdLoadListener) : iAdLoadListener instanceof InterstitialAdListener ? (T) new InterstitialAdListenerProxy(dVar, (InterstitialAdListener) iAdLoadListener) : iAdLoadListener instanceof NativeMediaAdListener ? (T) new NativeMediaAdListenerProxy(dVar, (NativeMediaAdListener) iAdLoadListener) : iAdLoadListener instanceof ImageAdListener ? (T) new ImageAdListenerProxy(dVar, (ImageAdListener) iAdLoadListener) : iAdLoadListener instanceof DrawAdListener ? (T) new DrawAdListenerProxy(dVar, (DrawAdListener) iAdLoadListener) : iAdLoadListener instanceof PasterAdListener ? (T) new PasterAdListenerProxy(dVar, (PasterAdListener) iAdLoadListener) : iAdLoadListener instanceof FullScreenVideoAdListener ? (T) new FullScreenVideoAdListenerProxy(dVar, (FullScreenVideoAdListener) iAdLoadListener) : iAdLoadListener;
    }

    public static String a(String str, String str2) {
        String str3;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str3 = (String) cls.getMethod("get", String.class, String.class).invoke(cls, str, str2);
        } catch (Exception e) {
            String str4 = "System property invoke error: " + e;
            str3 = null;
        }
        return str3 == null ? "" : str3;
    }
}
