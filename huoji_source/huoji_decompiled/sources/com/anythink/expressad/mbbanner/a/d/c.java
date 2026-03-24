package com.anythink.expressad.mbbanner.a.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.core.common.b.n;
import com.anythink.expressad.atsignalcommon.bridge.CommonJSBridgeImpUtils;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.foundation.d.d;
import com.anythink.expressad.foundation.g.a.f;
import com.anythink.expressad.foundation.h.m;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.y;
import com.anythink.expressad.mbbanner.a.c.e;
import com.anythink.expressad.mbbanner.view.ATBannerWebView;
import com.anythink.expressad.out.TemplateBannerView;
import com.anythink.expressad.out.i;
import com.anythink.expressad.out.p;
import com.anythink.expressad.videocommon.b.j;
import com.anythink.expressad.widget.FeedBackButton;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static String c = "BannerShowManager";
    private float A;
    public com.anythink.expressad.a.a a;
    public i b;
    private com.anythink.expressad.mbbanner.a.c.c d;
    private boolean e;
    private com.anythink.expressad.foundation.d.c f;
    private TemplateBannerView g;
    private ImageView h;
    private ATBannerWebView i;
    private ImageView j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private String r;
    private String s;
    private List<com.anythink.expressad.foundation.d.c> t;
    private int u;
    private com.anythink.expressad.mbbanner.a.a.c w;
    private float z;
    private long v = mobi.oneway.export.g.i.f;
    private Handler x = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.mbbanner.a.d.c.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            int i = message.what;
        }
    };
    private com.anythink.expressad.foundation.g.g.a y = new com.anythink.expressad.foundation.g.g.a() { // from class: com.anythink.expressad.mbbanner.a.d.c.4
        @Override // com.anythink.expressad.foundation.g.g.a
        public final void a() {
            c.this.a(com.anythink.expressad.mbbanner.a.a.n);
        }

        @Override // com.anythink.expressad.foundation.g.g.a
        public final void b() {
        }

        @Override // com.anythink.expressad.foundation.g.g.a
        public final void c() {
        }
    };
    private View.OnClickListener B = new View.OnClickListener() { // from class: com.anythink.expressad.mbbanner.a.d.c.5
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (c.this.q) {
                c.b(c.this);
            }
        }
    };
    private com.anythink.expressad.mbbanner.a.c.a C = new com.anythink.expressad.mbbanner.a.c.a() { // from class: com.anythink.expressad.mbbanner.a.d.c.6
        @Override // com.anythink.expressad.mbbanner.a.c.a
        public final void a() {
            c.b(c.this);
        }

        @Override // com.anythink.expressad.mbbanner.a.c.a
        public final void a(int i) {
            if (i == 2) {
                c.c(c.this);
            } else {
                c.this.l();
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.a
        public final void a(com.anythink.expressad.foundation.d.c cVar) {
            c.this.a(cVar, false, "");
        }

        @Override // com.anythink.expressad.mbbanner.a.c.a
        public final void a(boolean z) {
            if (c.this.d != null) {
                c.this.p = z;
                if (z) {
                    c.this.d.b();
                } else {
                    c.this.d.c();
                }
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.a
        public final void a(boolean z, String str) {
            try {
                if (c.this.d != null) {
                    if (TextUtils.isEmpty(str)) {
                        c.this.d.a(c.this.f);
                        c.this.d.a();
                    } else {
                        com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(com.anythink.expressad.foundation.d.c.a(c.this.f));
                        cVarB.p(str);
                        c.this.a(cVarB, z, str);
                    }
                }
            } catch (Exception e) {
                String unused = c.c;
                e.getMessage();
            }
        }

        @Override // com.anythink.expressad.mbbanner.a.c.a
        public final void b() {
            c.b(c.this);
        }

        @Override // com.anythink.expressad.mbbanner.a.c.a
        public final void b(int i) {
            if (i != 1) {
                c.this.e();
            } else {
                c.this.h();
                c.b();
            }
        }
    };
    private com.anythink.expressad.atsignalcommon.a.b D = new com.anythink.expressad.atsignalcommon.a.b() { // from class: com.anythink.expressad.mbbanner.a.d.c.2
        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onPageFinished(WebView webView, String str) {
            c.l(c.this);
            com.anythink.expressad.mbbanner.a.a.a.a(webView);
            c.n(c.this);
            if (c.this.f == null || c.this.f.s()) {
                return;
            }
            c.this.h();
            c.b();
        }

        @Override // com.anythink.expressad.atsignalcommon.a.b, com.anythink.expressad.atsignalcommon.windvane.e
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            c.this.a(str);
            c.b();
        }
    };

    public c(TemplateBannerView templateBannerView, com.anythink.expressad.mbbanner.a.c.c cVar, String str, String str2, boolean z, com.anythink.expressad.d.c cVar2) {
        this.e = z;
        this.g = templateBannerView;
        this.r = str2;
        this.s = str;
        this.d = new e(cVar, cVar2);
    }

    private static String a(com.anythink.expressad.foundation.d.c cVar) throws Throwable {
        String strConcat;
        if (cVar == null) {
            return "";
        }
        String strB = j.a().b(cVar.p());
        if (TextUtils.isEmpty(strB)) {
            strB = cVar.q();
            if (cVar.ay()) {
                try {
                    File file = new File(strB);
                    if (!file.exists()) {
                        return "";
                    }
                    strConcat = m.a(file);
                } catch (Exception unused) {
                    File file2 = new File(strB);
                    if (file2.exists() && file2.isFile() && file2.canRead()) {
                        strConcat = "file:////".concat(String.valueOf(strB));
                    }
                    return strB;
                }
                return strConcat;
            }
            File file3 = new File(strB);
            if (file3.exists() && file3.isFile() && file3.canRead()) {
                return "file:////".concat(String.valueOf(strB));
            }
        }
        return strB;
    }

    private static void a(com.anythink.expressad.foundation.d.c cVar, Context context, String str) {
        if (cVar != null) {
            try {
                List<String> listE = cVar.e();
                if (listE == null || listE.size() <= 0) {
                    return;
                }
                Iterator<String> it = listE.iterator();
                while (it.hasNext()) {
                    com.anythink.expressad.a.a.a(context, cVar, str, it.next(), true);
                }
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        if (this.f == null || i()) {
            return;
        }
        this.x.removeCallbacks(this.y);
        com.anythink.expressad.mbbanner.a.c.c cVar = this.d;
        if (cVar != null) {
            cVar.a(str);
        }
    }

    private com.anythink.expressad.foundation.d.c b(d dVar) {
        if (dVar != null) {
            ArrayList<com.anythink.expressad.foundation.d.c> arrayList = dVar.J;
            this.t = arrayList;
            if (arrayList != null && arrayList.size() > 0) {
                return this.t.get(0);
            }
        }
        return null;
    }

    public static /* synthetic */ void b() {
    }

    private void b(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar != null) {
            c(cVar, n.a().f(), this.r);
            b(cVar, n.a().f(), this.r);
            a(cVar, n.a().f(), this.r);
        }
    }

    private static void b(com.anythink.expressad.foundation.d.c cVar, Context context, String str) {
        if (cVar != null) {
            try {
                if (TextUtils.isEmpty(cVar.ai())) {
                    return;
                }
                com.anythink.expressad.a.a.a(context, cVar, str, cVar.ai(), false, true, com.anythink.expressad.a.a.a.j);
            } catch (Throwable th) {
                th.getMessage();
            }
        }
    }

    public static /* synthetic */ void b(c cVar) {
        com.anythink.expressad.mbbanner.a.c.c cVar2 = cVar.d;
        if (cVar2 != null) {
            cVar2.d();
        }
    }

    private static void c(com.anythink.expressad.foundation.d.c cVar, Context context, String str) {
        if (!TextUtils.isEmpty(cVar.ag())) {
            com.anythink.expressad.a.a.a(context, cVar, str, cVar.ag(), false, true, com.anythink.expressad.a.a.a.i);
        }
        if (TextUtils.isEmpty(str) || cVar.L() == null || cVar.L().o() == null) {
            return;
        }
        com.anythink.expressad.a.a.a(context, cVar, str, cVar.L().o(), false);
    }

    public static /* synthetic */ void c(c cVar) {
        ImageView imageView;
        if (cVar.e && (imageView = cVar.j) != null && imageView.getVisibility() == 0) {
            cVar.j.setVisibility(8);
            cVar.j.setOnClickListener(null);
            if (cVar.g == null || cVar.j.getParent() == null) {
                return;
            }
            cVar.g.removeView(cVar.j);
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void d(boolean z) {
        if (this.g != null) {
            FeedBackButton feedBackButtonB = com.anythink.expressad.foundation.f.b.a().b(this.r);
            if (com.anythink.expressad.foundation.f.b.a().b() && z && feedBackButtonB != null) {
                ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(feedBackButtonB);
                }
                feedBackButtonB.setVisibility(0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) feedBackButtonB.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams = new RelativeLayout.LayoutParams(com.anythink.expressad.foundation.f.b.a, com.anythink.expressad.foundation.f.b.b);
                }
                layoutParams.addRule(12);
                feedBackButtonB.setLayoutParams(layoutParams);
                this.g.addView(feedBackButtonB);
            }
            com.anythink.expressad.foundation.f.b.a().a(this.r, new com.anythink.expressad.foundation.f.a() { // from class: com.anythink.expressad.mbbanner.a.d.c.3
                @Override // com.anythink.expressad.foundation.f.a
                public final void a() {
                    String string;
                    c.this.g.onPause();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (n.a().f() != null) {
                            jSONObject.put("status", 1);
                        }
                        string = jSONObject.toString();
                    } catch (Throwable th) {
                        String unused = c.c;
                        th.getMessage();
                        string = "";
                    }
                    String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) c.this.i, AbsFeedBackForH5.a, strEncodeToString);
                }

                @Override // com.anythink.expressad.foundation.f.a
                public final void b() {
                    String string;
                    c.this.g.onResume();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (n.a().f() != null) {
                            jSONObject.put("status", 2);
                        }
                        string = jSONObject.toString();
                    } catch (Throwable th) {
                        String unused = c.c;
                        th.getMessage();
                        string = "";
                    }
                    String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) c.this.i, AbsFeedBackForH5.a, strEncodeToString);
                }

                @Override // com.anythink.expressad.foundation.f.a
                public final void c() {
                    String string;
                    c.this.g.onResume();
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (n.a().f() != null) {
                            jSONObject.put("status", 2);
                        }
                        string = jSONObject.toString();
                    } catch (Throwable th) {
                        String unused = c.c;
                        th.getMessage();
                        string = "";
                    }
                    String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                    com.anythink.expressad.atsignalcommon.windvane.j.a();
                    com.anythink.expressad.atsignalcommon.windvane.j.a((WebView) c.this.i, AbsFeedBackForH5.a, strEncodeToString);
                }
            });
            this.f.l(this.r);
            com.anythink.expressad.foundation.f.b.a().a(this.r, this.f);
        }
    }

    private boolean d() throws Throwable {
        String strA = a(this.f);
        if (TextUtils.isEmpty(strA)) {
            return false;
        }
        if (this.g == null) {
            a(com.anythink.expressad.mbbanner.a.a.i);
            return true;
        }
        if (this.i == null) {
            ATBannerWebView aTBannerWebView = new ATBannerWebView(n.a().f());
            this.i = aTBannerWebView;
            aTBannerWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.i.setWebViewClient(new com.anythink.expressad.mbbanner.view.a(this.r, this.t, this.C));
        }
        ImageView imageView = this.h;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
        if (this.i.getVisibility() != 0) {
            this.i.setVisibility(0);
        }
        if (this.i.getParent() == null) {
            this.g.addView(this.i);
            d(this.f.H());
        }
        l();
        com.anythink.expressad.mbbanner.a.a.c cVar = new com.anythink.expressad.mbbanner.a.a.c(this.g.getContext(), this.s, this.r);
        this.w = cVar;
        cVar.a(this.t);
        this.w.a(this.C);
        this.w.a(this.u);
        this.i.setWebViewListener(this.D);
        this.i.setObject(this.w);
        if (strA.startsWith("file")) {
            this.i.loadUrl(strA);
            return true;
        }
        this.i.loadDataWithBaseURL(this.f.p(), strA, "text/html", "utf-8", null);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void e() {
        if (this.g == null) {
            a(com.anythink.expressad.mbbanner.a.a.i);
            return;
        }
        ATBannerWebView aTBannerWebView = this.i;
        if (aTBannerWebView != null && aTBannerWebView.getParent() != null) {
            this.g.removeView(this.i);
        }
        if (this.h == null) {
            ImageView imageView = new ImageView(n.a().f());
            this.h = imageView;
            imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.anythink.expressad.mbbanner.a.d.c.7
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    c.this.z = motionEvent.getRawX();
                    c.this.A = motionEvent.getRawY();
                    String unused = c.c;
                    StringBuilder sb = new StringBuilder();
                    sb.append(c.this.z);
                    sb.append("  ");
                    sb.append(c.this.A);
                    return false;
                }
            });
            this.h.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.mbbanner.a.d.c.8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    c.this.a(com.anythink.expressad.mbbanner.a.e.b.a(CommonJSBridgeImpUtils.buildClickJsonObject(c.this.z, c.this.A), c.this.f), false, "");
                }
            });
        }
        String strBe = this.f.be();
        if (TextUtils.isEmpty(strBe)) {
            a(com.anythink.expressad.mbbanner.a.a.h);
        } else {
            com.anythink.expressad.foundation.g.d.b.a(n.a().f()).a(strBe, new com.anythink.expressad.foundation.g.d.c() { // from class: com.anythink.expressad.mbbanner.a.d.c.9
                @Override // com.anythink.expressad.foundation.g.d.c
                public final void a(Bitmap bitmap, String str) {
                    if (c.this.h != null) {
                        c.this.h.setImageBitmap(bitmap);
                    }
                    c.l(c.this);
                    c.m(c.this);
                    c.this.l();
                    c.this.h();
                }

                @Override // com.anythink.expressad.foundation.g.d.c
                public final void a(String str, String str2) {
                    c.this.a(com.anythink.expressad.mbbanner.a.a.j);
                }
            });
        }
    }

    private void f() {
        if (this.e && this.j == null) {
            ImageView imageView = new ImageView(n.a().f());
            this.j = imageView;
            imageView.setBackgroundResource(com.anythink.expressad.foundation.h.i.a(n.a().f(), "anythink_banner_close", com.anythink.expressad.foundation.h.i.c));
            this.j.setVisibility(8);
            this.j.setContentDescription("closeButton");
        }
    }

    private boolean g() {
        TemplateBannerView templateBannerView = this.g;
        return (templateBannerView == null || y.a(templateBannerView) || this.p) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        TemplateBannerView templateBannerView;
        if (this.m && !this.n && this.d != null) {
            this.n = true;
            this.x.removeCallbacks(this.y);
            com.anythink.expressad.foundation.d.c cVar = this.f;
            if (cVar != null && !cVar.am()) {
                this.f.an();
                this.d.a(this.t);
            }
        }
        if (this.m && this.k && this.l && this.n && this.f != null && !i()) {
            TemplateBannerView templateBannerView2 = this.g;
            boolean z = (templateBannerView2 == null || y.a(templateBannerView2) || this.p) ? false : true;
            if (!z && (templateBannerView = this.g) != null) {
                templateBannerView.postDelayed(new Runnable() { // from class: com.anythink.expressad.mbbanner.a.d.c.10
                    @Override // java.lang.Runnable
                    public final void run() {
                        c.this.h();
                    }
                }, 1000L);
            }
            if (this.o && z) {
                int[] iArr = new int[2];
                this.g.getLocationInWindow(iArr);
                com.anythink.expressad.mbbanner.a.a.a.a(this.i, iArr[0], iArr[1]);
                com.anythink.expressad.mbbanner.a.a.a.a(this.i, iArr[0], iArr[1], this.g.getWidth(), this.g.getHeight());
                this.o = false;
                if (!TextUtils.isEmpty(this.f.be())) {
                    com.anythink.expressad.foundation.g.d.b.a(n.a().f()).c(this.f.be());
                }
            }
            new StringBuilder("showSuccessed:").append(this.f.aZ());
            if (!z) {
                this.f.c(false);
                return;
            }
            ImageView imageView = this.h;
            if (imageView == null || imageView.getVisibility() != 0) {
                List<com.anythink.expressad.foundation.d.c> list = this.t;
                if (list != null && list.size() > 0) {
                    boolean z3 = false;
                    int i = 0;
                    for (int i2 = 0; i2 < this.t.size(); i2++) {
                        if (!this.t.get(i2).s() && (i2 == 0 || !this.t.get(i2).V())) {
                            c(this.t.get(i2), n.a().f(), this.r);
                            this.t.get(i2).c(true);
                            f.a(this.r, this.t.get(i2), f.e);
                            i = i2;
                            z3 = true;
                        }
                    }
                    if (z3) {
                        b(this.t.get(i), n.a().f(), this.r);
                        a(this.t.get(i), n.a().f(), this.r);
                    }
                }
            } else {
                com.anythink.expressad.foundation.d.c cVar2 = this.f;
                if (cVar2 != null) {
                    if (cVar2 != null) {
                        c(cVar2, n.a().f(), this.r);
                        b(cVar2, n.a().f(), this.r);
                        a(cVar2, n.a().f(), this.r);
                    }
                    this.f.c(true);
                    f.a(this.r, this.f, f.e);
                }
            }
            this.q = true;
            com.anythink.expressad.mbbanner.a.c.c cVar3 = this.d;
            if (cVar3 != null) {
                cVar3.a(this.f, false);
            }
            this.x.sendEmptyMessageDelayed(1, 1000L);
        }
    }

    private synchronized boolean i() {
        boolean zV;
        zV = this.f.V();
        if (!zV) {
            this.f.c(true);
        }
        return zV;
    }

    private void j() {
        com.anythink.expressad.mbbanner.a.c.c cVar = this.d;
        if (cVar != null) {
            cVar.d();
        }
    }

    private void k() {
        if (this.h != null) {
            ATBannerWebView aTBannerWebView = this.i;
            if (aTBannerWebView != null) {
                aTBannerWebView.setVisibility(8);
            }
            if (this.h.getVisibility() != 0) {
                this.h.setVisibility(0);
            }
            if (this.g != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                this.h.setScaleType(ImageView.ScaleType.FIT_XY);
                if (this.h.getParent() == null) {
                    this.g.addView(this.h, layoutParams);
                }
                d(true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        ImageView imageView;
        if (!this.e || (imageView = this.j) == null) {
            return;
        }
        if (imageView.getVisibility() != 0) {
            this.j.setVisibility(0);
            this.j.setOnClickListener(this.B);
        }
        if (this.j.getParent() != null || this.g == null) {
            return;
        }
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(t.b(n.a().f(), 12.0f), t.b(n.a().f(), 12.0f));
        layoutParams.addRule(11);
        layoutParams.addRule(10);
        this.g.addView(this.j, layoutParams);
    }

    public static /* synthetic */ boolean l(c cVar) {
        cVar.m = true;
        return true;
    }

    private void m() {
        ImageView imageView;
        if (this.e && (imageView = this.j) != null && imageView.getVisibility() == 0) {
            this.j.setVisibility(8);
            this.j.setOnClickListener(null);
            if (this.g == null || this.j.getParent() == null) {
                return;
            }
            this.g.removeView(this.j);
        }
    }

    public static /* synthetic */ void m(c cVar) {
        if (cVar.h != null) {
            ATBannerWebView aTBannerWebView = cVar.i;
            if (aTBannerWebView != null) {
                aTBannerWebView.setVisibility(8);
            }
            if (cVar.h.getVisibility() != 0) {
                cVar.h.setVisibility(0);
            }
            if (cVar.g != null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(10);
                cVar.h.setScaleType(ImageView.ScaleType.FIT_XY);
                if (cVar.h.getParent() == null) {
                    cVar.g.addView(cVar.h, layoutParams);
                }
                cVar.d(true);
            }
        }
    }

    private static void n() {
    }

    public static /* synthetic */ boolean n(c cVar) {
        cVar.o = true;
        return true;
    }

    public final void a() {
        if (this.d != null) {
            this.d = null;
        }
        ATBannerWebView aTBannerWebView = this.i;
        if (aTBannerWebView != null) {
            aTBannerWebView.setWebViewListener(null);
        }
        if (this.D != null) {
            this.D = null;
        }
        ImageView imageView = this.j;
        if (imageView != null) {
            imageView.setOnClickListener(null);
        }
        ImageView imageView2 = this.h;
        if (imageView2 != null) {
            imageView2.setOnClickListener(null);
        }
        TemplateBannerView templateBannerView = this.g;
        if (templateBannerView != null) {
            templateBannerView.removeAllViews();
        }
        ATBannerWebView aTBannerWebView2 = this.i;
        if (aTBannerWebView2 != null) {
            aTBannerWebView2.release();
        }
        com.anythink.expressad.mbbanner.a.a.c cVar = this.w;
        if (cVar != null) {
            cVar.a();
        }
        if (this.C != null) {
            this.C = null;
        }
        com.anythink.expressad.foundation.f.b.a().c(this.r);
    }

    public final void a(int i, int i2, int i3, int i4) {
        if (i == i3 && i2 == i4) {
            return;
        }
        try {
            CallMraidJS.getInstance().fireSizeChangeEvent(this.i, i, i2);
        } catch (Throwable unused) {
        }
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar, boolean z, String str) {
        if (this.q) {
            if (this.a == null) {
                this.a = new com.anythink.expressad.a.a(n.a().f(), this.r);
            }
            this.a.a(new p.e() { // from class: com.anythink.expressad.mbbanner.a.d.c.11
                @Override // com.anythink.expressad.out.p.c
                public final void a(com.anythink.expressad.foundation.d.c cVar2, String str2) {
                }

                @Override // com.anythink.expressad.out.p.c
                public final void a(com.anythink.expressad.out.j jVar) {
                }

                @Override // com.anythink.expressad.out.p.c
                public final void a(com.anythink.expressad.out.j jVar, String str2) {
                }

                @Override // com.anythink.expressad.out.p.c
                public final boolean a() {
                    return false;
                }

                @Override // com.anythink.expressad.out.p.c
                public final void b() {
                }

                @Override // com.anythink.expressad.out.p.c
                public final void b(com.anythink.expressad.out.j jVar) {
                }

                @Override // com.anythink.expressad.out.p.c
                public final void b(com.anythink.expressad.out.j jVar, String str2) {
                }

                @Override // com.anythink.expressad.out.p.e
                public final void c() {
                    if (c.this.d != null) {
                        c.this.d.a();
                    }
                }

                @Override // com.anythink.expressad.out.p.c
                public final void c(com.anythink.expressad.out.j jVar) {
                }

                @Override // com.anythink.expressad.out.p.c
                public final void d(com.anythink.expressad.out.j jVar) {
                }
            });
            cVar.l(this.r);
            if (!this.f.W()) {
                this.f.X();
            }
            com.anythink.expressad.mbbanner.a.c.c cVar2 = this.d;
            if (cVar2 != null) {
                cVar2.a(cVar);
            }
            if (z) {
                TextUtils.isEmpty(str);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(d dVar) throws Throwable {
        com.anythink.expressad.foundation.d.c cVar;
        boolean z = false;
        if (dVar != null) {
            ArrayList<com.anythink.expressad.foundation.d.c> arrayList = dVar.J;
            this.t = arrayList;
            cVar = (arrayList == null || arrayList.size() <= 0) ? null : this.t.get(0);
        }
        this.f = cVar;
        if (cVar == null) {
            a(com.anythink.expressad.mbbanner.a.a.h);
            return;
        }
        this.x.removeCallbacks(this.y);
        if (this.e && this.j == null) {
            ImageView imageView = new ImageView(n.a().f());
            this.j = imageView;
            imageView.setBackgroundResource(com.anythink.expressad.foundation.h.i.a(n.a().f(), "anythink_banner_close", com.anythink.expressad.foundation.h.i.c));
            this.j.setVisibility(8);
            this.j.setContentDescription("closeButton");
        }
        this.m = false;
        this.n = false;
        this.q = false;
        if (TextUtils.isEmpty(this.f.q())) {
            TextUtils.isEmpty(this.f.p());
        }
        this.x.postDelayed(this.y, this.v);
        String strA = a(this.f);
        if (!TextUtils.isEmpty(strA)) {
            if (this.g != null) {
                if (this.i == null) {
                    ATBannerWebView aTBannerWebView = new ATBannerWebView(n.a().f());
                    this.i = aTBannerWebView;
                    aTBannerWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                    this.i.setWebViewClient(new com.anythink.expressad.mbbanner.view.a(this.r, this.t, this.C));
                }
                ImageView imageView2 = this.h;
                if (imageView2 != null) {
                    imageView2.setVisibility(8);
                }
                if (this.i.getVisibility() != 0) {
                    this.i.setVisibility(0);
                }
                if (this.i.getParent() == null) {
                    this.g.addView(this.i);
                    d(this.f.H());
                }
                l();
                com.anythink.expressad.mbbanner.a.a.c cVar2 = new com.anythink.expressad.mbbanner.a.a.c(this.g.getContext(), this.s, this.r);
                this.w = cVar2;
                cVar2.a(this.t);
                this.w.a(this.C);
                this.w.a(this.u);
                this.i.setWebViewListener(this.D);
                this.i.setObject(this.w);
                if (strA.startsWith("file")) {
                    this.i.loadUrl(strA);
                } else {
                    this.i.loadDataWithBaseURL(this.f.p(), strA, "text/html", "utf-8", null);
                }
            } else {
                a(com.anythink.expressad.mbbanner.a.a.i);
            }
            z = true;
        }
        if (z) {
            return;
        }
        if (TextUtils.isEmpty(this.f.q())) {
            TextUtils.isEmpty(this.f.p());
        }
        e();
    }

    public final void a(i iVar) {
        this.b = iVar;
    }

    public final void a(boolean z) {
        this.e = z;
    }

    public final void a(boolean z, int i) {
        this.u = i;
        if (i == 0) {
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.d.c cVarC = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), this.r);
            if (cVarC == null) {
                return;
            } else {
                z = cVarC.d() == 1;
            }
        }
        this.e = z;
    }

    public final void b(boolean z) {
        this.k = z;
        h();
    }

    public final void c(boolean z) {
        this.l = z;
        h();
    }
}
