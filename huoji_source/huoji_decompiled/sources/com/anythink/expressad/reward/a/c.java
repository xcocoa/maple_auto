package com.anythink.expressad.reward.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import androidx.multidex.MultiDexExtractor;
import com.anythink.core.common.b.n;
import com.anythink.expressad.atsignalcommon.windvane.WindVaneWebView;
import com.anythink.expressad.exoplayer.k.o;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.d.r;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.video.bt.module.AnythinkBTLayout;
import com.anythink.expressad.video.bt.module.AnythinkBTRootLayout;
import com.anythink.expressad.videocommon.a;
import com.anythink.expressad.videocommon.b.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static final String a = "RewardCampaignsResourceManager";
    private static Map<String, a> d = null;
    private static final int f = 100;
    private static final int g = 200;
    private static final int h = 101;
    private static final int i = 201;
    private static final int j = 102;
    private static final int k = 202;
    private static final int l = 103;
    private static final int m = 203;
    private static final int n = 104;
    private static final int o = 204;
    private static final int p = 105;
    private static final int q = 205;
    private static final int r = 0;
    private static final int s = 1;
    private final h b;
    private ConcurrentHashMap<String, List<com.anythink.expressad.foundation.d.c>> c;
    private boolean e;
    private volatile List<WindVaneWebView> t;

    /* JADX INFO: renamed from: com.anythink.expressad.reward.a.c$3, reason: invalid class name */
    public class AnonymousClass3 implements Runnable {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ WindVaneWebView b;
        public final /* synthetic */ com.anythink.expressad.foundation.d.c c;
        public final /* synthetic */ List d;
        public final /* synthetic */ String e;
        public final /* synthetic */ com.anythink.expressad.videocommon.e.d f;
        public final /* synthetic */ String g;

        public AnonymousClass3(boolean z, WindVaneWebView windVaneWebView, com.anythink.expressad.foundation.d.c cVar, List list, String str, com.anythink.expressad.videocommon.e.d dVar, String str2) {
            this.a = z;
            this.b = windVaneWebView;
            this.c = cVar;
            this.d = list;
            this.e = str;
            this.f = dVar;
            this.g = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            c.a(this.a, this.b, this.c.M().e(), this.c, this.d, com.anythink.expressad.videocommon.b.i.a().c(this.c.M().e()), this.e, this.f, this.g, c.this.e);
        }
    }

    public static class a {
        public boolean a;
        public boolean b;
        public int c;
        public int d;
        public String e;
        public String f;
        public int g;
        public CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> h;
        public CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> i;

        public a(boolean z, boolean z3, int i, int i2, String str, String str2, int i3, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList) {
            this.a = z;
            this.b = z3;
            this.c = i;
            this.d = i2;
            this.e = str;
            this.f = str2;
            this.g = i3;
            this.h = copyOnWriteArrayList;
            this.i = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        }
    }

    public static class b extends com.anythink.expressad.atsignalcommon.a.a {
        private final Handler b;
        private final Runnable c;
        private final boolean d;
        private final boolean e;
        private int f;
        private String g;
        private String h;
        private String i;
        private String j;
        private a.C0154a k;
        private com.anythink.expressad.foundation.d.c l;
        private CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> m;
        private com.anythink.expressad.videocommon.e.d n;
        private final j o;
        private boolean q;
        private boolean r;
        private boolean t;
        private long u;
        private int s = 0;
        private boolean p = false;

        public b(boolean z, Handler handler, Runnable runnable, boolean z3, boolean z4, int i, String str, String str2, String str3, String str4, a.C0154a c0154a, com.anythink.expressad.foundation.d.c cVar, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList, com.anythink.expressad.videocommon.e.d dVar, j jVar, long j) {
            this.b = handler;
            this.c = runnable;
            this.d = z3;
            this.e = z4;
            this.f = i;
            this.g = str;
            this.i = str2;
            this.h = str3;
            this.j = str4;
            this.k = c0154a;
            this.l = cVar;
            this.m = copyOnWriteArrayList;
            this.n = dVar;
            this.o = jVar;
            this.t = z;
            this.u = j;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.c
        public final String a(String str) {
            return com.anythink.expressad.videocommon.b.i.a().c(str);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00ae A[Catch: all -> 0x0115, PHI: r0
          0x00ae: PHI (r0v16 'e' java.lang.Exception) = (r0v11 'e' java.lang.Exception), (r0v19 'e' java.lang.Exception) binds: [B:40:0x0112, B:28:0x00ac] A[DONT_GENERATE, DONT_INLINE], TryCatch #2 {all -> 0x0115, blocks: (B:16:0x0062, B:18:0x0068, B:21:0x0070, B:23:0x007e, B:24:0x0083, B:27:0x00aa, B:29:0x00ae, B:30:0x00b2, B:32:0x00c0, B:34:0x00d0, B:35:0x00e6, B:36:0x00eb, B:39:0x0110), top: B:55:0x0062, inners: #0, #3 }] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x00e6 A[Catch: all -> 0x0115, TRY_LEAVE, TryCatch #2 {all -> 0x0115, blocks: (B:16:0x0062, B:18:0x0068, B:21:0x0070, B:23:0x007e, B:24:0x0083, B:27:0x00aa, B:29:0x00ae, B:30:0x00b2, B:32:0x00c0, B:34:0x00d0, B:35:0x00e6, B:36:0x00eb, B:39:0x0110), top: B:55:0x0062, inners: #0, #3 }] */
        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void a(Object obj, String str) {
            if (obj != null) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    String strOptString = new JSONObject(str).optString("id");
                    com.anythink.expressad.video.bt.a.c.a();
                    com.anythink.expressad.video.bt.a.c.a(obj, strOptString);
                    com.anythink.expressad.video.bt.a.c.a();
                    String strC = com.anythink.expressad.video.bt.a.c.c(strOptString);
                    com.anythink.expressad.video.bt.a.c.a();
                    com.anythink.expressad.foundation.d.c cVarA = com.anythink.expressad.video.bt.a.c.a(strOptString);
                    com.anythink.expressad.video.bt.a.c.a();
                    com.anythink.expressad.videocommon.e.d dVarB = com.anythink.expressad.video.bt.a.c.b(strOptString);
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    copyOnWriteArrayList.add(cVarA);
                    WindVaneWebView windVaneWebView = ((com.anythink.expressad.atsignalcommon.windvane.a) obj).a;
                    if (windVaneWebView instanceof WindVaneWebView) {
                        c cVar = m.a;
                        boolean z = this.t;
                        int i = this.s == 0 ? 3 : 6;
                        if (windVaneWebView != null) {
                            if (cVarA == null || dVarB == null) {
                                JSONObject jSONObject = new JSONObject();
                                try {
                                    jSONObject.put("id", strOptString);
                                    JSONObject jSONObject2 = new JSONObject();
                                    jSONObject2.put(r.ah, 2);
                                    jSONObject2.put("error", "data is null");
                                    jSONObject.put("data", jSONObject2);
                                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                                } catch (Exception e) {
                                    e = e;
                                    if (com.anythink.expressad.a.a) {
                                        e.getLocalizedMessage();
                                    }
                                }
                            } else {
                                try {
                                    if (cVarA.M() != null && !TextUtils.isEmpty(strC)) {
                                        if (TextUtils.isEmpty(cVarA.M().e())) {
                                            JSONObject jSONObject3 = new JSONObject();
                                            try {
                                                jSONObject3.put("id", strOptString);
                                                JSONObject jSONObject4 = new JSONObject();
                                                jSONObject4.put(r.ah, 1);
                                                jSONObject4.put("error", "data is null");
                                                jSONObject3.put("data", jSONObject4);
                                                com.anythink.expressad.atsignalcommon.windvane.j.a();
                                                com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
                                            } catch (Exception e2) {
                                                e = e2;
                                                if (com.anythink.expressad.a.a) {
                                                }
                                            }
                                        } else if (TextUtils.isEmpty(cVarA.M().e()) || !cVarA.M().e().contains(com.anythink.expressad.foundation.d.c.d)) {
                                            new Handler(Looper.getMainLooper()).postDelayed(cVar.new AnonymousClass3(z, windVaneWebView, cVarA, copyOnWriteArrayList, strC, dVarB, strOptString), i * 1000);
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                }
                            }
                        }
                        this.s++;
                        return;
                    }
                    return;
                } catch (Throwable th2) {
                    th = th2;
                }
                th.getMessage();
            }
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.c
        public final void a(String str, int i, int i2) {
            StringBuilder sb = new StringBuilder("loadAds: unitID ");
            sb.append(str);
            sb.append(" type ");
            sb.append(i);
            sb.append(" adType ");
            sb.append(i2);
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onPageFinished(WebView webView, String str) {
            Runnable runnable;
            super.onPageFinished(webView, str);
            if (this.q) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.h);
            sb.append("_");
            sb.append(this.g);
            if (!str.contains("wfr=1")) {
                com.anythink.expressad.videocommon.b.l.a().c(this.h + "_" + this.j + "_" + this.g, true);
                Handler handler = this.b;
                if (handler != null && (runnable = this.c) != null) {
                    handler.removeCallbacks(runnable);
                }
                a.C0154a c0154a = this.k;
                if (c0154a != null) {
                    c0154a.a(true);
                }
                j jVar = this.o;
                if (jVar != null) {
                    jVar.a();
                }
            }
            com.anythink.expressad.atsignalcommon.windvane.j.a();
            com.anythink.expressad.atsignalcommon.windvane.j.b(webView);
            this.q = true;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            StringBuilder sb = new StringBuilder("onReceivedError: ");
            sb.append(i);
            sb.append("  ");
            sb.append(str);
            com.anythink.expressad.videocommon.b.l.a().c(this.h + "_" + this.j + "_" + this.g, false);
            if (this.o != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.h);
                sb2.append("_");
                sb2.append(this.g);
                a.C0154a c0154a = this.k;
                if (c0154a != null) {
                    c0154a.a(false);
                }
                this.o.a(str);
            }
        }

        @Override // com.anythink.expressad.atsignalcommon.a.a, com.anythink.expressad.atsignalcommon.windvane.e
        public final void readyState(WebView webView, int i) {
            Runnable runnable;
            if (this.r) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.h);
            sb.append("_");
            sb.append(this.g);
            StringBuilder sb2 = new StringBuilder("CampaignTPLWindVaneWebviewClient start to preload bid temp resource readyState: ");
            sb2.append(i);
            sb2.append(" isCache: ");
            sb2.append(this.p);
            if (i == 1) {
                if (this.p) {
                    com.anythink.expressad.videocommon.a.e(this.h + "_" + this.j);
                } else {
                    com.anythink.expressad.videocommon.a.d(this.h + "_" + this.j);
                }
                StringBuilder sb3 = new StringBuilder("add bid temp: ");
                sb3.append(this.h);
                sb3.append("_");
                sb3.append(this.j);
                sb3.append("_");
                sb3.append(this.g);
                com.anythink.expressad.videocommon.a.a(this.h + "_" + this.j + "_" + this.g, this.k, true, this.p);
                Handler handler = this.b;
                if (handler != null && (runnable = this.c) != null) {
                    handler.removeCallbacks(runnable);
                }
                com.anythink.expressad.videocommon.b.l.a().c(this.h + "_" + this.j + "_" + this.g, true);
                a.C0154a c0154a = this.k;
                if (c0154a != null) {
                    c0154a.a(true);
                }
                j jVar = this.o;
                if (jVar != null) {
                    jVar.a();
                }
            } else {
                com.anythink.expressad.videocommon.b.l.a().c(this.h + "_" + this.j + "_" + this.g, false);
                a.C0154a c0154a2 = this.k;
                if (c0154a2 != null) {
                    c0154a2.a(false);
                }
                j jVar2 = this.o;
                if (jVar2 != null) {
                    jVar2.a("state 2");
                }
            }
            this.r = true;
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.reward.a.c$c, reason: collision with other inner class name */
    public interface InterfaceC0139c {
        void a(String str, String str2, String str3, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList);

        void a(String str, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList);
    }

    public static final class d implements i.b {
        public static final int a = 497;
        public static final int b = 313;
        public static final int c = 859;
        private int e;
        private final String f;
        private final String g;
        private final String h;
        private com.anythink.expressad.foundation.d.c i;
        private i j;
        private Handler k;
        private List<com.anythink.expressad.foundation.d.c> l;
        private boolean d = false;
        private final long m = System.currentTimeMillis();

        public d(int i, String str, String str2, String str3, com.anythink.expressad.foundation.d.c cVar, i iVar, Handler handler, List<com.anythink.expressad.foundation.d.c> list) {
            this.e = i;
            this.f = str;
            this.g = str2;
            this.h = str3;
            this.i = cVar;
            this.j = iVar;
            this.k = handler;
            this.l = list;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            com.anythink.expressad.videocommon.b.l.a().b(str, true);
            int i = this.e;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString("unit_id", this.g);
                bundle.putString(com.anythink.expressad.a.y, this.f);
                bundle.putString("request_id", this.h);
                bundle.putString(com.anythink.expressad.foundation.d.c.am, str);
                messageObtain.setData(bundle);
                this.k.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString("unit_id", this.g);
                bundle2.putString(com.anythink.expressad.a.y, this.f);
                bundle2.putString("request_id", this.h);
                bundle2.putString(com.anythink.expressad.foundation.d.c.am, str);
                messageObtain2.setData(bundle2);
                this.k.sendMessage(messageObtain2);
                if (this.d) {
                    System.currentTimeMillis();
                    return;
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 105;
            Bundle bundle3 = new Bundle();
            bundle3.putString("unit_id", this.g);
            bundle3.putString(com.anythink.expressad.a.y, this.f);
            bundle3.putString("request_id", this.h);
            messageObtain3.setData(bundle3);
            this.k.sendMessage(messageObtain3);
            i iVar = this.j;
            if (iVar != null) {
                iVar.a(this.f, this.g, this.h);
            }
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            com.anythink.expressad.videocommon.b.l.a().b(str, false);
            int i = this.e;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 201;
                Bundle bundle = new Bundle();
                bundle.putString("unit_id", this.g);
                bundle.putString(com.anythink.expressad.a.y, this.f);
                bundle.putString("request_id", this.h);
                bundle.putString(com.anythink.expressad.foundation.d.c.am, str);
                bundle.putString("message", str2);
                messageObtain.setData(bundle);
                this.k.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString("unit_id", this.g);
                bundle2.putString(com.anythink.expressad.a.y, this.f);
                bundle2.putString("request_id", this.h);
                bundle2.putString(com.anythink.expressad.foundation.d.c.am, str);
                bundle2.putString("message", str2);
                messageObtain2.setData(bundle2);
                this.k.sendMessage(messageObtain2);
                if (this.d) {
                    System.currentTimeMillis();
                    return;
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 205;
            Bundle bundle3 = new Bundle();
            bundle3.putString("unit_id", this.g);
            bundle3.putString(com.anythink.expressad.a.y, this.f);
            bundle3.putString("request_id", this.h);
            bundle3.putString("message", str2);
            messageObtain3.setData(bundle3);
            this.k.sendMessage(messageObtain3);
            i iVar = this.j;
            if (iVar != null) {
                iVar.a(this.g);
            }
        }

        public final void a(boolean z) {
            this.d = z;
        }
    }

    public static final class e implements com.anythink.expressad.foundation.g.d.c {
        public static final int a = 0;
        public static final int b = 1;
        private Handler c;
        private int d;
        private String e;
        private String f;
        private String g;
        private com.anythink.expressad.foundation.d.c h;

        public e(Handler handler, int i, String str, String str2, String str3, com.anythink.expressad.foundation.d.c cVar) {
            this.c = handler;
            this.d = i;
            this.f = str;
            this.e = str2;
            this.g = str3;
            this.h = cVar;
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(Bitmap bitmap, String str) {
            com.anythink.expressad.videocommon.b.l.a();
            com.anythink.expressad.videocommon.b.l.c(str);
            Message messageObtain = Message.obtain();
            messageObtain.what = this.d == 0 ? 102 : 104;
            Bundle bundle = new Bundle();
            bundle.putString("unit_id", this.e);
            bundle.putString(com.anythink.expressad.a.y, this.f);
            bundle.putString("request_id", this.g);
            messageObtain.setData(bundle);
            this.c.sendMessage(messageObtain);
        }

        @Override // com.anythink.expressad.foundation.g.d.c
        public final void a(String str, String str2) {
            Message messageObtain = Message.obtain();
            messageObtain.what = this.d == 0 ? 202 : 204;
            Bundle bundle = new Bundle();
            bundle.putString("unit_id", this.e);
            bundle.putString(com.anythink.expressad.a.y, this.f);
            bundle.putString("request_id", this.g);
            messageObtain.setData(bundle);
            this.c.sendMessage(messageObtain);
        }
    }

    public static final class f implements com.anythink.expressad.videocommon.d.c {
        private Handler a;
        private final String b;
        private final String c;
        private final String d;

        public f(Handler handler, String str, String str2, String str3) {
            this.a = handler;
            this.c = str;
            this.b = str2;
            this.d = str3;
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str) {
            new StringBuilder("Video download success: ").append(this.d);
            com.anythink.expressad.videocommon.b.l.a().a(str, true);
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            Bundle bundle = new Bundle();
            bundle.putString("unit_id", this.b);
            bundle.putString(com.anythink.expressad.a.y, this.c);
            bundle.putString("request_id", this.d);
            bundle.putString(com.anythink.expressad.foundation.d.c.am, str);
            messageObtain.setData(bundle);
            this.a.sendMessage(messageObtain);
        }

        @Override // com.anythink.expressad.videocommon.d.c
        public final void a(String str, String str2) {
            StringBuilder sb = new StringBuilder("Video download fail: ");
            sb.append(str);
            sb.append(o4.OooO00o.OooO0Oo);
            sb.append(this.d);
            com.anythink.expressad.videocommon.b.l.a().a(str2, false);
            Message messageObtain = Message.obtain();
            messageObtain.what = 200;
            Bundle bundle = new Bundle();
            bundle.putString("unit_id", this.b);
            bundle.putString(com.anythink.expressad.a.y, this.c);
            bundle.putString("request_id", this.d);
            bundle.putString(com.anythink.expressad.foundation.d.c.am, str2);
            bundle.putString("message", str);
            messageObtain.setData(bundle);
            this.a.sendMessage(messageObtain);
        }
    }

    public static final class g implements i.d {
        public static final int a = 497;
        public static final int b = 859;
        public static final int c = 313;
        public static final int d = 502;
        private Context f;
        private String g;
        private String h;
        private String i;
        private com.anythink.expressad.foundation.d.c j;
        private int k;
        private Handler l;
        private i m;
        private List<com.anythink.expressad.foundation.d.c> n;
        private boolean e = false;
        private long o = System.currentTimeMillis();

        public g(Context context, String str, String str2, String str3, com.anythink.expressad.foundation.d.c cVar, int i, Handler handler, i iVar, List<com.anythink.expressad.foundation.d.c> list) {
            this.f = context;
            this.h = str;
            this.g = str2;
            this.i = str3;
            this.j = cVar;
            this.k = i;
            this.l = handler;
            this.m = iVar;
            this.n = list;
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str) {
            com.anythink.expressad.videocommon.b.l.a().b(str, true);
            System.currentTimeMillis();
            int i = this.k;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString("unit_id", this.g);
                bundle.putString(com.anythink.expressad.a.y, this.h);
                bundle.putString("request_id", this.i);
                bundle.putString(com.anythink.expressad.foundation.d.c.am, str);
                messageObtain.setData(bundle);
                this.l.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString("unit_id", this.g);
                bundle2.putString(com.anythink.expressad.a.y, this.h);
                bundle2.putString("request_id", this.i);
                bundle2.putString(com.anythink.expressad.foundation.d.c.am, str);
                messageObtain2.setData(bundle2);
                this.l.sendMessage(messageObtain2);
                if (this.e) {
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 103;
            Bundle bundle3 = new Bundle();
            bundle3.putString("unit_id", this.g);
            bundle3.putString(com.anythink.expressad.a.y, this.h);
            bundle3.putString("request_id", this.i);
            messageObtain3.setData(bundle3);
            this.l.sendMessage(messageObtain3);
            i iVar = this.m;
            if (iVar != null) {
                iVar.a(this.h, this.g, this.i);
            }
        }

        @Override // com.anythink.expressad.videocommon.b.i.a
        public final void a(String str, String str2) {
            com.anythink.expressad.videocommon.b.l.a().b(str2, false);
            System.currentTimeMillis();
            int i = this.k;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString("unit_id", this.g);
                bundle.putString(com.anythink.expressad.a.y, this.h);
                bundle.putString("request_id", this.i);
                bundle.putString(com.anythink.expressad.foundation.d.c.am, str2);
                bundle.putString("message", str);
                messageObtain.setData(bundle);
                this.l.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString("unit_id", this.g);
                bundle2.putString(com.anythink.expressad.a.y, this.h);
                bundle2.putString("request_id", this.i);
                bundle2.putString(com.anythink.expressad.foundation.d.c.am, str2);
                bundle2.putString("message", str);
                messageObtain2.setData(bundle2);
                this.l.sendMessage(messageObtain2);
                if (this.e) {
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 203;
            Bundle bundle3 = new Bundle();
            bundle3.putString("unit_id", this.g);
            bundle3.putString(com.anythink.expressad.a.y, this.h);
            bundle3.putString("request_id", this.i);
            bundle3.putString(com.anythink.expressad.foundation.d.c.am, str2);
            bundle3.putString("message", str);
            messageObtain3.setData(bundle3);
            this.l.sendMessage(messageObtain3);
            i iVar = this.m;
            if (iVar != null) {
                iVar.a(this.g);
            }
        }

        public final void a(boolean z) {
            this.e = z;
        }
    }

    public static final class h extends Handler {
        private Context a;
        private InterfaceC0139c b;
        private ConcurrentHashMap<String, InterfaceC0139c> c;
        private ConcurrentHashMap<String, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c>> d;

        public h(Looper looper) {
            super(looper);
            this.c = new ConcurrentHashMap<>();
            this.d = new ConcurrentHashMap<>();
        }

        public final void a(Context context) {
            this.a = context;
        }

        public final void a(String str, String str2, InterfaceC0139c interfaceC0139c) {
            this.c.put(str + "_" + str2, interfaceC0139c);
        }

        public final void a(String str, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList) {
            this.d.put(str, copyOnWriteArrayList);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:137:0x02d0 A[Catch: Exception -> 0x03b2, TryCatch #3 {Exception -> 0x03b2, blocks: (B:135:0x02ca, B:137:0x02d0, B:139:0x02e7, B:141:0x02ef, B:143:0x0306), top: B:201:0x00a0 }] */
        /* JADX WARN: Removed duplicated region for block: B:139:0x02e7 A[Catch: Exception -> 0x03b2, TryCatch #3 {Exception -> 0x03b2, blocks: (B:135:0x02ca, B:137:0x02d0, B:139:0x02e7, B:141:0x02ef, B:143:0x0306), top: B:201:0x00a0 }] */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void handleMessage(Message message) {
            boolean zA;
            Object obj;
            Map map;
            Bundle data = message.getData();
            String string = data.getString(com.anythink.expressad.a.y);
            String string2 = data.getString("unit_id");
            String string3 = data.getString("request_id");
            String str = string2 + "_" + string3;
            a aVar = (a) c.d.get(str);
            InterfaceC0139c interfaceC0139c = this.c.get(str);
            CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList = this.d.get(str);
            int i = message.what;
            switch (i) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                    break;
                default:
                    switch (i) {
                        case 200:
                        case 201:
                        case 203:
                        case 205:
                            if (aVar != null && interfaceC0139c != null) {
                                String string4 = data.getString("message");
                                if (string4 == null) {
                                    string4 = "";
                                }
                                StringBuilder sb = new StringBuilder("resource download failed ");
                                sb.append(c.b(message.what));
                                sb.append(o4.OooO00o.OooO0Oo);
                                sb.append(string4);
                                com.anythink.expressad.foundation.d.c cVar = null;
                                CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList2 = aVar.h;
                                if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
                                    cVar = aVar.h.get(0);
                                }
                                try {
                                    try {
                                        if (!aVar.a || aVar.i == null) {
                                            obj = "resource download failed ";
                                            try {
                                                if (com.anythink.expressad.videocommon.b.e.a().a(aVar.e, aVar.b, aVar.d, aVar.a, aVar.c, copyOnWriteArrayList)) {
                                                    interfaceC0139c.a(string, string2, string3, aVar.h);
                                                } else {
                                                    if (cVar != null && cVar.aB() != null && cVar.aB().size() > 0) {
                                                        int i2 = message.what;
                                                        if (i2 != 200) {
                                                            if (i2 != 201) {
                                                                if (i2 != 203) {
                                                                    if (i2 == 205 && cVar.aB().contains(3)) {
                                                                    }
                                                                } else if (cVar.aB().contains(1)) {
                                                                }
                                                            } else if (cVar.aB().contains(2)) {
                                                            }
                                                        } else if (cVar.aB().contains(0)) {
                                                        }
                                                    }
                                                    interfaceC0139c.a(string2, aVar.h);
                                                }
                                                this.c.remove(str);
                                                c.d.remove(str);
                                                this.d.remove(str);
                                            } catch (Exception e) {
                                                e = e;
                                                CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList3 = aVar.h;
                                                new StringBuilder((String) obj).append(e.getMessage());
                                                interfaceC0139c.a(string2, copyOnWriteArrayList3);
                                                return;
                                            }
                                        } else if (aVar.c == 1) {
                                            if (cVar != null && cVar.aB() != null && cVar.aB().size() > 0) {
                                                int i3 = message.what;
                                                if (i3 != 200) {
                                                    if (i3 != 201) {
                                                        if (i3 != 203) {
                                                            if (i3 == 205) {
                                                                if (!cVar.aB().contains(3)) {
                                                                    CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList4 = aVar.h;
                                                                    if (copyOnWriteArrayList4 != null && copyOnWriteArrayList4.size() > 0) {
                                                                        com.anythink.expressad.foundation.d.c cVar2 = aVar.h.get(0);
                                                                        if (cVar2.ar().equals(cVar2.I()) && cVar.aB().contains(2)) {
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else if (cVar.aB().contains(1)) {
                                                        }
                                                    } else if (cVar.aB().contains(2)) {
                                                    }
                                                } else if (cVar.aB().contains(0)) {
                                                }
                                            }
                                            interfaceC0139c.a(string2, aVar.h);
                                            this.c.remove(str);
                                            c.d.remove(str);
                                            this.d.remove(str);
                                        } else {
                                            String string5 = data.getString(com.anythink.expressad.foundation.d.c.am);
                                            int i4 = message.what;
                                            if (i4 == 200) {
                                                if (cVar != null && cVar.aB() != null && cVar.aB().size() > 0) {
                                                    if (cVar.aB().contains(0)) {
                                                    }
                                                }
                                                for (int i5 = 0; i5 < aVar.i.size(); i5++) {
                                                    if (aVar.i.get(i5).S().equals(string5)) {
                                                        aVar.i.remove(i5);
                                                    }
                                                }
                                                c.d.remove(str);
                                                map = c.d;
                                            } else if (i4 != 201) {
                                                if (i4 != 203) {
                                                    if (i4 != 205) {
                                                        if (!com.anythink.expressad.videocommon.b.e.a().a(aVar.e, aVar.b, aVar.d, aVar.a, aVar.c, copyOnWriteArrayList)) {
                                                            interfaceC0139c.a(string, string2, string3, aVar.h);
                                                            this.c.remove(str);
                                                            c.d.remove(str);
                                                            this.d.remove(str);
                                                        } else if (aVar.i.size() == 0) {
                                                            interfaceC0139c.a(string2, aVar.h);
                                                            this.c.remove(str);
                                                            c.d.remove(str);
                                                            this.d.remove(str);
                                                        }
                                                    } else if (cVar == null || cVar.aB() == null || cVar.aB().size() <= 0 || !cVar.aB().contains(3)) {
                                                        aVar.i.clear();
                                                        c.d.remove(str);
                                                        map = c.d;
                                                    }
                                                } else if (cVar == null || cVar.aB() == null || cVar.aB().size() <= 0 || !cVar.aB().contains(1)) {
                                                    for (int i6 = 0; i6 < aVar.i.size(); i6++) {
                                                        com.anythink.expressad.foundation.d.c cVar3 = aVar.i.get(i6);
                                                        if (cVar3.M() != null && cVar3.M().e().equals(string5)) {
                                                            aVar.i.remove(i6);
                                                        }
                                                    }
                                                    c.d.remove(str);
                                                    map = c.d;
                                                }
                                            } else if (cVar == null || cVar.aB() == null || cVar.aB().size() <= 0 || !cVar.aB().contains(2)) {
                                                for (int i7 = 0; i7 < aVar.i.size(); i7++) {
                                                    com.anythink.expressad.foundation.d.c cVar4 = aVar.i.get(i7);
                                                    if (cVar4.M() != null && cVar4.M().d().equals(string5)) {
                                                        aVar.i.remove(i7);
                                                    }
                                                    if (!TextUtils.isEmpty(cVar4.I()) && cVar4.I().equals(string5)) {
                                                        aVar.i.remove(i7);
                                                    }
                                                }
                                                c.d.remove(str);
                                                map = c.d;
                                            }
                                            map.put(str, aVar);
                                            if (!com.anythink.expressad.videocommon.b.e.a().a(aVar.e, aVar.b, aVar.d, aVar.a, aVar.c, copyOnWriteArrayList)) {
                                            }
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        obj = data;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    obj = "resource download failed ";
                                }
                                break;
                            }
                            break;
                    }
                    return;
            }
            if (aVar == null || interfaceC0139c == null) {
                return;
            }
            try {
                zA = com.anythink.expressad.videocommon.b.e.a().a(aVar.e, aVar.b, aVar.d, aVar.a, aVar.c, copyOnWriteArrayList);
            } catch (Exception e4) {
                if (com.anythink.expressad.a.a) {
                    e4.getLocalizedMessage();
                }
                zA = false;
            }
            if (zA) {
                interfaceC0139c.a(string, string2, string3, aVar.h);
                this.c.remove(str);
                c.d.remove(str);
                this.d.remove(str);
            }
        }
    }

    public interface i {
        void a(String str);

        void a(String str, String str2, String str3);
    }

    public interface j {
        void a();

        void a(String str);
    }

    public static class k extends com.anythink.expressad.atsignalcommon.a.b {
        private Handler a;
        private Runnable b;
        private final boolean c;
        private final boolean e;
        private String f;
        private final j g;
        private final WindVaneWebView h;
        private final String i;
        private final String j;
        private final String k;
        private final a.C0154a l;
        private final com.anythink.expressad.foundation.d.c m;
        private CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> n;
        private long o;
        private boolean p;
        private boolean q;
        private final Runnable r;
        private final Runnable s;

        public k(Handler handler, Runnable runnable, boolean z, boolean z3, final String str, final j jVar, WindVaneWebView windVaneWebView, final String str2, final String str3, final String str4, final a.C0154a c0154a, com.anythink.expressad.foundation.d.c cVar, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList, long j) {
            this.a = handler;
            this.b = runnable;
            this.c = z;
            this.e = z3;
            this.f = str;
            this.g = jVar;
            this.h = windVaneWebView;
            this.i = str2;
            this.j = str4;
            this.k = str3;
            this.l = c0154a;
            this.m = cVar;
            this.n = copyOnWriteArrayList;
            this.o = j;
            Runnable runnable2 = new Runnable() { // from class: com.anythink.expressad.reward.a.c.k.1
                @Override // java.lang.Runnable
                public final void run() {
                    WindVaneWebView windVaneWebViewA;
                    a.C0154a c0154a2;
                    if (jVar != null && (c0154a2 = c0154a) != null) {
                        c0154a2.a(true);
                        com.anythink.expressad.videocommon.b.l.a().c(str4 + "_" + str + "_" + str2, true);
                        j jVar2 = jVar;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str4);
                        sb.append("_");
                        sb.append(str2);
                        jVar2.a();
                    }
                    a.C0154a c0154a3 = c0154a;
                    if (c0154a3 == null || (windVaneWebViewA = c0154a3.a()) == null) {
                        return;
                    }
                    try {
                        windVaneWebViewA.release();
                    } catch (Exception unused) {
                    }
                }
            };
            this.s = runnable2;
            this.r = new Runnable() { // from class: com.anythink.expressad.reward.a.c.k.2
                @Override // java.lang.Runnable
                public final void run() {
                    WindVaneWebView windVaneWebViewA;
                    a.C0154a c0154a2;
                    if (jVar != null && (c0154a2 = c0154a) != null) {
                        c0154a2.a(true);
                        com.anythink.expressad.videocommon.b.l.a().c(str4 + "_" + str + "_" + str2, true);
                        j jVar2 = jVar;
                        StringBuilder sb = new StringBuilder();
                        sb.append(str4);
                        sb.append("_");
                        sb.append(str2);
                        jVar2.a();
                    }
                    a.C0154a c0154a3 = c0154a;
                    if (c0154a3 == null || (windVaneWebViewA = c0154a3.a()) == null) {
                        return;
                    }
                    try {
                        windVaneWebViewA.release();
                    } catch (Exception unused) {
                    }
                }
            };
            if (handler != null) {
                handler.postDelayed(runnable2, com.anythink.expressad.exoplayer.f.a);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x007f A[PHI: r1
          0x007f: PHI (r1v6 int) = (r1v5 int), (r1v8 int) binds: [B:25:0x007d, B:22:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x008b A[PHI: r1
          0x008b: PHI (r1v7 int) = (r1v5 int), (r1v8 int) binds: [B:25:0x007d, B:22:0x0072] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void onPageFinished(WebView webView, String str) {
            Runnable runnable;
            int i;
            Handler handler;
            Runnable runnable2;
            super.onPageFinished(webView, str);
            Handler handler2 = this.a;
            if (handler2 != null && (runnable2 = this.s) != null) {
                handler2.removeCallbacks(runnable2);
            }
            if (this.p) {
                return;
            }
            if (str.contains("wfr=1")) {
                Handler handler3 = this.a;
                if (handler3 != null && (runnable = this.r) != null) {
                    handler3.postDelayed(runnable, com.anythink.expressad.exoplayer.f.a);
                }
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append(this.j);
                sb.append("_");
                sb.append(this.i);
                com.anythink.expressad.videocommon.b.l.a().c(this.j + "_" + this.f + "_" + this.i, true);
                Runnable runnable3 = this.b;
                if (runnable3 != null && (handler = this.a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                a.C0154a c0154a = this.l;
                if (c0154a != null) {
                    c0154a.a(true);
                }
                if (this.c) {
                    boolean zA = this.m.A();
                    i = com.anythink.expressad.foundation.g.a.aU;
                    if (zA) {
                        com.anythink.expressad.videocommon.a.a(i, this.m.aa(), this.l);
                    } else {
                        com.anythink.expressad.videocommon.a.b(i, this.m.aa(), this.l);
                    }
                } else {
                    i = 94;
                    if (this.m.A()) {
                    }
                }
                j jVar = this.g;
                if (jVar != null) {
                    jVar.a();
                }
            }
            com.anythink.expressad.atsignalcommon.windvane.j.a();
            com.anythink.expressad.atsignalcommon.windvane.j.b(webView);
            this.p = true;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            com.anythink.expressad.videocommon.b.l.a().c(this.j + "_" + this.f + "_" + this.i, false);
            Handler handler = this.a;
            if (handler != null) {
                if (this.r != null) {
                    handler.removeCallbacks(this.s);
                }
                Runnable runnable = this.r;
                if (runnable != null) {
                    this.a.removeCallbacks(runnable);
                }
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(this.j);
                sb.append("_");
                sb.append(this.i);
                a.C0154a c0154a = this.l;
                if (c0154a != null) {
                    c0154a.a(false);
                }
                j jVar = this.g;
                if (jVar != null) {
                    jVar.a(str);
                }
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.getLocalizedMessage();
                }
            }
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.onReceivedSslError(webView, sslErrorHandler, sslError);
            String string = "";
            new StringBuilder("TempalteWindVaneWebviewClient preLoadTemplate onReceivedSslError: ").append(sslError == null ? "" : Integer.valueOf(sslError.getPrimaryError()));
            com.anythink.expressad.videocommon.b.l.a().c(this.j + "_" + this.f + "_" + this.i, false);
            Handler handler = this.a;
            if (handler != null) {
                if (this.r != null) {
                    handler.removeCallbacks(this.s);
                }
                Runnable runnable = this.r;
                if (runnable != null) {
                    this.a.removeCallbacks(runnable);
                }
            }
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(this.j);
                sb.append("_");
                sb.append(this.i);
                a.C0154a c0154a = this.l;
                if (c0154a != null) {
                    c0154a.a(false);
                }
                j jVar = this.g;
                if (jVar != null) {
                    if (sslError != null) {
                        string = Integer.toString(sslError.getPrimaryError());
                    }
                    jVar.a(string);
                }
            } catch (Exception e) {
                if (com.anythink.expressad.a.a) {
                    e.getLocalizedMessage();
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x007c A[PHI: r0
          0x007c: PHI (r0v6 int) = (r0v5 int), (r0v8 int) binds: [B:30:0x007a, B:27:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0088 A[PHI: r0
          0x0088: PHI (r0v7 int) = (r0v5 int), (r0v8 int) binds: [B:30:0x007a, B:27:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void readyState(WebView webView, int i) {
            int i2;
            Handler handler;
            Runnable runnable;
            Runnable runnable2;
            super.readyState(webView, i);
            Handler handler2 = this.a;
            if (handler2 != null && (runnable2 = this.r) != null) {
                handler2.removeCallbacks(runnable2);
            }
            Handler handler3 = this.a;
            if (handler3 != null && (runnable = this.s) != null) {
                handler3.removeCallbacks(runnable);
            }
            if (this.q) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.j);
            sb.append("_");
            sb.append(this.i);
            if (i == 1) {
                Runnable runnable3 = this.b;
                if (runnable3 != null && (handler = this.a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                com.anythink.expressad.videocommon.b.l.a().c(this.j + "_" + this.f + "_" + this.i, true);
                a.C0154a c0154a = this.l;
                if (c0154a != null) {
                    c0154a.a(true);
                }
                if (this.c) {
                    boolean z = this.e;
                    i2 = com.anythink.expressad.foundation.g.a.aU;
                    if (z) {
                        com.anythink.expressad.videocommon.a.a(i2, this.m.aa(), this.l);
                    } else {
                        com.anythink.expressad.videocommon.a.b(i2, this.m.aa(), this.l);
                    }
                } else {
                    i2 = 94;
                    if (this.e) {
                    }
                }
                j jVar = this.g;
                if (jVar != null) {
                    jVar.a();
                }
            } else {
                j jVar2 = this.g;
                if (jVar2 != null) {
                    jVar2.a("state ".concat(String.valueOf(i)));
                }
            }
            this.q = true;
        }
    }

    public static class l extends com.anythink.expressad.atsignalcommon.a.b {
        private String a;
        private final boolean b = false;
        private final WindVaneWebView c;
        private final String e;
        private final String f;
        private final a.C0154a g;
        private final com.anythink.expressad.foundation.d.c h;
        private boolean i;
        private String j;
        private boolean k;
        private boolean l;

        public l(String str, WindVaneWebView windVaneWebView, String str2, String str3, a.C0154a c0154a, com.anythink.expressad.foundation.d.c cVar, boolean z, String str4) {
            this.c = windVaneWebView;
            this.e = str2;
            this.f = str3;
            this.g = c0154a;
            this.h = cVar;
            this.a = str;
            this.i = z;
            this.j = str4;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onPageFinished(WebView webView, String str) {
            int i;
            if (this.k) {
                return;
            }
            if (!str.contains("wfr=1")) {
                if (this.c != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", this.a);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put(r.ah, 1);
                        jSONObject2.put("error", "");
                        jSONObject.put("data", jSONObject2);
                        com.anythink.expressad.atsignalcommon.windvane.j.a();
                        com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) this.c, "componentReact", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e) {
                        if (com.anythink.expressad.a.a) {
                            e.getLocalizedMessage();
                        }
                    }
                }
                com.anythink.expressad.videocommon.b.l.a().c(this.f + "_" + this.j + "_" + this.e, true);
                a.C0154a c0154a = this.g;
                if (c0154a != null) {
                    c0154a.a(true);
                }
                String str2 = this.f + "_" + this.h.aZ() + "_" + this.h.Z() + "_" + this.e;
                if (this.b) {
                    if (this.h.A()) {
                        i = com.anythink.expressad.foundation.g.a.aU;
                        com.anythink.expressad.videocommon.a.a(i, this.h.aa(), this.g);
                    }
                    com.anythink.expressad.videocommon.a.a(str2, this.g, false, this.i);
                } else {
                    if (this.h.A()) {
                        i = 94;
                        com.anythink.expressad.videocommon.a.a(i, this.h.aa(), this.g);
                    }
                    com.anythink.expressad.videocommon.a.a(str2, this.g, false, this.i);
                }
            }
            com.anythink.expressad.atsignalcommon.windvane.j.a();
            com.anythink.expressad.atsignalcommon.windvane.j.b(webView);
            this.k = true;
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            com.anythink.expressad.videocommon.b.l.a().c(this.f + "_" + this.j + "_" + this.e, false);
            a.C0154a c0154a = this.g;
            if (c0154a != null) {
                c0154a.a(false);
            }
            if (this.c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(r.ah, 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) this.c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.getLocalizedMessage();
                    }
                }
            }
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void readyState(WebView webView, int i) {
            if (this.l) {
                return;
            }
            if (this.c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(r.ah, i);
                    jSONObject2.put("error", "");
                    jSONObject.put("data", jSONObject2);
                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) this.c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e) {
                    if (com.anythink.expressad.a.a) {
                        e.getLocalizedMessage();
                    }
                }
            }
            String str = this.f + "_" + this.h.aZ() + "_" + this.h.Z() + "_" + this.e;
            if (i == 1) {
                com.anythink.expressad.videocommon.b.l.a().c(this.f + "_" + this.j + "_" + this.e, true);
                a.C0154a c0154a = this.g;
                if (c0154a != null) {
                    c0154a.a(true);
                }
                boolean z = this.b;
                this.h.A();
                com.anythink.expressad.videocommon.a.a(str, this.g, false, this.i);
            } else {
                com.anythink.expressad.videocommon.b.l.a().c(this.f + "_" + this.j + "_" + this.e, false);
                a.C0154a c0154a2 = this.g;
                if (c0154a2 != null) {
                    c0154a2.a(false);
                }
            }
            this.l = true;
        }
    }

    public static final class m {
        private static final c a = new c(0);

        private m() {
        }
    }

    private c() {
        this.t = new ArrayList(6);
        HandlerThread handlerThread = new HandlerThread("mb-reward-load-thread");
        d = new HashMap();
        handlerThread.start();
        this.b = new h(handlerThread.getLooper());
        this.c = new ConcurrentHashMap<>();
    }

    public /* synthetic */ c(byte b2) {
        this();
    }

    public static c a() {
        return m.a;
    }

    private void a(Context context, String str, String str2, String str3, com.anythink.expressad.foundation.d.c cVar, String str4, i iVar, List<com.anythink.expressad.foundation.d.c> list) {
        if (TextUtils.isEmpty(str4) || cVar.H()) {
            return;
        }
        if (str4.contains(MultiDexExtractor.EXTRACTED_SUFFIX) && str4.contains(com.anythink.expressad.videocommon.b.m.b)) {
            boolean zIsEmpty = TextUtils.isEmpty(com.anythink.expressad.videocommon.b.i.a().c(str4));
            try {
                g gVar = new g(context, str, str2, str3, cVar, 497, this.b, iVar, list);
                gVar.a(zIsEmpty);
                com.anythink.expressad.videocommon.b.i.a().b(str4, (i.a) gVar);
                return;
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.getLocalizedMessage();
                    return;
                }
                return;
            }
        }
        boolean zIsEmpty2 = TextUtils.isEmpty(com.anythink.expressad.videocommon.b.j.a().b(str4));
        try {
            d dVar = new d(497, str, str2, str3, cVar, iVar, this.b, list);
            dVar.a(zIsEmpty2);
            com.anythink.expressad.videocommon.b.i.a().b(str4, dVar);
        } catch (Exception e3) {
            if (com.anythink.expressad.a.a) {
                e3.getLocalizedMessage();
            }
        }
    }

    public static /* synthetic */ void a(c cVar, Context context, String str, String str2, String str3, com.anythink.expressad.foundation.d.c cVar2, String str4, i iVar, List list) {
        if (TextUtils.isEmpty(str4) || cVar2.H()) {
            return;
        }
        if (str4.contains(MultiDexExtractor.EXTRACTED_SUFFIX) && str4.contains(com.anythink.expressad.videocommon.b.m.b)) {
            boolean zIsEmpty = TextUtils.isEmpty(com.anythink.expressad.videocommon.b.i.a().c(str4));
            try {
                g gVar = new g(context, str, str2, str3, cVar2, 497, cVar.b, iVar, list);
                gVar.a(zIsEmpty);
                com.anythink.expressad.videocommon.b.i.a().b(str4, (i.a) gVar);
                return;
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.getLocalizedMessage();
                    return;
                }
                return;
            }
        }
        boolean zIsEmpty2 = TextUtils.isEmpty(com.anythink.expressad.videocommon.b.j.a().b(str4));
        try {
            d dVar = new d(497, str, str2, str3, cVar2, iVar, cVar.b, list);
            dVar.a(zIsEmpty2);
            com.anythink.expressad.videocommon.b.i.a().b(str4, dVar);
        } catch (Exception e3) {
            if (com.anythink.expressad.a.a) {
                e3.getLocalizedMessage();
            }
        }
    }

    private static /* synthetic */ void a(c cVar, boolean z, WindVaneWebView windVaneWebView, com.anythink.expressad.foundation.d.c cVar2, List list, com.anythink.expressad.videocommon.e.d dVar, String str, String str2, int i2) {
        if (windVaneWebView != null) {
            if (cVar2 == null || dVar == null || cVar2.M() == null || TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(r.ah, 2);
                    jSONObject2.put("error", "data is null");
                    jSONObject.put("data", jSONObject2);
                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                } catch (Exception e2) {
                    if (com.anythink.expressad.a.a) {
                        e2.getLocalizedMessage();
                        return;
                    }
                    return;
                }
            }
            if (!TextUtils.isEmpty(cVar2.M().e())) {
                if (TextUtils.isEmpty(cVar2.M().e()) || !cVar2.M().e().contains(com.anythink.expressad.foundation.d.c.d)) {
                    new Handler(Looper.getMainLooper()).postDelayed(cVar.new AnonymousClass3(z, windVaneWebView, cVar2, list, str, dVar, str2), i2 * 1000);
                    return;
                }
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", str2);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(r.ah, 1);
                jSONObject4.put("error", "data is null");
                jSONObject3.put("data", jSONObject4);
                com.anythink.expressad.atsignalcommon.windvane.j.a();
                com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            } catch (Exception e3) {
                if (com.anythink.expressad.a.a) {
                    e3.getLocalizedMessage();
                }
            }
        }
    }

    private void a(boolean z, WindVaneWebView windVaneWebView, com.anythink.expressad.foundation.d.c cVar, List<com.anythink.expressad.foundation.d.c> list, com.anythink.expressad.videocommon.e.d dVar, String str, String str2, int i2) {
        if (windVaneWebView != null) {
            if (cVar == null || dVar == null || cVar.M() == null || TextUtils.isEmpty(str)) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", str2);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put(r.ah, 2);
                    jSONObject2.put("error", "data is null");
                    jSONObject.put("data", jSONObject2);
                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    return;
                } catch (Exception e2) {
                    if (com.anythink.expressad.a.a) {
                        e2.getLocalizedMessage();
                        return;
                    }
                    return;
                }
            }
            if (!TextUtils.isEmpty(cVar.M().e())) {
                if (TextUtils.isEmpty(cVar.M().e()) || !cVar.M().e().contains(com.anythink.expressad.foundation.d.c.d)) {
                    new Handler(Looper.getMainLooper()).postDelayed(new AnonymousClass3(z, windVaneWebView, cVar, list, str, dVar, str2), i2 * 1000);
                    return;
                }
                return;
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", str2);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put(r.ah, 1);
                jSONObject4.put("error", "data is null");
                jSONObject3.put("data", jSONObject4);
                com.anythink.expressad.atsignalcommon.windvane.j.a();
                com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            } catch (Exception e3) {
                if (com.anythink.expressad.a.a) {
                    e3.getLocalizedMessage();
                }
            }
        }
    }

    private static void a(boolean z, WindVaneWebView windVaneWebView, String str, int i2, com.anythink.expressad.foundation.d.c cVar, List<com.anythink.expressad.foundation.d.c> list, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar, String str4, boolean z3) {
        com.anythink.expressad.video.signal.a.j jVar;
        String strZ;
        try {
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebViewD = m.a.d();
            if (windVaneWebViewD == null) {
                windVaneWebViewD = new WindVaneWebView(n.a().f());
            }
            WindVaneWebView windVaneWebView2 = windVaneWebViewD;
            c0154a.a(windVaneWebView2);
            if (list == null || list.size() <= 0) {
                jVar = new com.anythink.expressad.video.signal.a.j(null, cVar);
                strZ = cVar.Z();
            } else {
                List<com.anythink.expressad.foundation.d.c> listA = com.anythink.expressad.videocommon.b.e.a().a(str3);
                if (listA != null && listA.size() > 0) {
                    for (int i3 = 0; i3 < list.size(); i3++) {
                        com.anythink.expressad.foundation.d.c cVar2 = list.get(i3);
                        for (com.anythink.expressad.foundation.d.c cVar3 : listA) {
                            if (cVar3.aZ().equals(cVar2.aZ()) && cVar3.Z().equals(cVar2.Z())) {
                                cVar2.au();
                                list.set(i3, cVar2);
                            }
                        }
                    }
                }
                jVar = new com.anythink.expressad.video.signal.a.j(null, cVar, list);
                strZ = list.get(0).Z();
            }
            String str5 = strZ;
            com.anythink.expressad.video.signal.a.j jVar2 = jVar;
            jVar2.a(i2);
            jVar2.a(str3);
            jVar2.c(str4);
            jVar2.a(dVar);
            jVar2.b(z);
            windVaneWebView2.setWebViewListener(new l(str4, windVaneWebView, str, str3, c0154a, cVar, z3, str5));
            windVaneWebView2.setObject(jVar2);
            windVaneWebView2.loadUrl(str2);
            windVaneWebView2.setRid(str5);
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.getLocalizedMessage();
            }
        }
    }

    public static /* synthetic */ void a(boolean z, WindVaneWebView windVaneWebView, String str, com.anythink.expressad.foundation.d.c cVar, List list, String str2, String str3, com.anythink.expressad.videocommon.e.d dVar, String str4, boolean z3) {
        com.anythink.expressad.video.signal.a.j jVar;
        String strZ;
        try {
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebViewD = m.a.d();
            if (windVaneWebViewD == null) {
                windVaneWebViewD = new WindVaneWebView(n.a().f());
            }
            WindVaneWebView windVaneWebView2 = windVaneWebViewD;
            c0154a.a(windVaneWebView2);
            if (list == null || list.size() <= 0) {
                jVar = new com.anythink.expressad.video.signal.a.j(null, cVar);
                strZ = cVar.Z();
            } else {
                List<com.anythink.expressad.foundation.d.c> listA = com.anythink.expressad.videocommon.b.e.a().a(str3);
                if (listA != null && listA.size() > 0) {
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        com.anythink.expressad.foundation.d.c cVar2 = (com.anythink.expressad.foundation.d.c) list.get(i2);
                        for (com.anythink.expressad.foundation.d.c cVar3 : listA) {
                            if (cVar3.aZ().equals(cVar2.aZ()) && cVar3.Z().equals(cVar2.Z())) {
                                cVar2.au();
                                list.set(i2, cVar2);
                            }
                        }
                    }
                }
                jVar = new com.anythink.expressad.video.signal.a.j(null, cVar, list);
                strZ = ((com.anythink.expressad.foundation.d.c) list.get(0)).Z();
            }
            String str5 = strZ;
            com.anythink.expressad.video.signal.a.j jVar2 = jVar;
            jVar2.a(0);
            jVar2.a(str3);
            jVar2.c(str4);
            jVar2.a(dVar);
            jVar2.b(z);
            windVaneWebView2.setWebViewListener(new l(str4, windVaneWebView, str, str3, c0154a, cVar, z3, str5));
            windVaneWebView2.setObject(jVar2);
            windVaneWebView2.loadUrl(str2);
            windVaneWebView2.setRid(str5);
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.getLocalizedMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized String b(int i2) {
        return i2 != 200 ? i2 != 201 ? i2 != 203 ? i2 != 205 ? "unknown" : "tpl" : "temp" : "zip/html" : o.a;
    }

    private static String c(int i2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i2);
            String string = jSONObject.toString();
            return !TextUtils.isEmpty(string) ? Base64.encodeToString(string.getBytes(), 2) : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private synchronized void c() {
    }

    private synchronized WindVaneWebView d() {
        return null;
    }

    public final synchronized void a(Context context, com.anythink.expressad.foundation.d.c cVar, final String str, final String str2, final String str3, final i iVar) {
        this.b.a(context);
        if (cVar != null) {
            String strAr = cVar.ar();
            if (cVar.j()) {
                com.anythink.expressad.videocommon.b.l.a().b(strAr, true);
                Message messageObtain = Message.obtain();
                messageObtain.what = 105;
                Bundle bundle = new Bundle();
                bundle.putString("unit_id", str2);
                bundle.putString(com.anythink.expressad.a.y, str);
                bundle.putString("request_id", str3);
                bundle.putString(com.anythink.expressad.foundation.d.c.am, strAr);
                messageObtain.setData(bundle);
                this.b.sendMessage(messageObtain);
                iVar.a(str, str2, str3);
                return;
            }
        }
        if (cVar != null && !TextUtils.isEmpty(cVar.ar())) {
            try {
                com.anythink.expressad.videocommon.b.i.a().b(cVar.ar(), (i.a) new i.d() { // from class: com.anythink.expressad.reward.a.c.2
                    @Override // com.anythink.expressad.videocommon.b.i.a
                    public final void a(String str4) {
                        try {
                            com.anythink.expressad.videocommon.b.l.a().b(str4, true);
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 105;
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("unit_id", str2);
                            bundle2.putString(com.anythink.expressad.a.y, str);
                            bundle2.putString("request_id", str3);
                            bundle2.putString(com.anythink.expressad.foundation.d.c.am, str4);
                            messageObtain2.setData(bundle2);
                            c.this.b.sendMessage(messageObtain2);
                            i iVar2 = iVar;
                            if (iVar2 != null) {
                                iVar2.a(str, str2, str3);
                            }
                        } catch (Exception e2) {
                            com.anythink.expressad.videocommon.b.l.a().b(str4, false);
                            Message messageObtain3 = Message.obtain();
                            messageObtain3.what = 205;
                            Bundle bundle3 = new Bundle();
                            bundle3.putString("unit_id", str2);
                            bundle3.putString(com.anythink.expressad.a.y, str);
                            bundle3.putString("request_id", str3);
                            bundle3.putString(com.anythink.expressad.foundation.d.c.am, str4);
                            messageObtain3.setData(bundle3);
                            c.this.b.sendMessage(messageObtain3);
                            i iVar3 = iVar;
                            if (iVar3 != null) {
                                String str5 = str2;
                                e2.getLocalizedMessage();
                                iVar3.a(str5);
                            }
                        }
                    }

                    @Override // com.anythink.expressad.videocommon.b.i.a
                    public final void a(String str4, String str5) {
                        try {
                            com.anythink.expressad.videocommon.b.l.a().b(str5, false);
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 205;
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("unit_id", str2);
                            bundle2.putString(com.anythink.expressad.a.y, str);
                            bundle2.putString("request_id", str3);
                            bundle2.putString(com.anythink.expressad.foundation.d.c.am, str5);
                            bundle2.putString("message", str4);
                            messageObtain2.setData(bundle2);
                            c.this.b.sendMessage(messageObtain2);
                            i iVar2 = iVar;
                            if (iVar2 != null) {
                                iVar2.a(str2);
                            }
                        } catch (Exception e2) {
                            com.anythink.expressad.videocommon.b.l.a().b(str5, false);
                            Message messageObtain3 = Message.obtain();
                            messageObtain3.what = 105;
                            Bundle bundle3 = new Bundle();
                            bundle3.putString("unit_id", str2);
                            bundle3.putString(com.anythink.expressad.a.y, str);
                            bundle3.putString("request_id", str3);
                            bundle3.putString(com.anythink.expressad.foundation.d.c.am, str5);
                            bundle3.putString("message", e2.getMessage());
                            messageObtain3.setData(bundle3);
                            c.this.b.sendMessage(messageObtain3);
                            i iVar3 = iVar;
                            if (iVar3 != null) {
                                iVar3.a(str2);
                            }
                            if (com.anythink.expressad.a.a) {
                                e2.getLocalizedMessage();
                            }
                        }
                    }
                });
            } catch (Exception e2) {
                if (com.anythink.expressad.a.a) {
                    e2.getLocalizedMessage();
                }
            }
        }
    }

    public final synchronized void a(final Context context, boolean z, int i2, boolean z3, final int i3, final String str, final String str2, final String str3, final CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList, InterfaceC0139c interfaceC0139c, final i iVar) {
        String str4 = str2 + "_" + str3;
        d.put(str4, new a(z, z3, i2, copyOnWriteArrayList.size(), str2, str3, i3, copyOnWriteArrayList));
        this.b.a(str2, str3, interfaceC0139c);
        this.b.a(context);
        this.b.a(str4, copyOnWriteArrayList);
        this.b.post(new Runnable() { // from class: com.anythink.expressad.reward.a.c.1
            /* JADX WARN: Removed duplicated region for block: B:131:0x0163 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:133:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:44:0x00e4 A[PHI: r0 r17
              0x00e4: PHI (r0v33 'e' java.lang.Exception) = (r0v31 'e' java.lang.Exception), (r0v34 'e' java.lang.Exception) binds: [B:36:0x00b9, B:43:0x00e2] A[DONT_GENERATE, DONT_INLINE]
              0x00e4: PHI (r17v6 java.util.Iterator) = (r17v3 java.util.Iterator), (r17v7 java.util.Iterator) binds: [B:36:0x00b9, B:43:0x00e2] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:45:0x00e8  */
            /* JADX WARN: Removed duplicated region for block: B:48:0x00f8  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x018b  */
            /* JADX WARN: Removed duplicated region for block: B:90:0x01f0 A[PHI: r0
              0x01f0: PHI (r0v24 'e' java.lang.Exception) = (r0v23 'e' java.lang.Exception), (r0v25 'e' java.lang.Exception) binds: [B:83:0x01c7, B:89:0x01ee] A[DONT_GENERATE, DONT_INLINE]] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void run() {
                Iterator it;
                String strI;
                boolean zJ;
                String strBd;
                String strBe;
                List<String> list;
                CopyOnWriteArrayList copyOnWriteArrayList2 = copyOnWriteArrayList;
                if (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.size() <= 0) {
                    return;
                }
                try {
                    com.anythink.expressad.videocommon.b.l.a().a(copyOnWriteArrayList);
                    com.anythink.expressad.videocommon.b.e.a().a(str2, copyOnWriteArrayList, i3, new f(c.this.b, str, str2, str3));
                    com.anythink.expressad.videocommon.b.e.a().d(str2);
                } catch (Exception e2) {
                    if (com.anythink.expressad.a.a) {
                        e2.getLocalizedMessage();
                    }
                }
                Iterator it2 = copyOnWriteArrayList.iterator();
                while (it2.hasNext()) {
                    com.anythink.expressad.foundation.d.c cVar = (com.anythink.expressad.foundation.d.c) it2.next();
                    if (cVar != null) {
                        c.C0131c c0131cM = cVar.M();
                        if (c0131cM == null || cVar.j()) {
                            it = it2;
                            strI = cVar.I();
                            zJ = cVar.j();
                            boolean zF = t.f(strI);
                            if (zJ || zF) {
                                c.a(c.this, context, str, str2, str3, cVar, strI, iVar, copyOnWriteArrayList);
                            }
                            if (!TextUtils.isEmpty(cVar.P()) && !cVar.j()) {
                                com.anythink.expressad.videocommon.b.i.a().b(cVar.P());
                            }
                            strBd = cVar.bd();
                            if (!TextUtils.isEmpty(strBd)) {
                                try {
                                    com.anythink.expressad.foundation.g.d.b.a(context).a(strBd, new e(c.this.b, 0, str, str2, str3, cVar));
                                } catch (Exception e3) {
                                    if (com.anythink.expressad.a.a) {
                                        e3.getLocalizedMessage();
                                    }
                                }
                            }
                            strBe = cVar.be();
                            if (!TextUtils.isEmpty(strBe)) {
                                try {
                                    com.anythink.expressad.foundation.g.d.b.a(context).a(strBe, new e(c.this.b, 0, str, str2, str3, cVar));
                                } catch (Exception e4) {
                                    if (com.anythink.expressad.a.a) {
                                        e4.getLocalizedMessage();
                                    }
                                }
                            }
                            if (c0131cM != null) {
                                String strD = c0131cM.d();
                                if (!TextUtils.isEmpty(strD) && !cVar.j()) {
                                    if (strD.contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                                        try {
                                            com.anythink.expressad.videocommon.b.i.a().b(strD, (i.a) new g(context, str, str2, str3, cVar, 313, c.this.b, iVar, copyOnWriteArrayList));
                                        } catch (Exception e5) {
                                            e = e5;
                                            if (com.anythink.expressad.a.a) {
                                            }
                                        }
                                    } else {
                                        try {
                                            com.anythink.expressad.videocommon.b.i.a().b(strD, new d(313, str, str2, str3, cVar, iVar, c.this.b, copyOnWriteArrayList));
                                        } catch (Exception e6) {
                                            e = e6;
                                            if (com.anythink.expressad.a.a) {
                                                e.getLocalizedMessage();
                                            }
                                        }
                                    }
                                }
                                List<c.C0131c.a> listF = c0131cM.f();
                                if (listF != null && listF.size() > 0) {
                                    for (c.C0131c.a aVar : listF) {
                                        if (aVar != null && (list = aVar.b) != null && list.size() > 0) {
                                            for (String str5 : aVar.b) {
                                                if (!TextUtils.isEmpty(str5)) {
                                                    try {
                                                        com.anythink.expressad.foundation.g.d.b.a(context).a(str5, new e(c.this.b, 1, str, str2, str3, cVar));
                                                    } catch (Exception e7) {
                                                        if (com.anythink.expressad.a.a) {
                                                            e7.getLocalizedMessage();
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            it2 = it;
                        } else {
                            String strE = c0131cM.e();
                            if (!TextUtils.isEmpty(strE) && !strE.contains(com.anythink.expressad.foundation.d.c.d)) {
                                if (strE.contains(MultiDexExtractor.EXTRACTED_SUFFIX)) {
                                    try {
                                        it = it2;
                                    } catch (Exception e8) {
                                        e = e8;
                                        it = it2;
                                    }
                                    try {
                                        com.anythink.expressad.videocommon.b.i.a().b(strE, (i.a) new g(context, str, str2, str3, cVar, 859, c.this.b, iVar, copyOnWriteArrayList));
                                    } catch (Exception e9) {
                                        e = e9;
                                        if (com.anythink.expressad.a.a) {
                                        }
                                    }
                                } else {
                                    it = it2;
                                    try {
                                        com.anythink.expressad.videocommon.b.i.a().b(strE, new d(859, str, str2, str3, cVar, iVar, c.this.b, copyOnWriteArrayList));
                                    } catch (Exception e10) {
                                        e = e10;
                                        if (com.anythink.expressad.a.a) {
                                            e.getLocalizedMessage();
                                        }
                                    }
                                }
                            }
                            strI = cVar.I();
                            zJ = cVar.j();
                            boolean zF2 = t.f(strI);
                            if (zJ) {
                                c.a(c.this, context, str, str2, str3, cVar, strI, iVar, copyOnWriteArrayList);
                                if (!TextUtils.isEmpty(cVar.P())) {
                                    com.anythink.expressad.videocommon.b.i.a().b(cVar.P());
                                }
                                strBd = cVar.bd();
                                if (!TextUtils.isEmpty(strBd)) {
                                }
                                strBe = cVar.be();
                                if (!TextUtils.isEmpty(strBe)) {
                                }
                                if (c0131cM != null) {
                                }
                                it2 = it;
                            }
                        }
                    }
                }
            }
        });
    }

    public final synchronized void a(boolean z, Handler handler, boolean z3, boolean z4, WindVaneWebView windVaneWebView, String str, int i2, com.anythink.expressad.foundation.d.c cVar, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList, String str2, String str3, String str4, String str5, com.anythink.expressad.videocommon.e.d dVar, j jVar) {
        WindVaneWebView windVaneWebView2;
        StringBuilder sb = new StringBuilder();
        sb.append(str4);
        sb.append("_");
        sb.append(str);
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            if (t.e(str)) {
                jVar.a();
                return;
            }
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebViewD = m.a.d();
            if (windVaneWebViewD == null) {
                try {
                    windVaneWebView2 = new WindVaneWebView(n.a().f());
                } catch (Exception unused) {
                    c0154a.a(true);
                    com.anythink.expressad.videocommon.b.l.a().c(str4 + "_" + str5 + "_" + str, true);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(str4);
                    sb2.append("_");
                    sb2.append(str);
                    jVar.a();
                    return;
                } catch (Throwable unused2) {
                    c0154a.a(true);
                    com.anythink.expressad.videocommon.b.l.a().c(str4 + "_" + str5 + "_" + str, true);
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(str4);
                    sb3.append("_");
                    sb3.append(str);
                    jVar.a();
                    return;
                }
            } else {
                windVaneWebView2 = windVaneWebViewD;
            }
            c0154a.a(windVaneWebView2);
            com.anythink.expressad.video.signal.a.j jVar2 = (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) ? new com.anythink.expressad.video.signal.a.j(null, cVar) : new com.anythink.expressad.video.signal.a.j(null, cVar, copyOnWriteArrayList);
            jVar2.a(i2);
            jVar2.a(str4);
            jVar2.a(dVar);
            jVar2.b(z);
            WindVaneWebView windVaneWebView3 = windVaneWebView2;
            windVaneWebView3.setWebViewListener(new k(handler, null, z3, z4, str5, jVar, windVaneWebView, str, str3, str4, c0154a, cVar, copyOnWriteArrayList, jCurrentTimeMillis));
            windVaneWebView3.setObject(jVar2);
            windVaneWebView3.loadUrl(str2);
            windVaneWebView3.setRid(str5);
        } catch (Exception e2) {
            if (com.anythink.expressad.a.a) {
                e2.getLocalizedMessage();
            }
            jVar.a(e2.getLocalizedMessage());
        }
    }

    public final synchronized void a(boolean z, Handler handler, boolean z3, boolean z4, String str, String str2, String str3, String str4, int i2, com.anythink.expressad.foundation.d.c cVar, CopyOnWriteArrayList<com.anythink.expressad.foundation.d.c> copyOnWriteArrayList, String str5, String str6, com.anythink.expressad.videocommon.e.d dVar, j jVar) {
        com.anythink.expressad.video.signal.a.j jVar2;
        this.e = false;
        long jCurrentTimeMillis = System.currentTimeMillis();
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        sb.append("_");
        sb.append(str4);
        this.e = false;
        if (t.e(str4)) {
            jVar.a();
            return;
        }
        try {
            a.C0154a c0154a = new a.C0154a();
            WindVaneWebView windVaneWebViewD = m.a.d();
            if (windVaneWebViewD == null) {
                windVaneWebViewD = new WindVaneWebView(n.a().f());
            }
            WindVaneWebView windVaneWebView = windVaneWebViewD;
            c0154a.a(windVaneWebView);
            com.anythink.expressad.video.bt.a.c.a();
            String strB = com.anythink.expressad.video.bt.a.c.b();
            com.anythink.expressad.video.bt.a.c.a();
            String strB2 = com.anythink.expressad.video.bt.a.c.b();
            c0154a.a(strB2);
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                jVar2 = new com.anythink.expressad.video.signal.a.j(null, cVar);
            } else {
                List<com.anythink.expressad.foundation.d.c> listA = com.anythink.expressad.videocommon.b.e.a().a(str3);
                if (listA != null && listA.size() > 0) {
                    for (int i3 = 0; i3 < copyOnWriteArrayList.size(); i3++) {
                        com.anythink.expressad.foundation.d.c cVar2 = copyOnWriteArrayList.get(i3);
                        for (com.anythink.expressad.foundation.d.c cVar3 : listA) {
                            List<com.anythink.expressad.foundation.d.c> list = listA;
                            if (cVar3.aZ().equals(cVar2.aZ()) && cVar3.Z().equals(cVar2.Z())) {
                                cVar2.au();
                                copyOnWriteArrayList.set(i3, cVar2);
                            }
                            listA = list;
                        }
                    }
                }
                jVar2 = new com.anythink.expressad.video.signal.a.j(null, cVar, copyOnWriteArrayList);
            }
            com.anythink.expressad.video.signal.a.j jVar3 = jVar2;
            jVar3.a(i2);
            jVar3.a(str6);
            jVar3.c(strB2);
            jVar3.d(strB);
            jVar3.p();
            jVar3.a(dVar);
            jVar3.b(z);
            windVaneWebView.setWebViewListener(new b(z, handler, null, z3, z4, i2, str4, str2, str3, str, c0154a, cVar, copyOnWriteArrayList, dVar, jVar, jCurrentTimeMillis));
            windVaneWebView.setObject(jVar3);
            windVaneWebView.loadUrl(str5);
            windVaneWebView.setRid(str);
            AnythinkBTRootLayout anythinkBTRootLayout = new AnythinkBTRootLayout(n.a().f());
            anythinkBTRootLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            anythinkBTRootLayout.setInstanceId(strB);
            anythinkBTRootLayout.setUnitId(str3);
            AnythinkBTLayout anythinkBTLayout = new AnythinkBTLayout(n.a().f());
            anythinkBTLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            anythinkBTLayout.setInstanceId(strB2);
            anythinkBTLayout.setUnitId(str3);
            anythinkBTLayout.setWebView(windVaneWebView);
            LinkedHashMap<String, View> linkedHashMapB = com.anythink.expressad.video.bt.a.c.a().b(str3, str);
            linkedHashMapB.put(strB2, anythinkBTLayout);
            linkedHashMapB.put(strB, anythinkBTRootLayout);
            anythinkBTRootLayout.addView(anythinkBTLayout, new FrameLayout.LayoutParams(-1, -1));
        } catch (Exception e2) {
            jVar.a(e2.getMessage());
            if (com.anythink.expressad.a.a) {
                e2.getLocalizedMessage();
            }
        }
    }
}
