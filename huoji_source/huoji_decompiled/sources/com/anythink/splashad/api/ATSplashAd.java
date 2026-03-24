package com.anythink.splashad.api;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewGroup;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdSourceStatusListener;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATMediationRequestInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.a.c;
import com.anythink.core.common.b.b;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.g;
import com.anythink.core.common.n.e;
import com.anythink.core.common.o.p;
import com.anythink.core.common.u;
import com.anythink.core.d.a;
import com.anythink.splashad.a.c;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class ATSplashAd {
    public final int DEFAULT_SPLASH_TIMEOUT_TIME;
    public final String TAG;
    public WeakReference<Activity> mActivityWeakRef;
    public c mAdLoadManager;
    public b mAdSourceEventListener;
    public Context mContext;
    public String mDefaultAdSourceConfig;
    public ATMediationRequestInfo mDefaultRequestInfo;
    public ATAdSourceStatusListener mDeveloperStatusListener;
    public ATEventInterface mDownloadListener;
    public int mFetchAdTimeout;
    public ATSplashAdListener mListener;
    public String mPlacementId;
    public Map<String, Object> mTKExtraMap;

    /* JADX INFO: renamed from: com.anythink.splashad.api.ATSplashAd$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ ATAdxBidFloorInfo val$adxBidFloorInfo;
        public final /* synthetic */ Map val$finalTkExtraMap;
        public final /* synthetic */ int val$loadType;

        /* JADX INFO: renamed from: com.anythink.splashad.api.ATSplashAd$1$1, reason: invalid class name and collision with other inner class name */
        public class C01691 extends com.anythink.splashad.a.b {
            public boolean hasCacheWhenTimeout = false;
            public final /* synthetic */ int val$finalTimeout;

            public C01691(int i) {
                this.val$finalTimeout = i;
            }

            @Override // com.anythink.splashad.a.b
            public void onAdLoaded(String str, final boolean z) {
                n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.1.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        C01691 c01691 = C01691.this;
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onAdLoaded(!c01691.hasCacheWhenTimeout && z);
                        }
                    }
                });
            }

            @Override // com.anythink.splashad.a.b
            public void onNoAdError(String str, final AdError adError) {
                n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.1.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onNoAdError(adError);
                        }
                    }
                });
            }

            @Override // com.anythink.splashad.a.b
            public void onTimeout(final String str) {
                int i;
                final g gVarA = ATSplashAd.this.mAdLoadManager.a(str);
                c.a aVarH = gVarA != null ? gVarA.h() : null;
                new StringBuilder("onTimeout,hasAdxDefaultCache:").append(aVarH != null);
                if (aVarH != null) {
                    aVarH.b();
                }
                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                ATSplashAd aTSplashAd = ATSplashAd.this;
                com.anythink.core.common.f.b bVarB = aTSplashAd.mAdLoadManager.b(aTSplashAd.mContext, anonymousClass1.val$finalTkExtraMap);
                if (bVarB != null) {
                    this.hasCacheWhenTimeout = true;
                    if (gVarA != null) {
                        if (aVarH == null || aVarH.f() != bVarB) {
                            StringBuilder sb = new StringBuilder("has cache when timeout: ");
                            sb.append(ATSplashAd.this.mPlacementId);
                            sb.append(",type:2");
                            i = 9;
                        } else {
                            StringBuilder sb2 = new StringBuilder("has cache when timeout: ");
                            sb2.append(ATSplashAd.this.mPlacementId);
                            sb2.append(",type:1");
                            i = 11;
                        }
                        gVarA.a(i);
                        e.a(ATSplashAd.this.mPlacementId, str, gVarA.i(), "1", bVarB, this.val$finalTimeout);
                        return;
                    }
                }
                n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.1.1.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        String str2 = ATSplashAd.this.mPlacementId;
                        String str3 = str;
                        g gVar = gVarA;
                        e.a(str2, str3, gVar != null ? gVar.i() : null, "2", (com.anythink.core.common.f.b) null, C01691.this.val$finalTimeout);
                        ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                        if (aTSplashAdListener != null) {
                            aTSplashAdListener.onAdLoadTimeout();
                        }
                    }
                });
            }
        }

        public AnonymousClass1(int i, Map map, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
            this.val$loadType = i;
            this.val$finalTkExtraMap = map;
            this.val$adxBidFloorInfo = aTAdxBidFloorInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            int iZ;
            boolean z;
            ATSplashAd aTSplashAd = ATSplashAd.this;
            int i = aTSplashAd.mFetchAdTimeout;
            if (i <= 0) {
                a aVarB = com.anythink.core.d.b.a(aTSplashAd.mContext).b(n.a().o());
                iZ = aVarB.Z() == 0 ? 5000 : (int) aVarB.Z();
                z = false;
            } else {
                iZ = i;
                z = true;
            }
            WeakReference<Activity> weakReference = ATSplashAd.this.mActivityWeakRef;
            C01691 c01691 = null;
            Activity activity = weakReference != null ? weakReference.get() : null;
            if (this.val$loadType == 0) {
                c01691 = new C01691(iZ);
                c01691.startCountDown(iZ);
            }
            C01691 c016912 = c01691;
            ATSplashAd aTSplashAd2 = ATSplashAd.this;
            com.anythink.splashad.a.c cVar = aTSplashAd2.mAdLoadManager;
            if (activity == null) {
                activity = aTSplashAd2.mContext;
            }
            cVar.a(activity, aTSplashAd2.mDefaultRequestInfo, aTSplashAd2.mDefaultAdSourceConfig, c016912, iZ, z, this.val$loadType, aTSplashAd2.mAdSourceEventListener, this.val$finalTkExtraMap, this.val$adxBidFloorInfo);
        }
    }

    @Deprecated
    public ATSplashAd(Context context, String str, ATMediationRequestInfo aTMediationRequestInfo, ATSplashAdListener aTSplashAdListener) {
        this(context, str, aTMediationRequestInfo, aTSplashAdListener, 0);
    }

    @Deprecated
    public ATSplashAd(Context context, String str, ATMediationRequestInfo aTMediationRequestInfo, ATSplashAdListener aTSplashAdListener, int i) {
        this.TAG = getClass().getSimpleName();
        this.DEFAULT_SPLASH_TIMEOUT_TIME = 5000;
        this.mContext = context.getApplicationContext();
        this.mPlacementId = str;
        this.mListener = aTSplashAdListener;
        this.mDefaultRequestInfo = aTMediationRequestInfo;
        this.mFetchAdTimeout = i;
        if (context instanceof Activity) {
            this.mActivityWeakRef = new WeakReference<>((Activity) context);
        }
        ATMediationRequestInfo aTMediationRequestInfo2 = this.mDefaultRequestInfo;
        if (aTMediationRequestInfo2 != null) {
            aTMediationRequestInfo2.setFormat("4");
        }
        this.mAdLoadManager = com.anythink.splashad.a.c.a(context, str);
    }

    public ATSplashAd(Context context, String str, ATSplashAdListener aTSplashAdListener) {
        this(context, str, aTSplashAdListener, 0, "");
    }

    public ATSplashAd(Context context, String str, ATSplashAdListener aTSplashAdListener, int i, String str2) {
        this.TAG = getClass().getSimpleName();
        this.DEFAULT_SPLASH_TIMEOUT_TIME = 5000;
        this.mContext = context.getApplicationContext();
        this.mPlacementId = str;
        this.mListener = aTSplashAdListener;
        this.mDefaultAdSourceConfig = str2;
        this.mFetchAdTimeout = i;
        if (context instanceof Activity) {
            this.mActivityWeakRef = new WeakReference<>((Activity) context);
        }
        ATMediationRequestInfo aTMediationRequestInfo = this.mDefaultRequestInfo;
        if (aTMediationRequestInfo != null) {
            aTMediationRequestInfo.setFormat("4");
        }
        this.mAdLoadManager = com.anythink.splashad.a.c.a(context, str);
    }

    public ATSplashAd(Context context, String str, ATSplashAdListener aTSplashAdListener, String str2) {
        this(context, str, aTSplashAdListener, 0, str2);
    }

    public static void entryAdScenario(String str, String str2) {
        n.a().a(str, str2, "4", (Map<String, Object>) null);
    }

    public static void entryAdScenario(String str, String str2, Map<String, Object> map) {
        n.a().a(str, str2, "4", map);
    }

    private ATAdStatusInfo getAdStatus() {
        if (n.a().f() != null && !TextUtils.isEmpty(n.a().o()) && !TextUtils.isEmpty(n.a().p())) {
            return this.mAdLoadManager.a(this.mContext, this.mTKExtraMap);
        }
        Log.e(this.TAG, "SDK init error!");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadAd(int i, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        p.a(this.mPlacementId, h.n.s, h.n.w, h.n.n, "", true);
        com.anythink.core.common.o.b.b.a().a(new AnonymousClass1(i, this.mTKExtraMap != null ? new HashMap(this.mTKExtraMap) : new HashMap(), aTAdxBidFloorInfo));
    }

    public ATAdStatusInfo checkAdStatus() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return new ATAdStatusInfo(false, false, null);
        }
        p.b(this.mPlacementId, h.n.s, h.n.A, adStatus.toString(), "");
        return adStatus;
    }

    public List<ATAdInfo> checkValidAdCaches() {
        com.anythink.splashad.a.c cVar = this.mAdLoadManager;
        if (cVar != null) {
            return cVar.a(this.mContext);
        }
        return null;
    }

    public boolean isAdReady() {
        ATAdStatusInfo adStatus = getAdStatus();
        if (adStatus == null) {
            return false;
        }
        boolean zIsReady = adStatus.isReady();
        p.b(this.mPlacementId, h.n.s, h.n.z, String.valueOf(zIsReady), "");
        return zIsReady;
    }

    public void loadAd() {
        loadAd(null);
    }

    public void loadAd(ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        loadAd(0, aTAdxBidFloorInfo);
    }

    @Deprecated
    public void onDestory() {
    }

    public void setAdDownloadListener(ATEventInterface aTEventInterface) {
        this.mDownloadListener = aTEventInterface;
    }

    public void setAdListener(ATSplashAdListener aTSplashAdListener) {
        this.mListener = aTSplashAdListener;
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

    public void show(Activity activity, ViewGroup viewGroup) {
        show(activity, viewGroup, null, "");
    }

    public void show(Activity activity, ViewGroup viewGroup, ATSplashSkipInfo aTSplashSkipInfo) {
        show(activity, viewGroup, aTSplashSkipInfo, "");
    }

    public void show(Activity activity, ViewGroup viewGroup, ATSplashSkipInfo aTSplashSkipInfo, String str) {
        p.b(this.mPlacementId, h.n.s, h.n.y, h.n.n, "");
        if (n.a().f() == null || TextUtils.isEmpty(n.a().o()) || TextUtils.isEmpty(n.a().p())) {
            Log.e(this.TAG, "SDK init error!");
            return;
        }
        if (activity == null) {
            Log.e(this.TAG, "Splash Activity is null.");
        }
        if (viewGroup == null) {
            Log.e(this.TAG, "Splash Container is null.");
        } else {
            this.mAdLoadManager.a(activity, viewGroup, new com.anythink.splashad.a.a() { // from class: com.anythink.splashad.api.ATSplashAd.2
                @Override // com.anythink.splashad.a.a
                public void onAdClick(final ATAdInfo aTAdInfo) {
                    n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                            if (aTSplashAdListener != null) {
                                aTSplashAdListener.onAdClick(aTAdInfo);
                            }
                        }
                    });
                }

                @Override // com.anythink.splashad.a.a
                public void onAdDismiss(final ATAdInfo aTAdInfo, final ATSplashAdExtraInfo aTSplashAdExtraInfo) {
                    n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                            if (aTSplashAdListener != null) {
                                aTSplashAdListener.onAdDismiss(aTAdInfo, aTSplashAdExtraInfo);
                            }
                        }
                    });
                }

                @Override // com.anythink.splashad.a.a
                public void onAdShow(final ATAdInfo aTAdInfo) {
                    n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                            if (aTSplashAdListener != null) {
                                aTSplashAdListener.onAdShow(aTAdInfo);
                            }
                        }
                    });
                    if (ATSplashAd.this.mAdLoadManager.a((ATAdStatusInfo) null)) {
                        ATSplashAd.this.loadAd(6, null);
                    }
                }

                @Override // com.anythink.splashad.a.a
                public void onDeeplinkCallback(final ATAdInfo aTAdInfo, final boolean z) {
                    n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            ATSplashAdListener aTSplashAdListener = ATSplashAd.this.mListener;
                            if (aTSplashAdListener == null || !(aTSplashAdListener instanceof ATSplashExListener)) {
                                return;
                            }
                            ((ATSplashExListener) aTSplashAdListener).onDeeplinkCallback(aTAdInfo, z);
                        }
                    });
                }

                @Override // com.anythink.splashad.a.a
                public void onDownloadConfirm(final Context context, final ATAdInfo aTAdInfo, final ATNetworkConfirmInfo aTNetworkConfirmInfo) {
                    n.a().b(new Runnable() { // from class: com.anythink.splashad.api.ATSplashAd.2.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            ATSplashAd aTSplashAd = ATSplashAd.this;
                            ATSplashAdListener aTSplashAdListener = aTSplashAd.mListener;
                            if (aTSplashAdListener == null || !(aTSplashAdListener instanceof ATSplashExListener)) {
                                return;
                            }
                            ATSplashExListener aTSplashExListener = (ATSplashExListener) aTSplashAdListener;
                            Context context2 = context;
                            if (context2 == null) {
                                context2 = aTSplashAd.mContext;
                            }
                            aTSplashExListener.onDownloadConfirm(context2, aTAdInfo, aTNetworkConfirmInfo);
                        }
                    });
                }
            }, this.mDownloadListener, aTSplashSkipInfo, str, this.mTKExtraMap);
        }
    }

    public void show(Activity activity, ViewGroup viewGroup, String str) {
        if (!com.anythink.core.common.o.h.c(str)) {
            str = "";
        }
        show(activity, viewGroup, null, str);
    }
}
