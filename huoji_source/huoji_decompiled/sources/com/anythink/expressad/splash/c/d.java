package com.anythink.expressad.splash.c;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.a.f;
import com.anythink.core.common.o.x;
import com.anythink.expressad.atsignalcommon.windvane.AbsFeedBackForH5;
import com.anythink.expressad.atsignalcommon.windvane.j;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.splash.js.SplashJSBridgeImpl;
import com.anythink.expressad.splash.js.SplashJsUtils;
import com.anythink.expressad.splash.view.ATSplashView;
import com.anythink.expressad.splash.view.ATSplashWebview;
import com.anythink.expressad.widget.FeedBackButton;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class d {
    private com.anythink.expressad.foundation.d.c d;
    private ATSplashView e;
    private com.anythink.expressad.splash.d.d f;
    private com.anythink.expressad.a.a g;
    private boolean h;
    private TextView i;
    private View j;
    private String k;
    private String l;
    private String n;
    private String o;
    private String p;
    private String q;
    private boolean r;
    private boolean s;
    private Context u;
    private String c = "SplashShowManager";
    private int m = 5;
    private boolean t = false;
    private View.OnClickListener v = new View.OnClickListener() { // from class: com.anythink.expressad.splash.c.d.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (d.this.h) {
                d.a(d.this, 1);
                d.b(d.this, -1);
            }
        }
    };
    private f.b w = new f.b();
    public Handler a = new Handler(Looper.getMainLooper()) { // from class: com.anythink.expressad.splash.c.d.2
        @Override // android.os.Handler
        public final void handleMessage(@NonNull Message message) {
            super.handleMessage(message);
            int i = message.what;
            if (i != 1) {
                if (i == 2 && d.this.d != null && d.this.d.ay() && d.this.e != null) {
                    d.this.e.getSplashWebview();
                    return;
                }
                return;
            }
            if (d.this.t) {
                return;
            }
            if (d.this.e == null || !x.a(d.this.e, d.this.w)) {
                d.this.a.removeMessages(1);
                sendEmptyMessageDelayed(1, 1000L);
            } else {
                if (d.this.m <= 0) {
                    d.a(d.this, 2);
                    return;
                }
                d.f(d.this);
                d dVar = d.this;
                d.b(dVar, dVar.m);
                d.this.a.removeMessages(1);
                sendEmptyMessageDelayed(1, 1000L);
            }
        }
    };
    private com.anythink.expressad.splash.d.a x = new com.anythink.expressad.splash.d.a() { // from class: com.anythink.expressad.splash.c.d.3
        @Override // com.anythink.expressad.splash.d.a
        public final void a() {
            d.a(d.this, 1);
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void a(int i) {
            if (d.this.e != null) {
                d.this.e.changeCloseBtnState(i);
            }
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void a(int i, int i2) {
            if (i == 1) {
                d.this.a.removeMessages(1);
            }
            if (i == 2) {
                d.this.m = i2;
                d.this.a.removeMessages(1);
                d.this.a.sendEmptyMessageDelayed(1, 1000L);
            }
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void a(com.anythink.expressad.foundation.d.c cVar) {
            d.this.a(cVar);
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void a(String str) {
            d.a(d.this, str);
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void a(boolean z) {
            if (z) {
                d.this.a.removeMessages(1);
            }
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void b() {
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void b(int i) {
            String unused = d.this.c;
            d.this.m = i;
            d.this.a.removeMessages(1);
            d.this.a.sendEmptyMessageDelayed(1, 1000L);
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void b(String str) {
            try {
                if (d.this.f != null) {
                    if (TextUtils.isEmpty(str)) {
                        d.this.f.a(d.this.d);
                        return;
                    }
                    com.anythink.expressad.foundation.d.c cVarB = com.anythink.expressad.foundation.d.c.b(com.anythink.expressad.foundation.d.c.a(d.this.d));
                    cVarB.p(str);
                    d.this.a(cVarB);
                }
            } catch (Exception e) {
                String unused = d.this.c;
                e.getMessage();
            }
        }

        @Override // com.anythink.expressad.splash.d.a
        public final void c() {
            d.a(d.this, 1);
        }
    };
    public Rect b = new Rect();

    /* JADX INFO: renamed from: com.anythink.expressad.splash.c.d$6, reason: invalid class name */
    public class AnonymousClass6 implements com.anythink.expressad.foundation.f.a {
        public AnonymousClass6() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void a() {
            String string;
            d.this.e();
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 1);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                String unused = d.this.c;
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) d.this.e.getSplashWebview(), AbsFeedBackForH5.a, strEncodeToString);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void b() {
            String string;
            d.this.d();
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                String unused = d.this.c;
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) d.this.e.getSplashWebview(), AbsFeedBackForH5.a, strEncodeToString);
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void c() {
            String string;
            d.this.d();
            try {
                JSONObject jSONObject = new JSONObject();
                if (n.a().f() != null) {
                    jSONObject.put("status", 2);
                }
                string = jSONObject.toString();
            } catch (Throwable th) {
                String unused = d.this.c;
                th.getMessage();
                string = "";
            }
            String strEncodeToString = Base64.encodeToString(string.getBytes(), 2);
            j.a();
            j.a((WebView) d.this.e.getSplashWebview(), AbsFeedBackForH5.a, strEncodeToString);
        }
    }

    public d(Context context, String str, String str2) {
        this.n = "";
        this.o = "";
        this.p = "";
        this.q = "";
        this.k = str2;
        this.l = str;
        this.u = context;
        int iA = i.a(context.getApplicationContext(), "anythink_splash_count_time_can_skip", i.g);
        int iA2 = i.a(this.u.getApplicationContext(), "anythink_splash_count_time_can_skip_not", i.g);
        int iA3 = i.a(this.u.getApplicationContext(), "anythink_splash_count_time_can_skip_s", i.g);
        this.o = this.u.getResources().getString(iA);
        this.q = this.u.getResources().getString(iA2);
        this.p = this.u.getResources().getString(iA3);
        if (this.i == null) {
            TextView textView = new TextView(context);
            this.i = textView;
            textView.setGravity(1);
            this.i.setTextIsSelectable(false);
            this.i.setPadding(t.b(context, 5.0f), t.b(context, 5.0f), t.b(context, 5.0f), t.b(context, 5.0f));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.i.getLayoutParams();
            this.i.setLayoutParams(layoutParams == null ? new RelativeLayout.LayoutParams(t.b(context, 100.0f), t.b(context, 50.0f)) : layoutParams);
            Context contextF = n.a().f();
            if (contextF != null) {
                int iA4 = i.a(contextF, "anythink_splash_count_time_can_skip", i.g);
                int iA5 = i.a(contextF, "anythink_splash_count_time_can_skip_not", i.g);
                int iA6 = i.a(contextF, "anythink_splash_count_time_can_skip_s", i.g);
                this.o = contextF.getResources().getString(iA4);
                String string = contextF.getResources().getString(iA5);
                this.q = string;
                this.n = string;
                this.p = contextF.getResources().getString(iA6);
                this.i.setBackgroundResource(i.a(contextF, "anythink_splash_close_bg", i.c));
                this.i.setTextColor(contextF.getResources().getColor(i.a(contextF, "anythink_splash_count_time_skip_text_color", i.d)));
            }
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

    public static /* synthetic */ void a(d dVar, int i) {
        if (dVar.t) {
            return;
        }
        try {
            dVar.t = true;
            com.anythink.expressad.splash.d.d dVar2 = dVar.f;
            if (dVar2 != null) {
                dVar2.a(i);
                dVar.f = null;
            }
            dVar.s = false;
            ATSplashView aTSplashView = dVar.e;
            if (aTSplashView != null) {
                aTSplashView.getSplashWebview();
            }
            Handler handler = dVar.a;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused) {
        }
    }

    public static /* synthetic */ void a(d dVar, String str) {
        com.anythink.expressad.splash.d.d dVar2 = dVar.f;
        if (dVar2 != null) {
            dVar2.a("web show failed:".concat(String.valueOf(str)));
        }
    }

    private void a(String str) {
        com.anythink.expressad.splash.d.d dVar = this.f;
        if (dVar != null) {
            dVar.a("web show failed:".concat(String.valueOf(str)));
        }
    }

    private boolean a(View view) {
        return view != null && view.getVisibility() == 0 && view.getParent() != null && view.getWindowVisibility() == 0 && view.getGlobalVisibleRect(this.b) && ((long) this.b.height()) * ((long) this.b.width()) > 0;
    }

    public static /* synthetic */ boolean a(d dVar, View view) {
        return view != null && view.getVisibility() == 0 && view.getParent() != null && view.getWindowVisibility() == 0 && view.getGlobalVisibleRect(dVar.b) && ((long) dVar.b.height()) * ((long) dVar.b.width()) > 0;
    }

    private void b(int i) {
        ATSplashView aTSplashView = this.e;
        if (aTSplashView != null) {
            aTSplashView.updateCountdown(i);
            if (this.e.getSplashJSBridgeImpl() != null) {
                this.e.getSplashJSBridgeImpl().updateCountDown(i);
            }
        }
        if (i < 0) {
            this.m = i;
        } else if (this.j == null) {
            i();
        }
    }

    private void b(View view) {
        if (view != null) {
            view.setOnClickListener(this.v);
        }
    }

    private void b(com.anythink.expressad.foundation.d.c cVar) {
        boolean z = true;
        if (cVar.s()) {
            z = false;
        } else {
            c(cVar, n.a().f(), this.k);
            cVar.c(true);
            com.anythink.expressad.foundation.g.a.f.a(this.k, cVar, com.anythink.expressad.foundation.g.a.f.f);
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

    public static /* synthetic */ void b(d dVar, int i) {
        ATSplashView aTSplashView = dVar.e;
        if (aTSplashView != null) {
            aTSplashView.updateCountdown(i);
            if (dVar.e.getSplashJSBridgeImpl() != null) {
                dVar.e.getSplashJSBridgeImpl().updateCountDown(i);
            }
        }
        if (i < 0) {
            dVar.m = i;
        } else if (dVar.j == null) {
            dVar.i();
        }
    }

    private void c(int i) {
        if (this.t) {
            return;
        }
        try {
            this.t = true;
            com.anythink.expressad.splash.d.d dVar = this.f;
            if (dVar != null) {
                dVar.a(i);
                this.f = null;
            }
            this.s = false;
            ATSplashView aTSplashView = this.e;
            if (aTSplashView != null) {
                aTSplashView.getSplashWebview();
            }
            Handler handler = this.a;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable unused) {
        }
    }

    private void c(com.anythink.expressad.foundation.d.c cVar) {
        b(cVar, n.a().f(), this.k);
        c(cVar, n.a().f(), this.k);
        a(cVar, n.a().f(), this.k);
        cVar.c(true);
        com.anythink.expressad.foundation.g.a.f.a(this.k, cVar, com.anythink.expressad.foundation.g.a.f.f);
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

    private void d(com.anythink.expressad.foundation.d.c cVar) {
        com.anythink.expressad.splash.d.d dVar = this.f;
        if (dVar != null) {
            dVar.a(cVar);
        }
    }

    public static /* synthetic */ int f(d dVar) {
        int i = dVar.m;
        dVar.m = i - 1;
        return i;
    }

    private void f() {
        Context contextF = n.a().f();
        if (contextF != null) {
            int iA = i.a(contextF, "anythink_splash_count_time_can_skip", i.g);
            int iA2 = i.a(contextF, "anythink_splash_count_time_can_skip_not", i.g);
            int iA3 = i.a(contextF, "anythink_splash_count_time_can_skip_s", i.g);
            this.o = contextF.getResources().getString(iA);
            String string = contextF.getResources().getString(iA2);
            this.q = string;
            this.n = string;
            this.p = contextF.getResources().getString(iA3);
            this.i.setBackgroundResource(i.a(contextF, "anythink_splash_close_bg", i.c));
            this.i.setTextColor(contextF.getResources().getColor(i.a(contextF, "anythink_splash_count_time_skip_text_color", i.d)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void g() {
        if (this.d != null && !this.s) {
            boolean z = true;
            this.s = true;
            if (this.f != null && this.e != null) {
                Context context = this.u;
                if (context != null && (context instanceof Activity) && ((Activity) context).isFinishing()) {
                    this.f.a("Activity is finishing");
                    return;
                }
                this.f.a();
            }
            if (!this.d.V()) {
                if (!this.e.isDynamicView()) {
                    com.anythink.expressad.foundation.d.c cVar = this.d;
                    if (cVar.s()) {
                        z = false;
                    } else {
                        c(cVar, n.a().f(), this.k);
                        cVar.c(true);
                        com.anythink.expressad.foundation.g.a.f.a(this.k, cVar, com.anythink.expressad.foundation.g.a.f.f);
                    }
                    if (z) {
                        b(cVar, n.a().f(), this.k);
                        a(cVar, n.a().f(), this.k);
                    }
                    return;
                }
                com.anythink.expressad.foundation.d.c cVar2 = this.d;
                b(cVar2, n.a().f(), this.k);
                c(cVar2, n.a().f(), this.k);
                a(cVar2, n.a().f(), this.k);
                cVar2.c(true);
                com.anythink.expressad.foundation.g.a.f.a(this.k, cVar2, com.anythink.expressad.foundation.g.a.f.f);
            }
        }
    }

    private void h() {
        if (com.anythink.expressad.foundation.f.b.a().b() && !this.e.isDynamicView()) {
            com.anythink.expressad.foundation.f.b.a().a(this.k, new AnonymousClass6());
            FeedBackButton feedBackButtonB = com.anythink.expressad.foundation.f.b.a().b(this.k);
            if (feedBackButtonB != null) {
                RelativeLayout.LayoutParams layoutParams = null;
                try {
                    layoutParams = (RelativeLayout.LayoutParams) feedBackButtonB.getLayoutParams();
                } catch (Exception e) {
                    e.printStackTrace();
                }
                if (layoutParams == null) {
                    layoutParams = new RelativeLayout.LayoutParams(com.anythink.expressad.foundation.f.b.a, com.anythink.expressad.foundation.f.b.b);
                }
                layoutParams.topMargin = t.b(n.a().f(), 10.0f);
                layoutParams.leftMargin = t.b(n.a().f(), 10.0f);
                ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(feedBackButtonB);
                }
                this.e.addView(feedBackButtonB, layoutParams);
            }
            this.d.l(this.k);
            com.anythink.expressad.foundation.f.b.a().a(this.k, this.d);
        }
    }

    private void i() {
        StringBuilder sb;
        String str;
        if (this.h) {
            sb = new StringBuilder();
            sb.append(this.o);
            sb.append(this.m);
            str = this.p;
        } else {
            sb = new StringBuilder();
            sb.append(this.m);
            str = this.q;
        }
        sb.append(str);
        this.i.setText(sb.toString());
    }

    private void j() {
        ATSplashWebview splashWebview;
        Handler handler;
        this.r = false;
        if (this.m > 0 && (handler = this.a) != null) {
            handler.removeMessages(1);
            this.a.sendEmptyMessageDelayed(1, 1000L);
        }
        ATSplashView aTSplashView = this.e;
        if (aTSplashView == null || (splashWebview = aTSplashView.getSplashWebview()) == null || splashWebview.isDestroyed()) {
            return;
        }
        SplashJsUtils.sendEventToH5(splashWebview, "onInstallAlertHide", "");
    }

    private void k() {
        ATSplashWebview splashWebview;
        Handler handler;
        this.r = true;
        if (this.m > 0 && (handler = this.a) != null) {
            handler.removeMessages(1);
        }
        ATSplashView aTSplashView = this.e;
        if (aTSplashView == null || (splashWebview = aTSplashView.getSplashWebview()) == null || splashWebview.isDestroyed()) {
            return;
        }
        SplashJsUtils.sendEventToH5(splashWebview, "onInstallAlertShow", "");
    }

    public final com.anythink.expressad.splash.d.a a() {
        return this.x;
    }

    public final void a(int i) {
        this.m = i;
    }

    public final void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            viewGroup.setOnClickListener(this.v);
        }
        this.j = viewGroup;
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar != null) {
            try {
                cVar.aA();
            } catch (Throwable th) {
                th.getMessage();
            }
        }
        com.anythink.expressad.splash.d.d dVar = this.f;
        if (dVar != null) {
            dVar.a(cVar);
        }
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar, ATSplashView aTSplashView) {
        View view;
        a(this.h);
        this.d = cVar;
        this.e = aTSplashView;
        SplashJSBridgeImpl splashJSBridgeImpl = aTSplashView.getSplashJSBridgeImpl();
        if (splashJSBridgeImpl == null) {
            splashJSBridgeImpl = new SplashJSBridgeImpl(aTSplashView.getContext(), this.l, this.k);
            ArrayList arrayList = new ArrayList();
            arrayList.add(cVar);
            splashJSBridgeImpl.setCampaignList(arrayList);
        }
        splashJSBridgeImpl.setCountdownS(this.m);
        splashJSBridgeImpl.setAllowSkip(this.h ? 1 : 0);
        splashJSBridgeImpl.setSplashBridgeListener(this.x);
        aTSplashView.setSplashJSBridgeImpl(splashJSBridgeImpl);
        boolean zS = cVar.s();
        View view2 = this.j;
        if (view2 == null) {
            if (zS) {
                this.i.setVisibility(8);
            }
            i();
            b(this.i);
            view = this.i;
        } else {
            if (zS) {
                view2.setVisibility(8);
            }
            b(this.j);
            view = this.j;
        }
        aTSplashView.setCloseView(view);
        aTSplashView.show();
        com.anythink.expressad.foundation.d.c cVar2 = this.d;
        if (cVar2 != null && cVar2.ay() && aTSplashView != null) {
            aTSplashView.getSplashWebview();
        }
        aTSplashView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.anythink.expressad.splash.c.d.4
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view3) {
                n.a().a(new Runnable() { // from class: com.anythink.expressad.splash.c.d.4.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        d dVar = d.this;
                        if (d.a(dVar, dVar.e)) {
                            d.this.g();
                        }
                    }
                }, 30L);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view3) {
                d.this.c();
            }
        });
        n.a().a(new Runnable() { // from class: com.anythink.expressad.splash.c.d.5
            @Override // java.lang.Runnable
            public final void run() {
                d dVar = d.this;
                if (d.a(dVar, dVar.e)) {
                    d.this.g();
                }
            }
        }, 30L);
        b.a(this.d.be());
        this.a.removeMessages(1);
        this.a.sendEmptyMessageDelayed(1, 1000L);
        this.a.sendEmptyMessageDelayed(2, 1000L);
        if (!com.anythink.expressad.foundation.f.b.a().b() || this.e.isDynamicView()) {
            return;
        }
        com.anythink.expressad.foundation.f.b.a().a(this.k, new AnonymousClass6());
        FeedBackButton feedBackButtonB = com.anythink.expressad.foundation.f.b.a().b(this.k);
        if (feedBackButtonB != null) {
            RelativeLayout.LayoutParams layoutParams = null;
            try {
                layoutParams = (RelativeLayout.LayoutParams) feedBackButtonB.getLayoutParams();
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (layoutParams == null) {
                layoutParams = new RelativeLayout.LayoutParams(com.anythink.expressad.foundation.f.b.a, com.anythink.expressad.foundation.f.b.b);
            }
            layoutParams.topMargin = t.b(n.a().f(), 10.0f);
            layoutParams.leftMargin = t.b(n.a().f(), 10.0f);
            ViewGroup viewGroup = (ViewGroup) feedBackButtonB.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(feedBackButtonB);
            }
            this.e.addView(feedBackButtonB, layoutParams);
        }
        this.d.l(this.k);
        com.anythink.expressad.foundation.f.b.a().a(this.k, this.d);
    }

    public final void a(com.anythink.expressad.splash.d.d dVar) {
        this.f = dVar;
    }

    public final void a(boolean z) {
        this.h = z;
        this.n = z ? this.o : this.q;
    }

    public final String b() {
        com.anythink.expressad.foundation.d.c cVar = this.d;
        return (cVar == null || cVar.Z() == null) ? "" : this.d.Z();
    }

    public final void c() {
        Handler handler = this.a;
        if (handler != null) {
            handler.removeMessages(1);
            this.a.removeMessages(2);
        }
        if (this.f != null) {
            this.f = null;
        }
        if (this.x != null) {
            this.x = null;
        }
        if (this.v != null) {
            this.v = null;
        }
        ATSplashView aTSplashView = this.e;
        if (aTSplashView != null) {
            aTSplashView.destroy();
        }
        com.anythink.expressad.foundation.f.b.a().c(this.k);
    }

    public final void d() {
        Handler handler;
        if (this.r || com.anythink.expressad.foundation.f.b.c) {
            return;
        }
        if (this.m > 0 && (handler = this.a) != null) {
            handler.removeMessages(1);
            this.a.sendEmptyMessageDelayed(1, 1000L);
        }
        ATSplashView aTSplashView = this.e;
        if (aTSplashView != null) {
            aTSplashView.onResume();
            ATSplashWebview splashWebview = this.e.getSplashWebview();
            if (splashWebview == null || splashWebview.isDestroyed()) {
                return;
            }
            SplashJsUtils.sendEventToH5(splashWebview, SplashJsUtils.b, "");
        }
    }

    public final void e() {
        Handler handler;
        if (this.m > 0 && (handler = this.a) != null) {
            handler.removeMessages(1);
        }
        ATSplashView aTSplashView = this.e;
        if (aTSplashView != null) {
            aTSplashView.onPause();
            ATSplashWebview splashWebview = this.e.getSplashWebview();
            if (splashWebview == null || splashWebview.isDestroyed()) {
                return;
            }
            SplashJsUtils.sendEventToH5(splashWebview, SplashJsUtils.a, "");
        }
    }
}
