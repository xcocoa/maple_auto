package com.anythink.interstitial.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.anythink.core.api.ATAdInfo;
import com.anythink.core.api.ATAdStatusInfo;
import com.anythink.core.api.ATEventInterface;
import com.anythink.core.api.AdError;
import com.anythink.core.basead.adx.api.ATAdxSetting;
import com.anythink.core.common.b.h;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f;
import com.anythink.core.common.o.p;
import com.anythink.core.common.u;
import com.anythink.core.common.w;
import com.anythink.interstitial.api.ATInterstitialAutoEventListener;
import com.anythink.interstitial.api.ATInterstitialAutoLoadListener;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.anythink.core.common.j.b {
    private static volatile c c;
    public String a = "InterstitialAuto";
    public ATInterstitialAutoLoadListener b = new ATInterstitialAutoLoadListener() { // from class: com.anythink.interstitial.a.c.1
        @Override // com.anythink.interstitial.api.ATInterstitialAutoLoadListener
        public final void onInterstitialAutoLoadFail(final String str, final AdError adError) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.a.c.1.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (c.this.d != null) {
                        c.this.d.onInterstitialAutoLoadFail(str, adError);
                    }
                }
            });
        }

        @Override // com.anythink.interstitial.api.ATInterstitialAutoLoadListener
        public final void onInterstitialAutoLoaded(final String str) {
            n.a().b(new Runnable() { // from class: com.anythink.interstitial.a.c.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (c.this.d != null) {
                        c.this.d.onInterstitialAutoLoaded(str);
                    }
                }
            });
        }
    };
    private ATInterstitialAutoLoadListener d;

    public static c a() {
        if (c == null) {
            synchronized (c.class) {
                if (c == null) {
                    c = new c();
                }
            }
        }
        return c;
    }

    private void a(Activity activity, String str, ATInterstitialAutoEventListener aTInterstitialAutoEventListener) {
        a(activity, str, "", aTInterstitialAutoEventListener);
    }

    public static void a(String str, String str2, Map<String, Object> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        n.a().a(str, str2, "3", map);
    }

    public static void a(String str, Map<String, Object> map) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        u.a().a(str, map);
    }

    private ATInterstitialAutoLoadListener b() {
        return this.b;
    }

    public static void b(String... strArr) {
        if (strArr == null) {
            return;
        }
        for (String str : strArr) {
            if (!TextUtils.isEmpty(str)) {
                u.a().a(str, false);
                com.anythink.core.common.j.d dVarA = f(str).a();
                if (dVarA != null) {
                    dVarA.a((com.anythink.core.common.j.b) null);
                    dVarA.c();
                }
            }
        }
    }

    public static List<ATAdInfo> d(String str) {
        f fVarF = f(str);
        if (fVarF != null) {
            return fVarF.b(n.a().E());
        }
        return null;
    }

    private ATAdStatusInfo e(String str) {
        if (n.a().f() == null || TextUtils.isEmpty(n.a().o()) || TextUtils.isEmpty(n.a().p())) {
            Log.e(this.a, "SDK init error!");
            return null;
        }
        f fVarF = f(str);
        if (fVarF != null) {
            return fVarF.a(n.a().E(), (Map<String, Object>) null);
        }
        return null;
    }

    private static f f(String str) {
        return f.a(n.a().f(), str, "3");
    }

    public final void a(Activity activity, String str, String str2, ATInterstitialAutoEventListener aTInterstitialAutoEventListener) {
        p.b(str, h.n.t, h.n.y, h.n.n, "");
        if (TextUtils.isEmpty(str)) {
            Log.e(this.a, "PlacementId is Empty!");
            return;
        }
        if (n.a().f() == null || TextUtils.isEmpty(n.a().o()) || TextUtils.isEmpty(n.a().p())) {
            Log.e(this.a, "Show error: SDK init error!");
            return;
        }
        if (activity == null) {
            Log.e(this.a, "Interstitial Show Activity is null.");
        }
        a.a(activity, str).a(activity, str2, new d(aTInterstitialAutoEventListener), (ATEventInterface) null, (Map<String, Object>) null);
    }

    public final void a(Context context, String[] strArr, ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener) {
        String str;
        if (context instanceof Activity) {
            n.a().a((Activity) context);
        }
        if (strArr != null) {
            for (String str2 : strArr) {
                if (!TextUtils.isEmpty(str2)) {
                    if (ATAdxSetting.getInstance().isAdxNetworkMode(str2)) {
                        str = "Forbidden placement, this placement is in adx network mode";
                    } else if (w.a().c(str2)) {
                        str = "Forbidden placement";
                    } else if (!u.a().e(str2)) {
                        u.a().a(str2, true);
                        com.anythink.core.common.j.d dVarA = f(str2).a();
                        if (dVarA != null) {
                            dVarA.a(this);
                            dVarA.a(context, 3);
                        }
                    }
                    Log.w("anythink", str);
                }
            }
        }
        this.d = aTInterstitialAutoLoadListener;
    }

    @Override // com.anythink.core.common.j.b
    public final void a(String str) {
        ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener = a().b;
        if (aTInterstitialAutoLoadListener != null) {
            aTInterstitialAutoLoadListener.onInterstitialAutoLoaded(str);
        }
    }

    @Override // com.anythink.core.common.j.b
    public final void a(String str, AdError adError) {
        ATInterstitialAutoLoadListener aTInterstitialAutoLoadListener = a().b;
        if (aTInterstitialAutoLoadListener != null) {
            aTInterstitialAutoLoadListener.onInterstitialAutoLoadFail(str, adError);
        }
    }

    public final void a(String... strArr) {
        String str;
        if (strArr == null) {
            return;
        }
        for (String str2 : strArr) {
            if (!TextUtils.isEmpty(str2)) {
                if (ATAdxSetting.getInstance().isAdxNetworkMode(str2)) {
                    str = "Forbidden placement, this placement is in adx network mode";
                } else if (w.a().c(str2)) {
                    str = "Forbidden placement";
                } else if (!u.a().e(str2)) {
                    u.a().a(str2, true);
                    com.anythink.core.common.j.d dVarA = f(str2).a();
                    if (dVarA != null) {
                        dVarA.a(this);
                        dVarA.a(n.a().E(), 3);
                    }
                }
                Log.w("anythink", str);
            }
        }
    }

    public final boolean b(String str) {
        boolean zIsReady = false;
        if (!TextUtils.isEmpty(str)) {
            ATAdStatusInfo aTAdStatusInfoE = e(str);
            if (aTAdStatusInfoE == null) {
                return false;
            }
            zIsReady = aTAdStatusInfoE.isReady();
        }
        p.b(str, h.n.t, h.n.z, String.valueOf(zIsReady), "");
        return zIsReady;
    }

    public final ATAdStatusInfo c(String str) {
        ATAdStatusInfo aTAdStatusInfo;
        if (TextUtils.isEmpty(str) || (aTAdStatusInfo = e(str)) == null) {
            aTAdStatusInfo = new ATAdStatusInfo(false, false, null);
        }
        p.b(str, h.n.t, h.n.A, aTAdStatusInfo.toString(), "");
        return aTAdStatusInfo;
    }
}
