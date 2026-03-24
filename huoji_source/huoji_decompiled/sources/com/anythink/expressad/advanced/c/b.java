package com.anythink.expressad.advanced.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.core.common.b.n;
import com.anythink.expressad.advanced.d.d;
import com.anythink.expressad.advanced.js.NativeAdvancedJSBridgeImpl;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.anythink.expressad.advanced.view.ATNativeAdvancedView;
import com.anythink.expressad.advanced.view.ATNativeAdvancedWebview;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.g.a.f;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.y;
import com.anythink.expressad.widget.FeedBackButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class b {
    private com.anythink.expressad.foundation.d.c c;
    private ATNativeAdvancedView d;
    private d e;
    private com.anythink.expressad.a.a f;
    private com.anythink.expressad.advanced.d.c g;
    private boolean h;
    private ImageView j;
    private String k;
    private String l;
    private boolean m;
    private String b = "NativeAdvancedShowManager";
    private int i = -1;
    private View.OnClickListener n = new View.OnClickListener() { // from class: com.anythink.expressad.advanced.c.b.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (b.this.h) {
                b.b(b.this);
            }
        }
    };
    public Handler a = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.advanced.c.b.2
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 2 && b.this.c != null && b.this.c.ay() && b.this.d != null) {
                b.this.d.getAdvancedNativeWebview();
            }
        }
    };
    private com.anythink.expressad.advanced.d.a o = new com.anythink.expressad.advanced.d.a() { // from class: com.anythink.expressad.advanced.c.b.3
        @Override // com.anythink.expressad.advanced.d.a
        public final void a() {
            if (b.this.d != null) {
                b.this.d.setVisibility(8);
            }
            b.b(b.this);
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void a(int i) {
            b.this.i = i;
            if (b.this.d != null) {
                b.this.d.changeCloseBtnState(i);
            }
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void a(com.anythink.expressad.foundation.d.c cVar) {
            b.this.a(cVar);
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void a(String str) {
            try {
                if (b.this.e != null) {
                    if (TextUtils.isEmpty(str)) {
                        b.this.e.a(b.this.c);
                        d unused = b.this.e;
                    } else {
                        com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(com.anythink.expressad.foundation.d.c.a(b.this.c));
                        cVarB.p(str);
                        b.this.a(cVarB);
                    }
                }
            } catch (Exception e) {
                String unused2 = b.this.b;
                e.getMessage();
            }
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void a(boolean z) {
            if (b.this.e != null) {
                b.this.m = z;
                if (z) {
                    d unused = b.this.e;
                } else {
                    d unused2 = b.this.e;
                }
            }
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void b() {
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void c() {
            String unused = b.this.b;
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void d() {
        }

        @Override // com.anythink.expressad.advanced.d.a
        public final void e() {
            b.b(b.this);
        }
    };

    public b(Context context, String str, String str2) {
        this.k = str2;
        this.l = str;
        if (this.j == null) {
            ImageView imageView = new ImageView(context);
            this.j = imageView;
            imageView.setPadding(t.b(context, 2.0f), t.b(context, 2.0f), t.b(context, 2.0f), t.b(context, 2.0f));
            Context contextF = n.a().f();
            this.j.setScaleType(ImageView.ScaleType.FIT_XY);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.j.getLayoutParams();
            this.j.setLayoutParams(layoutParams == null ? new RelativeLayout.LayoutParams(t.b(contextF, 29.0f), t.b(contextF, 16.0f)) : layoutParams);
            this.j.setImageResource(i.a(contextF, "anythink_native_advanced_close_icon", i.c));
        }
    }

    private void a(View view) {
        if (view != null) {
            view.setOnClickListener(this.n);
        }
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

    public static /* synthetic */ void b(b bVar) {
        d dVar = bVar.e;
        if (dVar != null) {
            dVar.c();
            bVar.e = null;
        }
    }

    private void b(com.anythink.expressad.foundation.d.c cVar) {
        boolean z = true;
        if (cVar.s()) {
            z = false;
        } else {
            Context contextF = n.a().f();
            String str = this.k;
            com.anythink.expressad.foundation.b.a.c().b(contextF);
            if (!TextUtils.isEmpty(cVar.ag())) {
                com.anythink.expressad.a.a.a(contextF, cVar, str, cVar.ag(), false, true, com.anythink.expressad.a.a.a.i);
            }
            if (!TextUtils.isEmpty(str) && cVar.L() != null && cVar.L().o() != null) {
                com.anythink.expressad.a.a.a(contextF, cVar, str, cVar.L().o(), false);
            }
            cVar.c(true);
            f.a(this.k, cVar, f.g);
        }
        if (z) {
            b(cVar, n.a().f(), this.k);
            a(cVar, n.a().f(), this.k);
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

    private static void c(com.anythink.expressad.foundation.d.c cVar, Context context, String str) {
        com.anythink.expressad.foundation.b.a.c().b(context);
        if (!TextUtils.isEmpty(cVar.ag())) {
            com.anythink.expressad.a.a.a(context, cVar, str, cVar.ag(), false, true, com.anythink.expressad.a.a.a.i);
        }
        if (TextUtils.isEmpty(str) || cVar.L() == null || cVar.L().o() == null) {
            return;
        }
        com.anythink.expressad.a.a.a(context, cVar, str, cVar.L().o(), false);
    }

    private void f() {
        Context contextF = n.a().f();
        this.j.setScaleType(ImageView.ScaleType.FIT_XY);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.j.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(t.b(contextF, 29.0f), t.b(contextF, 16.0f));
        }
        this.j.setLayoutParams(layoutParams);
        this.j.setImageResource(i.a(contextF, "anythink_native_advanced_close_icon", i.c));
    }

    private void g() {
        if (this.c.V()) {
            return;
        }
        boolean z = true;
        this.c.c(true);
        com.anythink.expressad.foundation.d.c cVar = this.c;
        if (cVar.s()) {
            z = false;
        } else {
            Context contextF = n.a().f();
            String str = this.k;
            com.anythink.expressad.foundation.b.a.c().b(contextF);
            if (!TextUtils.isEmpty(cVar.ag())) {
                com.anythink.expressad.a.a.a(contextF, cVar, str, cVar.ag(), false, true, com.anythink.expressad.a.a.a.i);
            }
            if (!TextUtils.isEmpty(str) && cVar.L() != null && cVar.L().o() != null) {
                com.anythink.expressad.a.a.a(contextF, cVar, str, cVar.L().o(), false);
            }
            cVar.c(true);
            f.a(this.k, cVar, f.g);
        }
        if (z) {
            b(cVar, n.a().f(), this.k);
            a(cVar, n.a().f(), this.k);
        }
        d dVar = this.e;
        if (dVar != null) {
            dVar.a();
        }
    }

    private static void h() {
    }

    private void i() {
        d dVar = this.e;
        if (dVar != null) {
            dVar.c();
            this.e = null;
        }
    }

    private static /* synthetic */ void j() {
    }

    public final String a() {
        com.anythink.expressad.foundation.d.c cVar = this.c;
        return (cVar == null || cVar.Z() == null) ? "" : this.c.Z();
    }

    public final void a(com.anythink.expressad.advanced.d.c cVar) {
        this.g = cVar;
    }

    public final void a(d dVar) {
        this.e = dVar;
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        cVar.l(this.k);
        d dVar = this.e;
        if (dVar != null) {
            dVar.a(cVar);
        }
    }

    public final void a(final com.anythink.expressad.foundation.d.c cVar, final ATNativeAdvancedView aTNativeAdvancedView, boolean z) {
        FeedBackButton feedBackButtonB;
        if (aTNativeAdvancedView == null) {
            return;
        }
        com.anythink.expressad.foundation.f.b.a().a(this.k, new com.anythink.expressad.foundation.f.a() { // from class: com.anythink.expressad.advanced.c.b.4
            @Override // com.anythink.expressad.foundation.f.a
            public final void a() {
                String string;
                b.this.e();
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (n.a().f() != null) {
                        jSONObject.put("status", 1);
                    }
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    String unused = b.this.b;
                    th.getMessage();
                    string = "";
                }
                String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                j.a();
                j.a((WebView) aTNativeAdvancedView.getAdvancedNativeWebview(), AbsFeedBackForH5.a, strEncodeToString);
            }

            @Override // com.anythink.expressad.foundation.f.a
            public final void b() {
                String string;
                b.this.d();
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (n.a().f() != null) {
                        jSONObject.put("status", 2);
                    }
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    String unused = b.this.b;
                    th.getMessage();
                    string = "";
                }
                String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                j.a();
                j.a((WebView) aTNativeAdvancedView.getAdvancedNativeWebview(), AbsFeedBackForH5.a, strEncodeToString);
            }

            @Override // com.anythink.expressad.foundation.f.a
            public final void c() {
                String string;
                b.this.d();
                try {
                    JSONObject jSONObject = new JSONObject();
                    if (n.a().f() != null) {
                        jSONObject.put("status", 2);
                    }
                    string = jSONObject.toString();
                } catch (Throwable th) {
                    String unused = b.this.b;
                    th.getMessage();
                    string = "";
                }
                String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
                j.a();
                j.a((WebView) aTNativeAdvancedView.getAdvancedNativeWebview(), AbsFeedBackForH5.a, strEncodeToString);
            }
        });
        if (cVar.H() && com.anythink.expressad.foundation.f.b.a().b() && (feedBackButtonB = com.anythink.expressad.foundation.f.b.a().b(this.k)) != null) {
            RelativeLayout.LayoutParams layoutParams = null;
            try {
                layoutParams = (RelativeLayout.LayoutParams) feedBackButtonB.getLayoutParams();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(com.anythink.expressad.foundation.f.b.a, com.anythink.expressad.foundation.f.b.b);
            }
            layoutParams.addRule(12);
            ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(feedBackButtonB);
            }
            aTNativeAdvancedView.addView(feedBackButtonB, layoutParams);
        }
        this.h = this.h;
        this.c = cVar;
        this.d = aTNativeAdvancedView;
        NativeAdvancedJSBridgeImpl advancedNativeJSBridgeImpl = aTNativeAdvancedView.getAdvancedNativeJSBridgeImpl();
        if (advancedNativeJSBridgeImpl == null) {
            advancedNativeJSBridgeImpl = new NativeAdvancedJSBridgeImpl(aTNativeAdvancedView.getContext(), this.l, this.k);
            List<com.anythink.expressad.foundation.d.c> arrayList = new ArrayList<>();
            arrayList.add(cVar);
            advancedNativeJSBridgeImpl.setCampaignList(arrayList);
        }
        advancedNativeJSBridgeImpl.setAllowSkip(this.h ? 1 : 0);
        advancedNativeJSBridgeImpl.setNativeAdvancedBridgeListener(this.o);
        aTNativeAdvancedView.setAdvancedNativeJSBridgeImpl(advancedNativeJSBridgeImpl);
        if (cVar.s() || !this.h) {
            this.j.setVisibility(8);
        }
        ImageView imageView = this.j;
        if (imageView != null) {
            imageView.setOnClickListener(this.n);
        }
        aTNativeAdvancedView.setCloseView(this.j);
        boolean z3 = false;
        if (aTNativeAdvancedView.getVisibility() != 0) {
            aTNativeAdvancedView.setVisibility(0);
        }
        boolean zA = y.a(aTNativeAdvancedView.getAdvancedNativeWebview());
        com.anythink.expressad.advanced.d.c cVar2 = this.g;
        if (cVar2 == null || zA || cVar2.c() == null || this.g.c().getAlpha() < 0.5f || this.g.c().getVisibility() != 0 || this.m) {
            if (z) {
                aTNativeAdvancedView.postDelayed(new Runnable() { // from class: com.anythink.expressad.advanced.c.b.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        b.this.a(cVar, aTNativeAdvancedView, false);
                    }
                }, 200L);
                return;
            }
            return;
        }
        aTNativeAdvancedView.show();
        com.anythink.expressad.foundation.b.a.c().b(aTNativeAdvancedView.getContext());
        cVar.l(this.k);
        com.anythink.expressad.foundation.f.b.a().a(this.k, cVar);
        com.anythink.expressad.foundation.d.c cVar3 = this.c;
        if (cVar3 != null && cVar3.ay() && aTNativeAdvancedView != null) {
            aTNativeAdvancedView.getAdvancedNativeWebview();
            try {
                com.anythink.expressad.advanced.a.a.c(cVar.Z());
            } catch (Throwable th) {
                th.getMessage();
                com.anythink.expressad.foundation.d.c cVar4 = this.c;
                if (cVar4 != null) {
                    cVar4.Z();
                    this.c.aa();
                    this.c.aZ();
                }
            }
        }
        if (!this.c.V()) {
            this.c.c(true);
            com.anythink.expressad.foundation.d.c cVar5 = this.c;
            if (!cVar5.s()) {
                Context contextF = n.a().f();
                String str = this.k;
                com.anythink.expressad.foundation.b.a.c().b(contextF);
                if (!TextUtils.isEmpty(cVar5.ag())) {
                    com.anythink.expressad.a.a.a(contextF, cVar5, str, cVar5.ag(), false, true, com.anythink.expressad.a.a.a.i);
                }
                if (!TextUtils.isEmpty(str) && cVar5.L() != null && cVar5.L().o() != null) {
                    com.anythink.expressad.a.a.a(contextF, cVar5, str, cVar5.L().o(), false);
                }
                cVar5.c(true);
                f.a(this.k, cVar5, f.g);
                z3 = true;
            }
            if (z3) {
                b(cVar5, n.a().f(), this.k);
                a(cVar5, n.a().f(), this.k);
            }
            d dVar = this.e;
            if (dVar != null) {
                dVar.a();
            }
        }
        int i = this.i;
        if (i != -1) {
            aTNativeAdvancedView.changeCloseBtnState(i);
        }
        com.anythink.expressad.advanced.a.a.c(cVar.Z());
        this.a.sendEmptyMessageDelayed(2, 1000L);
    }

    public final void a(boolean z) {
        this.h = z;
    }

    public final com.anythink.expressad.advanced.d.a b() {
        return this.o;
    }

    public final void c() {
        if (this.e != null) {
            this.e = null;
        }
        if (this.o != null) {
            this.o = null;
        }
        if (this.n != null) {
            this.n = null;
        }
        ATNativeAdvancedView aTNativeAdvancedView = this.d;
        if (aTNativeAdvancedView != null) {
            aTNativeAdvancedView.destroy();
        }
        if (this.g != null) {
            this.g = null;
        }
        com.anythink.expressad.foundation.f.b.a().c(this.k);
    }

    public final void d() {
        ATNativeAdvancedWebview advancedNativeWebview;
        if (this.d == null || com.anythink.expressad.foundation.f.b.c || (advancedNativeWebview = this.d.getAdvancedNativeWebview()) == null || advancedNativeWebview.isDestroyed()) {
            return;
        }
        NativeAdvancedJsUtils.sendEventToH5(advancedNativeWebview, NativeAdvancedJsUtils.b, "");
    }

    public final void e() {
        ATNativeAdvancedWebview advancedNativeWebview;
        ATNativeAdvancedView aTNativeAdvancedView = this.d;
        if (aTNativeAdvancedView == null || (advancedNativeWebview = aTNativeAdvancedView.getAdvancedNativeWebview()) == null || advancedNativeWebview.isDestroyed()) {
            return;
        }
        j.a();
        j.a((WebView) advancedNativeWebview, NativeAdvancedJsUtils.a, "");
    }
}
