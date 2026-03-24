package com.anythink.splashad.a;

import android.app.Activity;
import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.anythink.basead.e.i;
import com.anythink.basead.ui.ThirdPartySplashATView;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.ATMediationRequestInfo;
import com.anythink.core.api.ATNetworkConfirmInfo;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.api.IExHandler;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.b.l;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.v;
import com.anythink.core.common.o.x;
import com.anythink.splashad.api.ATSplashSkipAdListener;
import com.anythink.splashad.api.ATSplashSkipInfo;
import com.anythink.splashad.unitgroup.api.CustomSplashAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static Map<String, c> e = new ConcurrentHashMap(3);
    private final e a;
    private Context b;
    private String c;
    private com.anythink.core.common.f d;

    /* JADX INFO: renamed from: com.anythink.splashad.a.c$2, reason: invalid class name */
    public class AnonymousClass2 implements l {
        public final /* synthetic */ boolean[] a;
        public final /* synthetic */ h b;

        public AnonymousClass2(boolean[] zArr, h hVar) {
            this.a = zArr;
            this.b = hVar;
        }

        @Override // com.anythink.core.common.b.l
        public final void onAdClicked(View view) {
            this.b.onSplashAdClicked();
        }

        @Override // com.anythink.core.common.b.l
        public final void onAdDislikeButtonClick() {
        }

        @Override // com.anythink.core.common.b.l
        public final void onAdImpressed() {
            boolean[] zArr = this.a;
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            this.b.onSplashAdShow();
        }

        @Override // com.anythink.core.common.b.l
        public final void onAdVideoEnd() {
        }

        @Override // com.anythink.core.common.b.l
        public final void onAdVideoProgress(int i) {
        }

        @Override // com.anythink.core.common.b.l
        public final void onAdVideoStart() {
        }

        @Override // com.anythink.core.common.b.l
        public final void onDeeplinkCallback(boolean z) {
            this.b.onDeeplinkCallback(z);
        }

        @Override // com.anythink.core.common.b.l
        public final void onDownloadConfirmCallback(Context context, View view, ATNetworkConfirmInfo aTNetworkConfirmInfo) {
            this.b.onDownloadConfirm(context, aTNetworkConfirmInfo);
        }
    }

    /* JADX INFO: renamed from: com.anythink.splashad.a.c$3, reason: invalid class name */
    public class AnonymousClass3 implements com.anythink.basead.e.a {
        public final /* synthetic */ h a;
        public final /* synthetic */ BaseAd b;
        public final /* synthetic */ ViewGroup c;

        public AnonymousClass3(h hVar, BaseAd baseAd, ViewGroup viewGroup) {
            this.a = hVar;
            this.b = baseAd;
            this.c = viewGroup;
        }

        @Override // com.anythink.basead.e.a
        public final void onAdClick(i iVar) {
        }

        @Override // com.anythink.basead.e.a
        public final void onAdClosed() {
            this.a.onSplashAdDismiss();
            BaseAd baseAd = this.b;
            if (baseAd != null) {
                baseAd.clear(this.c);
                this.b.destroy();
            }
        }

        @Override // com.anythink.basead.e.a
        public final void onAdShow(i iVar) {
        }

        @Override // com.anythink.basead.e.a
        public final void onDeeplinkCallback(boolean z) {
        }

        @Override // com.anythink.basead.e.a
        public final void onShowFailed(com.anythink.basead.c.e eVar) {
        }
    }

    private c(Context context, String str) {
        this.b = context.getApplicationContext();
        this.c = str;
        com.anythink.core.common.f fVarA = com.anythink.core.common.f.a(context, str, "4");
        this.d = fVarA;
        fVarA.a(new d());
        e eVar = new e();
        this.a = eVar;
        this.d.a(eVar);
    }

    public static c a(Context context, String str) {
        c cVar = e.get(str);
        if (cVar == null) {
            synchronized (c.class) {
                if (cVar == null) {
                    cVar = new c(context, str);
                    e.put(str, cVar);
                }
            }
        }
        return cVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(Activity activity, ViewGroup viewGroup, h hVar, boolean z, BaseAd baseAd, com.anythink.core.common.f.h hVar2) {
        if (baseAd == 0 || !(baseAd instanceof com.anythink.core.common.f.a.e)) {
            Log.e("anythink", "showThirdPartyNativeSplash fail,AdCache return illegal type adObject");
            if (hVar != null) {
                hVar.a(99);
                hVar.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "showThirdPartyNativeSplash fail,AdCache return illegal type adObject"));
                hVar.onSplashAdDismiss();
                return;
            }
            return;
        }
        com.anythink.core.common.f.a.b bVar = new com.anythink.core.common.f.a.b((com.anythink.core.common.f.a.e) baseAd);
        com.anythink.core.common.f.a.c cVar = new com.anythink.core.common.f.a.c((com.anythink.core.common.f.a.a) baseAd, hVar2, Integer.parseInt("4"));
        String strA = com.anythink.core.common.f.a(cVar);
        baseAd.setNativeEventListener(new AnonymousClass2(new boolean[]{false}, hVar));
        com.anythink.basead.d.i.a().a(strA, baseAd);
        ThirdPartySplashATView thirdPartySplashATView = new ThirdPartySplashATView(activity.getApplicationContext(), cVar, bVar, new AnonymousClass3(hVar, baseAd, viewGroup), strA);
        thirdPartySplashATView.setDontCountDown(z);
        ViewGroup customAdContainer = baseAd != 0 ? baseAd.getCustomAdContainer() : null;
        if (customAdContainer != null) {
            x.a(customAdContainer);
            customAdContainer.addView(thirdPartySplashATView);
        } else {
            customAdContainer = thirdPartySplashATView;
        }
        thirdPartySplashATView.registerNativeClickListener(viewGroup);
        viewGroup.addView(customAdContainer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(c cVar, Activity activity, ViewGroup viewGroup, h hVar, boolean z, BaseAd baseAd, com.anythink.core.common.f.h hVar2) {
        if (baseAd == 0 || !(baseAd instanceof com.anythink.core.common.f.a.e)) {
            Log.e("anythink", "showThirdPartyNativeSplash fail,AdCache return illegal type adObject");
            hVar.a(99);
            hVar.onSplashAdShowFail(ErrorCode.getErrorCode(ErrorCode.adShowError, "", "showThirdPartyNativeSplash fail,AdCache return illegal type adObject"));
            hVar.onSplashAdDismiss();
            return;
        }
        com.anythink.core.common.f.a.b bVar = new com.anythink.core.common.f.a.b((com.anythink.core.common.f.a.e) baseAd);
        com.anythink.core.common.f.a.c cVar2 = new com.anythink.core.common.f.a.c((com.anythink.core.common.f.a.a) baseAd, hVar2, Integer.parseInt("4"));
        String strA = com.anythink.core.common.f.a(cVar2);
        baseAd.setNativeEventListener(cVar.new AnonymousClass2(new boolean[]{false}, hVar));
        com.anythink.basead.d.i.a().a(strA, baseAd);
        ThirdPartySplashATView thirdPartySplashATView = new ThirdPartySplashATView(activity.getApplicationContext(), cVar2, bVar, cVar.new AnonymousClass3(hVar, baseAd, viewGroup), strA);
        thirdPartySplashATView.setDontCountDown(z);
        ViewGroup customAdContainer = baseAd != 0 ? baseAd.getCustomAdContainer() : null;
        if (customAdContainer != null) {
            x.a(customAdContainer);
            customAdContainer.addView(thirdPartySplashATView);
        } else {
            customAdContainer = thirdPartySplashATView;
        }
        thirdPartySplashATView.registerNativeClickListener(viewGroup);
        viewGroup.addView(customAdContainer);
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.d.a(context, map);
    }

    public final com.anythink.core.common.g a(String str) {
        return this.d.b(str);
    }

    public final List<ATAdInfo> a(Context context) {
        return this.d.b(context);
    }

    public final synchronized void a(final Activity activity, final ViewGroup viewGroup, final a aVar, final ATEventInterface aTEventInterface, final ATSplashSkipInfo aTSplashSkipInfo, final String str, final Map<String, Object> map) {
        f fVar;
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final com.anythink.core.common.f.b bVarA = this.d.a((Context) activity, false, true, map);
        if (bVarA == null) {
            Log.e("anythink", "Splash No Cache.");
            return;
        }
        if (bVarA != null && (bVarA.d() instanceof CustomSplashAdapter)) {
            this.d.a(bVarA);
            bVarA.a(bVarA.c() + 1);
            e eVar = this.a;
            if (eVar != null && (fVar = eVar.a) != null && fVar.d == bVarA) {
                fVar.d = null;
            }
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.splashad.a.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    final CustomSplashAdapter customSplashAdapter = (CustomSplashAdapter) bVarA.d();
                    Activity activity2 = activity;
                    if (activity2 != null) {
                        customSplashAdapter.refreshActivityContext(activity2);
                    }
                    final com.anythink.core.common.f.h trackingInfo = bVarA.d().getTrackingInfo();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (trackingInfo != null) {
                        trackingInfo.B = str;
                        trackingInfo.h(com.anythink.core.common.o.h.a(trackingInfo.ai(), trackingInfo.F(), jCurrentTimeMillis));
                        v.a(c.this.b, trackingInfo);
                        v.a((Map<String, Object>) map, trackingInfo);
                        v.a(c.this.c, trackingInfo);
                    }
                    com.anythink.core.common.a.a().a(c.this.b, bVarA);
                    com.anythink.core.common.n.c.a(c.this.b).a(13, trackingInfo, customSplashAdapter.getUnitGroupInfo(), jCurrentTimeMillis);
                    n.a().b(new Runnable() { // from class: com.anythink.splashad.a.c.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            IExHandler iExHandlerB = n.a().b();
                            if (iExHandlerB != null) {
                                CustomSplashAdapter customSplashAdapter2 = customSplashAdapter;
                                customSplashAdapter2.setAdDownloadListener(iExHandlerB.createDownloadListener(customSplashAdapter2, null, aTEventInterface));
                            }
                            ATSplashSkipInfo aTSplashSkipInfo2 = aTSplashSkipInfo;
                            boolean z = aTSplashSkipInfo2 != null && aTSplashSkipInfo2.canUseCustomSkipView();
                            boolean zIsSupportCustomSkipView = customSplashAdapter.isSupportCustomSkipView();
                            if (z && zIsSupportCustomSkipView) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                aTSplashSkipInfo.setContainer(viewGroup);
                                customSplashAdapter.setSplashSkipInfo(aTSplashSkipInfo);
                            }
                            final h hVar = new h(customSplashAdapter, aVar);
                            if (customSplashAdapter.getMixedFormatAdType() == 0) {
                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                c.a(c.this, activity, viewGroup, hVar, z, bVarA.e(), trackingInfo);
                            } else {
                                CustomSplashAdapter customSplashAdapter3 = customSplashAdapter;
                                AnonymousClass1 anonymousClass13 = AnonymousClass1.this;
                                customSplashAdapter3.internalShow(activity, viewGroup, new g(hVar));
                            }
                            com.anythink.core.common.f.h trackingInfo2 = customSplashAdapter.getTrackingInfo();
                            com.anythink.core.common.n.e.a("4", trackingInfo2.ai(), trackingInfo2.ah(), trackingInfo2.F(), trackingInfo2.P(), 4, SystemClock.elapsedRealtime() - jElapsedRealtime);
                            if (!z) {
                                if (aTSplashSkipInfo != null) {
                                    Log.e("anythink", "This AdSource does't support 'Custom SkipView' or 'SkipView' is null.");
                                }
                            } else {
                                ATSplashSkipAdListener aTSplashSkipAdListener = aTSplashSkipInfo.getATSplashSkipAdListener();
                                if (aTSplashSkipAdListener != null) {
                                    aTSplashSkipAdListener.isSupportCustomSkipView(zIsSupportCustomSkipView);
                                }
                                if (zIsSupportCustomSkipView) {
                                    aTSplashSkipInfo.getSkipView().setOnClickListener(new View.OnClickListener() { // from class: com.anythink.splashad.a.c.1.1.1
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view) {
                                            h hVar2 = hVar;
                                            if (hVar2 != null) {
                                                hVar2.a(2);
                                                hVar.onSplashAdDismiss();
                                            }
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            });
        }
    }

    public final void a(Context context, ATMediationRequestInfo aTMediationRequestInfo, String str, b bVar, int i, boolean z, int i2, com.anythink.core.common.b.b bVar2, Map<String, Object> map, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        com.anythink.core.common.f.v vVar = new com.anythink.core.common.f.v();
        vVar.a(context);
        vVar.b = aTMediationRequestInfo;
        vVar.c = str;
        vVar.h = i;
        vVar.j = z;
        vVar.d = i2;
        vVar.e = bVar2;
        if (map != null) {
            try {
                vVar.g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        vVar.l = aTAdxBidFloorInfo;
        com.anythink.core.common.f fVar = this.d;
        if (fVar != null) {
            fVar.b(this.b, "4", this.c, vVar, bVar);
        }
    }

    public final boolean a(ATAdStatusInfo aTAdStatusInfo) {
        return this.d.a(aTAdStatusInfo);
    }

    public final com.anythink.core.common.f.b b(Context context, Map<String, Object> map) {
        return this.d.a(context, false, false, map);
    }
}
