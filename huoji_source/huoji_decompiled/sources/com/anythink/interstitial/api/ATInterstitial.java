package com.anythink.interstitial.api;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdSourceStatusListener;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.b.b;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.p;
import com.anythink.core.common.u;
import com.anythink.interstitial.a.a;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ATInterstitial {
    public static final String TAG = "ATInterstitial";
    public WeakReference<Activity> mActivityWef;
    public a mAdLoadManager;
    public b mAdSourceEventListener;
    public Context mContext;
    public ATAdSourceStatusListener mDeveloperStatusListener;
    public ATEventInterface mDownloadListener;
    public ATInterstitialListener mInterstitialListener;
    public String mPlacementId;
    public Map<String, Object> mTKExtraMap;
    private ATInterstitialExListener mInterListener = new ATInterstitialExListener() { // from class: com.anythink.interstitial.api.ATInterstitial.1
        @Override // com.anythink.interstitial.api.ATInterstitialExListener
        public void onDeeplinkCallback(final ATAdInfo aTAdInfo, final boolean z) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener == null || !(aTInterstitialListener instanceof ATInterstitialExListener)) {
                        return;
                    }
                    ((ATInterstitialExListener) aTInterstitialListener).onDeeplinkCallback(aTAdInfo, z);
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialExListener
        public void onDownloadConfirm(final Context context, final ATAdInfo aTAdInfo, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.2
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitial aTInterstitial = ATInterstitial.this;
                    ATInterstitialListener aTInterstitialListener = aTInterstitial.mInterstitialListener;
                    if (aTInterstitialListener == null || !(aTInterstitialListener instanceof ATInterstitialExListener)) {
                        return;
                    }
                    ATInterstitialExListener aTInterstitialExListener = (ATInterstitialExListener) aTInterstitialListener;
                    Context context2 = context;
                    if (context2 == null) {
                        context2 = aTInterstitial.mContext;
                    }
                    aTInterstitialExListener.onDownloadConfirm(context2, aTAdInfo, aTNetworkConfirmInfo);
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdClicked(final ATAdInfo aTAdInfo) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.7
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdClicked(aTAdInfo);
                    }
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdClose(final ATAdInfo aTAdInfo) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.6
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdClose(aTAdInfo);
                    }
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdLoadFail(AdError adError) {
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdLoaded() {
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdShow(final ATAdInfo aTAdInfo) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.8
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdShow(aTAdInfo);
                    }
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdVideoEnd(final ATAdInfo aTAdInfo) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.4
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdVideoEnd(aTAdInfo);
                    }
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdVideoError(final AdError adError) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.5
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdVideoError(adError);
                    }
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialListener
        public void onInterstitialAdVideoStart(final ATAdInfo aTAdInfo) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.1.3
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdVideoStart(aTAdInfo);
                    }
                }
            });
        }
    };
    public com.anythink.core.common.b.a adLoadListener = new com.anythink.core.common.b.a() { // from class: com.anythink.interstitial.api.ATInterstitial.2
        @Override // com.anythink.core.common.b.a
        public void onAdLoadFail(final AdError adError) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.2.2
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdLoadFail(adError);
                    }
                }
            });
        }

        @Override // com.anythink.core.common.b.a
        public void onAdLoaded() {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.api.ATInterstitial.2.1
                @Override // java.lang.Runnable
                public final void run() {
                    ATInterstitialListener aTInterstitialListener = ATInterstitial.this.mInterstitialListener;
                    if (aTInterstitialListener != null) {
                        aTInterstitialListener.onInterstitialAdLoaded();
                    }
                }
            });
        }
    };

    public ATInterstitial(Context context, String str) {
        this.mContext = context.getApplicationContext();
        if (context instanceof Activity) {
            this.mActivityWef = new WeakReference<>((Activity) context);
        }
        this.mPlacementId = str;
        this.mAdLoadManager = a.a(context, str);
    }

    private void controlShow(Activity activity, String str) {
        p.b(this.mPlacementId, h.n.p, h.n.y, h.n.n, "");
        if (n.a().f() == null || TextUtils.isEmpty(n.a().o()) || TextUtils.isEmpty(n.a().p())) {
            Log.e(TAG, "Show error: SDK init error!");
            return;
        }
        if (activity == null) {
            Context context = this.mContext;
            if (context instanceof Activity) {
                activity = (Activity) context;
            }
        }
        Activity activity2 = activity;
        if (activity2 == null) {
            Log.e(TAG, "Interstitial Show Activity is null.");
        }
        this.mAdLoadManager.a(activity2, str, this.mInterListener, this.mDownloadListener, this.mTKExtraMap);
    }

    public static void entryAdScenario(String str, String str2) {
        n.a().a(str, str2, "3", (Map<String, Object>) null);
    }

    public static void entryAdScenario(String str, String str2, Map<String, Object> map) {
        n.a().a(str, str2, "3", map);
    }

    private ATAdStatusInfo getAdStatus() {
        if (n.a().f() != null && !TextUtils.isEmpty(n.a().o()) && !TextUtils.isEmpty(n.a().p())) {
            return this.mAdLoadManager.a(this.mContext, this.mTKExtraMap);
        }
        Log.e(TAG, "SDK init error!");
        return null;
    }

    private Context getRequestContext() {
        WeakReference<Activity> weakReference = this.mActivityWef;
        Activity activity = weakReference != null ? weakReference.get() : null;
        return activity != null ? activity : this.mContext;
    }

    private void load(Context context, int i, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        p.a(this.mPlacementId, h.n.p, h.n.w, h.n.n, "", true);
        this.mAdLoadManager.a(context, i, this.adLoadListener, this.mAdSourceEventListener, this.mTKExtraMap, aTAdxBidFloorInfo);
    }

    public ATAdStatusInfo checkAdStatus() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return new ATAdStatusInfo(false, false, null);
        }
        p.b(this.mPlacementId, h.n.p, h.n.A, adStatus.toString(), "");
        return adStatus;
    }

    public List<ATAdInfo> checkValidAdCaches() {
        a aVar = this.mAdLoadManager;
        if (aVar != null) {
            return aVar.a(this.mContext);
        }
        return null;
    }

    public boolean isAdReady() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return false;
        }
        boolean zIsReady = adStatus.isReady();
        p.b(this.mPlacementId, h.n.p, h.n.z, String.valueOf(zIsReady), "");
        return zIsReady;
    }

    public void load() {
        load((Context) null);
    }

    public void load(Context context) {
        load(context, null);
    }

    public void load(Context context, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        if (context == null) {
            context = getRequestContext();
        }
        load(context, 0, aTAdxBidFloorInfo);
    }

    public void load(ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        load(null, aTAdxBidFloorInfo);
    }

    public void setAdDownloadListener(ATEventInterface aTEventInterface) {
        this.mDownloadListener = aTEventInterface;
    }

    public void setAdListener(ATInterstitialListener aTInterstitialListener) {
        this.mInterstitialListener = aTInterstitialListener;
    }

    public void setAdSourceStatusListener(ATAdSourceStatusListener aTAdSourceStatusListener) {
        if (this.mAdSourceEventListener == null) {
            this.mAdSourceEventListener = new b();
        }
        this.mDeveloperStatusListener = aTAdSourceStatusListener;
        this.mAdSourceEventListener.a(aTAdSourceStatusListener);
    }

    public void setLocalExtra(Map<String, Object> map) {
        u.a().a(this.mPlacementId, map);
    }

    public void setTKExtra(Map<String, Object> map) {
        if (this.mTKExtraMap == null) {
            this.mTKExtraMap = new ConcurrentHashMap();
        }
        this.mTKExtraMap.clear();
        this.mTKExtraMap.putAll(map);
    }

    public void show(Activity activity) {
        controlShow(activity, "");
    }

    public void show(Activity activity, String str) {
        if (!com.anythink.core.common.o.h.c(str)) {
            str = "";
        }
        controlShow(activity, str);
    }
}
