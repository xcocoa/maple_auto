package mobi.oneway.export.plugin;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import java.util.Map;
import mobi.oneway.export.AdListener.OWInteractiveAdListener;
import mobi.oneway.export.AdListener.OWInterstitialAdListener;
import mobi.oneway.export.AdListener.OWInterstitialImageAdListener;
import mobi.oneway.export.AdListener.OWRewardedAdListener;
import mobi.oneway.export.AdListener.OWSplashAdListener;
import mobi.oneway.export.AdListener.feed.OWFeedAdListener;
import mobi.oneway.export.enums.AdType;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BaseAd {
    public String appId;
    public String feedAdId;
    public boolean hasFeedAd;
    public boolean hasInteractiveAd;
    public boolean hasInterstitialAd;
    public boolean hasInterstitialImageAd;
    public boolean hasRewardAd;
    public String interactiveId;
    public String interstitialId;
    public String interstitialImageId;
    public String rewardId;
    public String splashId;

    public BaseAd(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.appId = str;
        this.splashId = str2;
        this.rewardId = str3;
        this.interstitialImageId = str4;
        this.interstitialId = str5;
        this.interactiveId = str6;
        this.feedAdId = str7;
    }

    public BaseAd(String str, Map<String, String> map) {
        this(str, null, null, null, null, null, null);
    }

    public abstract void destoryAd(AdType adType, String str);

    public abstract long getCrc();

    public abstract void initInteractiveAd(Activity activity, String str, OWInteractiveAdListener oWInteractiveAdListener);

    public abstract void initInteractiveAd(Activity activity, OWInteractiveAdListener oWInteractiveAdListener);

    public abstract void initInterstitialAd(Activity activity, String str, OWInterstitialAdListener oWInterstitialAdListener);

    public abstract void initInterstitialAd(Activity activity, OWInterstitialAdListener oWInterstitialAdListener);

    public abstract void initInterstitialImageAd(Activity activity, String str, OWInterstitialImageAdListener oWInterstitialImageAdListener);

    public abstract void initInterstitialImageAd(Activity activity, OWInterstitialImageAdListener oWInterstitialImageAdListener);

    public abstract void initRewardAd(Activity activity, String str, OWRewardedAdListener oWRewardedAdListener);

    public abstract void initRewardAd(Activity activity, OWRewardedAdListener oWRewardedAdListener);

    public abstract boolean isInteractiveAdReady();

    public abstract boolean isInteractiveAdReady(String str);

    public abstract boolean isInterstitialAdReady();

    public abstract boolean isInterstitialAdReady(String str);

    public abstract boolean isInterstitialImageAdReady();

    public abstract boolean isInterstitialImageAdReady(String str);

    public abstract boolean isRewardAdReady();

    public abstract boolean isRewardAdReady(String str);

    public abstract void loadFeedAd(Activity activity, OWFeedAdListener oWFeedAdListener);

    public abstract void loadFeedAd(Context context, String str, OWFeedAdListener oWFeedAdListener);

    public abstract void loadFeedAd(Context context, OWFeedAdListener oWFeedAdListener);

    public abstract void loadInteractiveAd();

    public abstract void loadInteractiveAd(String str);

    public abstract void loadInterstitialAd();

    public abstract void loadInterstitialAd(String str);

    public abstract void loadInterstitialImageAd();

    public abstract void loadInterstitialImageAd(String str);

    public abstract void loadRewardAd();

    public abstract void loadRewardAd(String str);

    public abstract void setAdConfig(String str);

    public abstract void setDebugMode(boolean z);

    public abstract void setInteractiveAdListener(String str, OWInteractiveAdListener oWInteractiveAdListener);

    public abstract void setInteractiveAdListener(OWInteractiveAdListener oWInteractiveAdListener);

    public abstract void setInterstitialAdListener(String str, OWInterstitialAdListener oWInterstitialAdListener);

    public abstract void setInterstitialAdListener(OWInterstitialAdListener oWInterstitialAdListener);

    public abstract void setInterstitialImageAdListener(String str, OWInterstitialImageAdListener oWInterstitialImageAdListener);

    public abstract void setInterstitialImageAdListener(OWInterstitialImageAdListener oWInterstitialImageAdListener);

    public abstract void setRewardAdListener(String str, OWRewardedAdListener oWRewardedAdListener);

    public abstract void setRewardAdListener(OWRewardedAdListener oWRewardedAdListener);

    public abstract void showInteractiveAd(Activity activity, String str);

    public abstract void showInteractiveAd(Activity activity, String str, String str2);

    public abstract void showInterstitialAd(Activity activity, String str);

    public abstract void showInterstitialAd(Activity activity, String str, String str2);

    public abstract void showInterstitialImageAd(Activity activity, String str);

    public abstract void showInterstitialImageAd(Activity activity, String str, String str2);

    public abstract void showRewardAd(Activity activity, String str);

    public abstract void showRewardAd(Activity activity, String str, String str2);

    public abstract void showSplashAd(Activity activity, ViewGroup viewGroup, OWSplashAdListener oWSplashAdListener, long j);

    public abstract void showSplashAd(Activity activity, String str, ViewGroup viewGroup, OWSplashAdListener oWSplashAdListener, long j);
}
