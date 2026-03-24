package mobi.oneway.export.f;

import android.os.Build;
import java.lang.reflect.Field;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import mobi.oneway.export.enums.AdType;
import mobi.oneway.export.enums.EventType;
import mobi.oneway.export.enums.OnewaySdkError;
import mobi.oneway.export.g.l;
import mobi.oneway.export.g.n;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    private static ExecutorService g = Executors.newCachedThreadPool();
    private Long a = 0L;
    private AdType b;
    private String c;
    private mobi.oneway.export.f.a d;
    private String e;
    private String f;

    /* JADX INFO: renamed from: mobi.oneway.export.f.e$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EventType.values().length];
            a = iArr;
            try {
                iArr[EventType.ready.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[EventType.show.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[EventType.end.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[EventType.click.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[EventType.close.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[EventType.reward.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[EventType.skip.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[EventType.adFail.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public class a implements Runnable {
        public EventType a;

        public a(EventType eventType) {
            this.a = eventType;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                mobi.oneway.export.d.f fVarA = new mobi.oneway.export.d.f(mobi.oneway.export.a.a.e, mobi.oneway.export.a.a.d).a("eventName", (Object) this.a.toString()).a("publishId", (Object) mobi.oneway.export.a.b.b()).a("token", (Object) mobi.oneway.export.a.b.d()).a("adType", Integer.valueOf(e.this.b.value())).a("dmd", (Object) Build.MODEL).a("dmk", (Object) Build.BRAND).a("ip", (Object) n.a(mobi.oneway.export.a.b.a())).a("osv", (Object) Build.VERSION.RELEASE);
                if (mobi.oneway.export.a.b.c()) {
                    fVarA.a(com.anythink.basead.a.e.a, Boolean.valueOf(mobi.oneway.export.a.b.c()));
                }
                fVarA.c("POST").a(e.this.a()).n();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public e(AdType adType, mobi.oneway.export.f.a aVar) {
        this.b = adType;
        this.d = aVar;
        this.e = aVar.g();
        this.f = aVar.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        String strA = "";
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("cid", b.a(this.d.a(), this.e, this.f));
            jSONObject.put("v", this.d.d());
            jSONObject.put(com.anythink.expressad.foundation.g.a.Z, mobi.oneway.export.a.f);
            jSONObject.put("ssv", mobi.oneway.export.g.f.c());
            jSONObject.put("wv", "");
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put("did", mobi.oneway.export.g.f.a());
            jSONObject.put("bdid", mobi.oneway.export.g.f.b());
            jSONObject.put("dos", "Android");
            jSONObject.put("ua", mobi.oneway.export.g.f.d());
            jSONObject.put(com.anythink.expressad.d.a.b.dx, mobi.oneway.export.g.f.f());
            jSONObject.put(com.anythink.expressad.foundation.g.a.S, mobi.oneway.export.g.f.g());
            jSONObject.put("osv", Build.VERSION.RELEASE);
            jSONObject.put("dmd", Build.MODEL);
            jSONObject.put("dmk", Build.BRAND);
            jSONObject.put("aid", mobi.oneway.export.g.f.e());
            jSONObject.put("bssid", mobi.oneway.export.g.f.i());
            jSONObject.put("ssid", mobi.oneway.export.g.f.h());
            jSONObject.put("simopt", mobi.oneway.export.g.f.j());
            jSONObject.put("simoptn", mobi.oneway.export.g.f.k());
            jSONObject.put("lng", l.b());
            jSONObject.put("lat", l.a());
            jSONObject.put("adp", this.d.a());
            jSONObject.put("ip", n.a(mobi.oneway.export.a.b.a()));
            jSONObject.put("adts", this.a);
            jSONObject.put("crc", this.d.b());
            jSONObject.put(com.anythink.expressad.d.a.b.bH, mobi.oneway.export.a.b.e());
            jSONObject.put("slt", this.d.c());
            jSONObject.put("dt", this.c);
            jSONObject.put(com.anythink.expressad.d.a.b.aB, this.e);
            jSONObject.put("thirdPid", this.f);
            jSONObject.put("oaid", c());
            strA = mobi.oneway.export.a.b.c() ? mobi.oneway.export.g.a.a(jSONObject.toString(), mobi.oneway.export.a.b.d(), mobi.oneway.export.a.b.b()) : jSONObject.toString();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return strA;
    }

    private void b() {
        this.a = Long.valueOf(System.currentTimeMillis());
        b.a(this.d.a(), this.e, this.f, mobi.oneway.export.g.e.a(mobi.oneway.export.a.b.b() + "-" + this.b.value() + "-" + this.a).longValue());
        this.c = "";
    }

    private String c() {
        try {
            Field declaredField = this.d.e().loadClass("mobi.oneway.third_common.util.oaid.OaidHolder").getDeclaredField("oaid");
            declaredField.setAccessible(true);
            return (String) declaredField.get(null);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(EventType eventType, String str) {
        if (this.d.a() == 1) {
            return;
        }
        int i = AnonymousClass1.a[eventType.ordinal()];
        if (i == 1) {
            b();
        } else if (i != 2) {
            if (i == 8) {
                b();
                this.c = str;
            }
        } else if (this.b.equals(AdType.splash)) {
        }
        g.execute(new a(eventType));
    }

    public void a(EventType eventType, OnewaySdkError onewaySdkError, String str) {
        a(eventType, onewaySdkError + "--" + str);
    }
}
