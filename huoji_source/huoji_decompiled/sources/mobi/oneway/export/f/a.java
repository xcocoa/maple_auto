package mobi.oneway.export.f;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.util.Map;
import mobi.oneway.export.b.a;
import mobi.oneway.export.b.b.i;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.enums.PluginErrorType;
import mobi.oneway.export.f.a.h;
import mobi.oneway.export.g.m;
import mobi.oneway.export.plugin.BaseAd;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private int a;
    private BaseAd b;
    private Class c;
    private long d = -1;
    private long e;
    private String f;
    private ClassLoader g;
    private String h;
    private String i;
    private String j;
    private String k;
    private mobi.oneway.export.f.a.a l;

    /* JADX INFO: renamed from: mobi.oneway.export.f.a$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[AdType.values().length];
            a = iArr;
            try {
                iArr[AdType.rewarded.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[AdType.interstitial.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[AdType.interstitialimage.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[AdType.interactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[AdType.feed.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[AdType.splash.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public a(g gVar, String str, String str2) {
        this.a = gVar.a();
        this.c = gVar.b();
        this.f = gVar.d();
        this.g = gVar.c();
        this.e = gVar.e();
        this.j = gVar.f();
        this.h = str2;
        this.i = str;
        if (TextUtils.isEmpty(str2) || str.equals(str2)) {
            this.k = str;
        } else {
            this.k = str + "-" + str2;
        }
        a(this.j, (Map<String, String>) null);
        a(m.a());
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private mobi.oneway.export.f.a.a a(AdType adType, mobi.oneway.export.b.b.b bVar) {
        mobi.oneway.export.f.a.a aVar;
        mobi.oneway.export.f.a.a gVar;
        switch (AnonymousClass1.a[adType.ordinal()]) {
            case 1:
                gVar = new mobi.oneway.export.f.a.g(this);
                break;
            case 2:
                gVar = new mobi.oneway.export.f.a.f(this);
                break;
            case 3:
                gVar = new mobi.oneway.export.f.a.e(this);
                break;
            case 4:
                gVar = new mobi.oneway.export.f.a.d(this);
                break;
            case 5:
                gVar = new mobi.oneway.export.f.a.c(this);
                break;
            case 6:
                gVar = new h(this);
                break;
            default:
                aVar = this.l;
                if (aVar != null) {
                    aVar.a(bVar);
                }
                return this.l;
        }
        this.l = gVar;
        aVar = this.l;
        if (aVar != null) {
        }
        return this.l;
    }

    private void a(Exception exc) {
        mobi.oneway.export.e.c.a(PluginErrorType.shell_error_reflectMethod, mobi.oneway.export.g.g.a((Throwable) exc));
    }

    private void a(String str, Map<String, String> map) {
        try {
            BaseAd baseAd = (BaseAd) this.c.getConstructor(String.class, Map.class).newInstance(str, map);
            this.b = baseAd;
            baseAd.setAdConfig(i());
        } catch (Exception e) {
            e.printStackTrace();
            a(e);
        }
    }

    private boolean h() {
        if (!mobi.oneway.export.b.a.a().a(this.i, this.h)) {
            mobi.oneway.export.b.a.a().a(a.EnumC0243a.TYPE_REQUEST, this.i, this.h);
            return false;
        }
        mobi.oneway.export.f.a.a aVar = this.l;
        if (aVar == null) {
            return true;
        }
        aVar.b(OnewaySdkError.LOAD_ERROR, mobi.oneway.export.a.a.n);
        return true;
    }

    private String i() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cacheAd", mobi.oneway.export.b.a.a().b());
            jSONObject.put("placements", new JSONArray(d.a()));
            return jSONObject.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public int a() {
        return this.a;
    }

    public void a(Activity activity, ViewGroup viewGroup, i iVar, long j) {
        if (this.b == null) {
            return;
        }
        h hVar = (h) a(AdType.splash, iVar);
        if (h()) {
            return;
        }
        this.b.showSplashAd(activity, this.k, viewGroup, hVar, j);
    }

    public void a(Activity activity, mobi.oneway.export.b.b.e eVar) {
        if (this.b == null) {
            return;
        }
        this.b.initInteractiveAd(activity, this.k, (mobi.oneway.export.f.a.d) a(AdType.interactive, eVar));
    }

    public void a(Activity activity, mobi.oneway.export.b.b.f fVar) {
        if (this.b == null) {
            return;
        }
        this.b.initInterstitialAd(activity, this.k, (mobi.oneway.export.f.a.f) a(AdType.interstitial, fVar));
    }

    public void a(Activity activity, mobi.oneway.export.b.b.g gVar) {
        if (this.b == null) {
            return;
        }
        this.b.initInterstitialImageAd(activity, this.k, (mobi.oneway.export.f.a.e) a(AdType.interstitialimage, gVar));
    }

    public void a(Activity activity, mobi.oneway.export.b.b.h hVar) {
        if (this.b == null) {
            return;
        }
        this.b.initRewardAd(activity, this.k, (mobi.oneway.export.f.a.g) a(AdType.rewarded, hVar));
    }

    public void a(Context context, mobi.oneway.export.b.b.c cVar) {
        if (this.b == null) {
            return;
        }
        mobi.oneway.export.f.a.c cVar2 = (mobi.oneway.export.f.a.c) a(AdType.feed, cVar);
        if (h()) {
            return;
        }
        this.b.loadFeedAd(context, this.k, cVar2);
    }

    public void a(mobi.oneway.export.b.b.e eVar) {
        if (this.b == null) {
            return;
        }
        this.b.setInteractiveAdListener(this.k, (mobi.oneway.export.f.a.d) a(AdType.interactive, eVar));
    }

    public void a(mobi.oneway.export.b.b.f fVar) {
        if (this.b == null) {
            return;
        }
        this.b.setInterstitialAdListener(this.k, (mobi.oneway.export.f.a.f) a(AdType.interstitial, fVar));
    }

    public void a(mobi.oneway.export.b.b.g gVar) {
        if (this.b == null) {
            return;
        }
        this.b.setInterstitialImageAdListener(this.k, (mobi.oneway.export.f.a.e) a(AdType.interstitialimage, gVar));
    }

    public void a(mobi.oneway.export.b.b.h hVar) {
        if (this.b == null) {
            return;
        }
        this.b.setRewardAdListener(this.k, (mobi.oneway.export.f.a.g) a(AdType.rewarded, hVar));
    }

    public void a(AdType adType) {
        if (this.b == null || h()) {
            return;
        }
        int i = AnonymousClass1.a[adType.ordinal()];
        if (i == 1) {
            this.b.loadRewardAd(this.k);
            return;
        }
        if (i == 2) {
            this.b.loadInterstitialAd(this.k);
        } else if (i == 3) {
            this.b.loadInterstitialImageAd(this.k);
        } else {
            if (i != 4) {
                return;
            }
            this.b.loadInteractiveAd(this.k);
        }
    }

    public void a(AdType adType, Activity activity, String str) {
        if (this.b == null) {
            return;
        }
        int i = AnonymousClass1.a[adType.ordinal()];
        if (i == 1) {
            this.b.showRewardAd(activity, this.k, str);
            return;
        }
        if (i == 2) {
            this.b.showInterstitialAd(activity, this.k, str);
        } else if (i == 3) {
            this.b.showInterstitialImageAd(activity, this.k, str);
        } else {
            if (i != 4) {
                return;
            }
            this.b.showInteractiveAd(activity, this.k, str);
        }
    }

    public void a(boolean z) {
        BaseAd baseAd = this.b;
        if (baseAd == null) {
            return;
        }
        baseAd.setDebugMode(z);
    }

    public long b() {
        BaseAd baseAd;
        if (this.d != -1 || (baseAd = this.b) == null) {
            return 0L;
        }
        return baseAd.getCrc();
    }

    public boolean b(AdType adType) {
        if (this.b == null) {
            return false;
        }
        int i = AnonymousClass1.a[adType.ordinal()];
        if (i == 1) {
            return this.b.isRewardAdReady(this.k);
        }
        if (i == 2) {
            return this.b.isInterstitialAdReady(this.k);
        }
        if (i == 3) {
            return this.b.isInterstitialImageAdReady(this.k);
        }
        if (i != 4) {
            return false;
        }
        return this.b.isInteractiveAdReady(this.k);
    }

    public long c() {
        return this.e;
    }

    public void c(AdType adType) {
        BaseAd baseAd = this.b;
        if (baseAd == null) {
            return;
        }
        baseAd.destoryAd(adType, this.k);
        mobi.oneway.export.f.a.a aVar = this.l;
        if (aVar != null) {
            aVar.a((mobi.oneway.export.b.b.d) null);
            this.l = null;
        }
    }

    public String d() {
        return this.f;
    }

    public boolean d(AdType adType) {
        if (adType == AdType.splash) {
            return true;
        }
        int i = AnonymousClass1.a[adType.ordinal()];
        String str = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "" : "hasFeedAd" : "hasInteractiveAd" : "hasInterstitialImageAd" : "hasInterstitialAd" : "hasRewardAd";
        try {
            BaseAd baseAd = this.b;
            if (baseAd == null) {
                return false;
            }
            Field declaredField = baseAd.getClass().getSuperclass().getDeclaredField(str);
            declaredField.setAccessible(true);
            return ((Boolean) declaredField.get(this.b)).booleanValue();
        } catch (Exception e) {
            e.printStackTrace();
            a(e);
            return false;
        }
    }

    public ClassLoader e() {
        return this.g;
    }

    public String f() {
        return this.h;
    }

    public String g() {
        return this.i;
    }
}
