package com.anythink.interstitial.a;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.basead.e.b;
import com.anythink.basead.e.i;
import com.anythink.basead.ui.BaseATActivity;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.BaseAd;
import com.anythink.core.api.IExHandler;
import com.anythink.core.basead.adx.api.ATAdxBidFloorInfo;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f;
import com.anythink.core.common.f.h;
import com.anythink.core.common.o.v;
import com.anythink.core.common.res.b;
import com.anythink.interstitial.api.ATInterstitialListener;
import com.anythink.interstitial.unitgroup.api.CustomInterstitialAdapter;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = "a";
    private static Map<String, a> g = new ConcurrentHashMap(3);
    private View b;
    private AtomicBoolean c = new AtomicBoolean(false);
    private Context d;
    private String e;
    private final f f;

    /* JADX INFO: renamed from: com.anythink.interstitial.a.a$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnTouchListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* JADX INFO: renamed from: com.anythink.interstitial.a.a$3, reason: invalid class name */
    public class AnonymousClass3 implements b.a {
        public final /* synthetic */ WeakReference a;
        public final /* synthetic */ String b;
        public final /* synthetic */ int c;

        public AnonymousClass3(WeakReference weakReference, String str, int i) {
            this.a = weakReference;
            this.b = str;
            this.c = i;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
            Log.e(a.a, "load: image load fail:".concat(String.valueOf(str2)));
            ImageView imageView = (ImageView) this.a.get();
            if (!TextUtils.equals(this.b, str) || imageView == null) {
                return;
            }
            imageView.setImageResource(this.c);
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            ImageView imageView = (ImageView) this.a.get();
            if (!TextUtils.equals(this.b, str) || imageView == null) {
                return;
            }
            imageView.setImageBitmap(bitmap);
        }
    }

    /* JADX INFO: renamed from: com.anythink.interstitial.a.a$4, reason: invalid class name */
    public class AnonymousClass4 extends b.AbstractC0061b {
        public final /* synthetic */ e a;
        public final /* synthetic */ String b;

        public AnonymousClass4(e eVar, String str) {
            this.a = eVar;
            this.b = str;
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a() {
            e eVar = this.a;
            if (eVar != null) {
                eVar.onInterstitialAdVideoStart();
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a(com.anythink.basead.c.e eVar) {
            e eVar2 = this.a;
            if (eVar2 != null) {
                eVar2.onInterstitialAdVideoError(eVar.a(), eVar.b());
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a(i iVar) {
            e eVar = this.a;
            if (eVar != null) {
                eVar.onInterstitialAdShow();
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a(boolean z) {
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void b() {
            e eVar = this.a;
            if (eVar != null) {
                eVar.onInterstitialAdVideoEnd();
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void b(i iVar) {
            e eVar = this.a;
            if (eVar != null) {
                eVar.onInterstitialAdClicked();
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void c() {
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void d() {
            com.anythink.basead.e.b.a().b(this.b);
            e eVar = this.a;
            if (eVar != null) {
                eVar.onInterstitialAdClose();
            }
        }
    }

    private a(Context context, String str) {
        this.d = context.getApplicationContext();
        this.e = str;
        this.f = f.a(context, str, "3");
    }

    public static a a(Context context, String str) {
        a aVar = g.get(str);
        if (aVar == null) {
            synchronized (a.class) {
                if (aVar == null) {
                    aVar = new a(context, str);
                    g.put(str, aVar);
                }
            }
        }
        return aVar;
    }

    private static void a() {
    }

    private void a(Activity activity) {
        if (activity == null) {
            return;
        }
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.d).b(n.a().o());
        String strP = aVarB.p();
        String strO = aVarB.o();
        if (this.b == null) {
            this.b = LayoutInflater.from(activity.getApplicationContext()).inflate(com.anythink.core.common.o.i.a(activity, "interstitial_loading_layout", "layout"), (ViewGroup) null);
        }
        this.b.setOnTouchListener(new AnonymousClass2());
        ImageView imageView = (ImageView) this.b.findViewById(com.anythink.core.common.o.i.a(activity, "interstitial_iv_loading", "id"));
        TextView textView = (TextView) this.b.findViewById(com.anythink.core.common.o.i.a(activity, "interstitial_tv_loading", "id"));
        int iA = com.anythink.core.common.o.i.a(activity, 30.0f);
        imageView.setMinimumWidth(iA);
        imageView.setMinimumHeight(iA);
        int iA2 = com.anythink.core.common.o.i.a(activity, 90.0f);
        imageView.setMaxWidth(iA2);
        imageView.setMaxHeight(iA2);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int iA3 = com.anythink.core.common.o.i.a(activity, "interstitial_loading_default", com.anythink.expressad.foundation.h.i.c);
        if (TextUtils.isEmpty(strP)) {
            imageView.setImageResource(iA3);
        } else {
            com.anythink.core.common.res.b.a(activity.getApplicationContext()).a(new com.anythink.core.common.res.e(3, strP), new AnonymousClass3(new WeakReference(imageView), strP, iA3));
        }
        if (TextUtils.isEmpty(strO)) {
            textView.setText(com.anythink.core.common.o.i.a(activity, "interstitial_text_loading_default", com.anythink.expressad.foundation.h.i.g));
        } else {
            textView.setText(strO);
        }
        View view = this.b;
        if (view != null && view.getParent() != null) {
            ((ViewGroup) this.b.getParent()).removeView(this.b);
        }
        ((ViewGroup) activity.getWindow().getDecorView()).addView(this.b, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(Activity activity, e eVar, BaseAd baseAd, h hVar, String str) {
        if (baseAd == 0 || !(baseAd instanceof com.anythink.core.common.f.a.e)) {
            Log.e("anythink", "showThirdPartyNativeSplash fail,AdCache return illegal type adObject");
            if (eVar != null) {
                eVar.onInterstitialAdVideoError("", "showThirdPartyNativeInterstitial fail,AdCache return illegal type adObject");
                return;
            }
            return;
        }
        com.anythink.core.common.f.a.b bVar = new com.anythink.core.common.f.a.b((com.anythink.core.common.f.a.e) baseAd);
        com.anythink.core.common.f.a.c cVar = new com.anythink.core.common.f.a.c((com.anythink.core.common.f.a.a) baseAd, hVar, Integer.parseInt("3"));
        String strA = f.a(cVar);
        com.anythink.basead.e.b.a().a(strA, new AnonymousClass4(eVar, strA));
        com.anythink.basead.d.i.a().a(strA, baseAd);
        com.anythink.core.basead.b.c cVar2 = new com.anythink.core.basead.b.c();
        cVar2.c = bVar;
        cVar2.d = strA;
        cVar2.a = 3;
        cVar2.h = cVar;
        cVar2.e = com.anythink.core.common.o.e.g(activity);
        cVar2.b = str;
        BaseATActivity.a(activity, cVar2);
    }

    public static /* synthetic */ void a(a aVar, Activity activity) {
        if (activity != null) {
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(aVar.d).b(n.a().o());
            String strP = aVarB.p();
            String strO = aVarB.o();
            if (aVar.b == null) {
                aVar.b = LayoutInflater.from(activity.getApplicationContext()).inflate(com.anythink.core.common.o.i.a(activity, "interstitial_loading_layout", "layout"), (ViewGroup) null);
            }
            aVar.b.setOnTouchListener(aVar.new AnonymousClass2());
            ImageView imageView = (ImageView) aVar.b.findViewById(com.anythink.core.common.o.i.a(activity, "interstitial_iv_loading", "id"));
            TextView textView = (TextView) aVar.b.findViewById(com.anythink.core.common.o.i.a(activity, "interstitial_tv_loading", "id"));
            int iA = com.anythink.core.common.o.i.a(activity, 30.0f);
            imageView.setMinimumWidth(iA);
            imageView.setMinimumHeight(iA);
            int iA2 = com.anythink.core.common.o.i.a(activity, 90.0f);
            imageView.setMaxWidth(iA2);
            imageView.setMaxHeight(iA2);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            int iA3 = com.anythink.core.common.o.i.a(activity, "interstitial_loading_default", com.anythink.expressad.foundation.h.i.c);
            if (TextUtils.isEmpty(strP)) {
                imageView.setImageResource(iA3);
            } else {
                com.anythink.core.common.res.b.a(activity.getApplicationContext()).a(new com.anythink.core.common.res.e(3, strP), aVar.new AnonymousClass3(new WeakReference(imageView), strP, iA3));
            }
            if (TextUtils.isEmpty(strO)) {
                textView.setText(com.anythink.core.common.o.i.a(activity, "interstitial_text_loading_default", com.anythink.expressad.foundation.h.i.g));
            } else {
                textView.setText(strO);
            }
            View view = aVar.b;
            if (view != null && view.getParent() != null) {
                ((ViewGroup) aVar.b.getParent()).removeView(aVar.b);
            }
            ((ViewGroup) activity.getWindow().getDecorView()).addView(aVar.b, new FrameLayout.LayoutParams(-1, -1));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(a aVar, Activity activity, e eVar, BaseAd baseAd, h hVar, String str) {
        if (baseAd == 0 || !(baseAd instanceof com.anythink.core.common.f.a.e)) {
            Log.e("anythink", "showThirdPartyNativeSplash fail,AdCache return illegal type adObject");
            eVar.onInterstitialAdVideoError("", "showThirdPartyNativeInterstitial fail,AdCache return illegal type adObject");
            return;
        }
        com.anythink.core.common.f.a.b bVar = new com.anythink.core.common.f.a.b((com.anythink.core.common.f.a.e) baseAd);
        com.anythink.core.common.f.a.c cVar = new com.anythink.core.common.f.a.c((com.anythink.core.common.f.a.a) baseAd, hVar, Integer.parseInt("3"));
        String strA = f.a(cVar);
        com.anythink.basead.e.b.a().a(strA, aVar.new AnonymousClass4(eVar, strA));
        com.anythink.basead.d.i.a().a(strA, baseAd);
        com.anythink.core.basead.b.c cVar2 = new com.anythink.core.basead.b.c();
        cVar2.c = bVar;
        cVar2.d = strA;
        cVar2.a = 3;
        cVar2.h = cVar;
        cVar2.e = com.anythink.core.common.o.e.g(activity);
        cVar2.b = str;
        BaseATActivity.a(activity, cVar2);
    }

    private static void b() {
    }

    private static void c() {
    }

    public final ATAdStatusInfo a(Context context, Map<String, Object> map) {
        return this.f.a(context, map);
    }

    public final List<ATAdInfo> a(Context context) {
        return this.f.b(context);
    }

    public final synchronized void a(final Activity activity, final String str, final ATInterstitialListener aTInterstitialListener, final ATEventInterface aTEventInterface, final Map<String, Object> map) {
        if (this.c.get()) {
            StringBuilder sb = new StringBuilder("The placementId(");
            sb.append(this.e);
            sb.append(") is already in the process of being delayed.");
            return;
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        final com.anythink.core.common.f.b bVarA = this.f.a((Context) activity, false, true, map);
        if (bVarA == null || !(bVarA.d() instanceof CustomInterstitialAdapter)) {
            if (this.f.a((ATAdStatusInfo) null)) {
                a(n.a().E(), 7, (com.anythink.core.common.b.a) null, (com.anythink.core.common.b.b) null, map, (ATAdxBidFloorInfo) null);
            }
            return;
        }
        this.f.a(bVarA);
        bVarA.a(bVarA.c() + 1);
        final int iAd = bVarA.d().getUnitGroupInfo().ad();
        if (iAd > 0) {
            this.c.set(true);
        }
        com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.interstitial.a.a.1
            @Override // java.lang.Runnable
            public final void run() {
                final CustomInterstitialAdapter customInterstitialAdapter = (CustomInterstitialAdapter) bVarA.d();
                Activity activity2 = activity;
                if (activity2 != null) {
                    customInterstitialAdapter.refreshActivityContext(activity2);
                }
                final h trackingInfo = bVarA.d().getTrackingInfo();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (trackingInfo != null) {
                    trackingInfo.B = str;
                    trackingInfo.h(com.anythink.core.common.o.h.a(trackingInfo.ai(), trackingInfo.F(), jCurrentTimeMillis));
                    v.a(a.this.d, trackingInfo);
                    v.a((Map<String, Object>) map, trackingInfo);
                    v.a(a.this.e, trackingInfo);
                }
                com.anythink.core.common.a.a().a(a.this.d, bVarA);
                com.anythink.core.common.n.c.a(a.this.d).a(13, trackingInfo, bVarA.d().getUnitGroupInfo(), jCurrentTimeMillis);
                if (iAd > 0) {
                    n.a().b(new Runnable() { // from class: com.anythink.interstitial.a.a.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            a.a(a.this, activity);
                        }
                    });
                }
                n.a().a(new Runnable() { // from class: com.anythink.interstitial.a.a.1.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        customInterstitialAdapter.setScenario(str);
                        IExHandler iExHandlerB = n.a().b();
                        if (iExHandlerB != null) {
                            CustomInterstitialAdapter customInterstitialAdapter2 = customInterstitialAdapter;
                            customInterstitialAdapter2.setAdDownloadListener(iExHandlerB.createDownloadListener(customInterstitialAdapter2, null, aTEventInterface));
                        }
                        e eVar = new e(customInterstitialAdapter, aTInterstitialListener);
                        if (customInterstitialAdapter.getMixedFormatAdType() == 0) {
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            a.a(a.this, activity, eVar, bVarA.e(), trackingInfo, str);
                        } else {
                            customInterstitialAdapter.internalShow(activity, null, new b(eVar));
                        }
                        h trackingInfo2 = customInterstitialAdapter.getTrackingInfo();
                        com.anythink.core.common.n.e.a("4", trackingInfo2.ai(), trackingInfo2.ah(), trackingInfo2.F(), trackingInfo2.P(), 4, SystemClock.elapsedRealtime() - jElapsedRealtime);
                        AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                        if (iAd <= 0 || !a.this.c.get()) {
                            return;
                        }
                        if (a.this.b != null) {
                            ((ViewGroup) a.this.b.getParent()).removeView(a.this.b);
                        }
                        a.this.c.set(false);
                    }
                }, iAd);
            }
        });
    }

    public final void a(Context context, int i, com.anythink.core.common.b.a aVar, com.anythink.core.common.b.b bVar, Map<String, Object> map, ATAdxBidFloorInfo aTAdxBidFloorInfo) {
        com.anythink.core.common.f.v vVar = new com.anythink.core.common.f.v();
        vVar.a(context);
        vVar.d = i;
        vVar.e = bVar;
        if (map != null) {
            try {
                vVar.g = new HashMap(map);
            } catch (Throwable unused) {
            }
        }
        vVar.l = aTAdxBidFloorInfo;
        this.f.b(this.d, "3", this.e, vVar, aVar);
    }
}
