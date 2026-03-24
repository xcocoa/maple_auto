package com.anythink.basead.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewGroup;
import com.anythink.basead.c.e;
import com.anythink.basead.c.f;
import com.anythink.basead.e.b;
import com.anythink.basead.e.h;
import com.anythink.basead.e.i;
import com.anythink.core.api.BaseAd;
import com.anythink.core.basead.a;
import com.anythink.core.basead.b.c;
import com.anythink.core.common.b;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.af;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.x;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
public class BaseATActivity extends Activity {
    public static final String a = BaseATActivity.class.getSimpleName();
    private BaseAd A;
    public boolean b;
    public af c;
    public long d = 0;
    public long e = 0;
    public float f = 0.0f;
    public boolean g = false;
    public boolean h = false;
    public b.a i = new b.a() { // from class: com.anythink.basead.ui.BaseATActivity.1
        @Override // com.anythink.core.common.b.a
        public final void a(Object obj) {
            if (!(obj instanceof af) || BaseATActivity.this.p == null) {
                return;
            }
            af afVar = (af) obj;
            if (afVar.a().F().equals(BaseATActivity.this.p.F())) {
                BaseATActivity baseATActivity = BaseATActivity.this;
                if (baseATActivity.b) {
                    afVar.a(baseATActivity);
                } else {
                    baseATActivity.c = afVar;
                }
            }
        }
    };
    public h j;
    public long k;
    public long l;
    public long m;
    private BaseScreenATView n;
    private m o;
    private l p;
    private String q;
    private b.AbstractC0061b r;
    private String s;
    private int t;
    private int u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y;
    private boolean z;

    /* JADX INFO: renamed from: com.anythink.basead.ui.BaseATActivity$2, reason: invalid class name */
    public class AnonymousClass2 extends h {
        public String a = "1";

        public AnonymousClass2() {
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a() {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.a();
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a(e eVar) {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.a(eVar);
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a(i iVar) {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.a(iVar);
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void a(boolean z) {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.a(z);
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void b() {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.b();
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void b(i iVar) {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.b(iVar);
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void c() {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.c();
            }
        }

        @Override // com.anythink.basead.e.b.AbstractC0061b
        public final void d() {
            if (BaseATActivity.this.r != null) {
                BaseATActivity.this.r.a(e());
                BaseATActivity.this.r.d();
            }
            BaseATActivity.this.finish();
            if (BaseATActivity.this.z) {
                BaseATActivity.this.overridePendingTransition(0, 0);
            }
        }

        @Override // com.anythink.basead.e.h
        public final void f() {
            this.a = "1";
            BaseATActivity.this.a("4", 0L);
        }

        @Override // com.anythink.basead.e.h
        public final void g() {
            if (TextUtils.equals(this.a, "1")) {
                this.a = "2";
            }
            BaseATActivity baseATActivity = BaseATActivity.this;
            StringBuilder sb = new StringBuilder("5-");
            BaseATActivity baseATActivity2 = BaseATActivity.this;
            sb.append(baseATActivity2.l - baseATActivity2.m <= 0 ? "2" : "1");
            baseATActivity.a(sb.toString(), 0L);
        }

        @Override // com.anythink.basead.e.h
        public final void h() {
            if (TextUtils.equals(this.a, "1")) {
                this.a = "3";
                BaseATActivity baseATActivity = BaseATActivity.this;
                StringBuilder sb = new StringBuilder("6-");
                BaseATActivity baseATActivity2 = BaseATActivity.this;
                sb.append(baseATActivity2.l - baseATActivity2.m <= 0 ? "2" : "1");
                baseATActivity.a(sb.toString(), 0L);
            }
        }

        @Override // com.anythink.basead.e.h
        public final String i() {
            return this.a;
        }
    }

    private void a() {
        Intent intent = getIntent();
        try {
            if (intent == null) {
                Log.e("anythink", a + " Intent is null.");
                return;
            }
            this.s = intent.getStringExtra("extra_scenario");
            this.t = intent.getIntExtra(a.C0081a.b, 1);
            this.p = (l) intent.getSerializableExtra(a.C0081a.c);
            this.o = (m) intent.getSerializableExtra(a.C0081a.e);
            this.q = intent.getStringExtra(a.C0081a.d);
            this.z = a(this.t, this.o);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(Activity activity, c cVar) {
        Context context;
        Intent intent = new Intent();
        Context contextF = n.a().f();
        if (activity != null) {
            boolean zIsFinishing = activity.isFinishing();
            context = activity;
            if (zIsFinishing) {
                Log.i("anythink_BaseATActivity", "Activity is null");
                context = contextF;
            }
        }
        boolean zA = a(cVar.a, cVar.h);
        intent.setClass(context, cVar.e == 2 ? zA ? ATLandscapeTranslucentActivity.class : ATLandscapeActivity.class : zA ? ATPortraitTranslucentActivity.class : ATPortraitActivity.class);
        intent.putExtra("extra_scenario", cVar.b);
        intent.putExtra(a.C0081a.b, cVar.a);
        intent.putExtra(a.C0081a.c, cVar.c);
        intent.putExtra(a.C0081a.d, cVar.d);
        intent.putExtra(a.C0081a.e, cVar.h);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        try {
            context.startActivity(intent);
        } catch (Throwable th) {
            b.AbstractC0061b abstractC0061bA = com.anythink.basead.e.b.a().a(cVar.d);
            if (abstractC0061bA != null) {
                abstractC0061bA.a(f.a("10000", th.getMessage()));
            }
        }
    }

    private void a(Bundle bundle) {
        if (bundle != null) {
            this.v = bundle.getBoolean(a.C0081a.f);
            this.w = bundle.getBoolean(a.C0081a.g);
            this.x = bundle.getBoolean(a.C0081a.h);
            this.y = bundle.getBoolean(a.C0081a.k);
            this.d = bundle.getLong(a.C0081a.m);
            this.e = bundle.getLong(a.C0081a.n);
            this.f = bundle.getFloat(a.C0081a.o);
            this.g = bundle.getBoolean(a.C0081a.i, false);
            this.h = bundle.getBoolean(a.C0081a.p, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, long j) {
        String string;
        String string2;
        l lVar = this.p;
        if (lVar == null || lVar.d() == 10) {
            return;
        }
        try {
            m mVar = this.o;
            String str2 = mVar != null ? mVar.d : "";
            String str3 = mVar != null ? mVar.b : "";
            String str4 = mVar != null ? mVar.c : "";
            if (mVar != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.o.j);
                string = sb.toString();
            } else {
                string = "";
            }
            if (this.o != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.o.f);
                string2 = sb2.toString();
            } else {
                string2 = "";
            }
            l lVar2 = this.p;
            int iD = lVar2 != null ? lVar2.d() : -1;
            l lVar3 = this.p;
            String strT = lVar3 != null ? lVar3.t() : "";
            l lVar4 = this.p;
            com.anythink.core.common.n.e.a(str, str2, str3, str4, string, string2, iD, 0, strT, lVar4 instanceof j ? ((j) lVar4).ad() : "", com.anythink.basead.d.c.b.a(this.o, this.p), j);
        } catch (Throwable unused) {
        }
    }

    private static boolean a(int i, m mVar) {
        com.anythink.core.common.f.n nVar;
        if (mVar == null || (nVar = mVar.n) == null || i != 3) {
            return false;
        }
        return TextUtils.equals("2", nVar.K());
    }

    private BaseScreenATView b() {
        return this.t != 3 ? new FullScreenATView(this, this.o, this.p, this.s, this.t, this.u) : this.A != null ? new ThirdPartyFullScreenATView(this, this.o, this.p, this.s, this.t, this.u, this.A) : this.z ? (this.o.n.an() == 1 && this.u == 1) ? new LetterHalfScreenATView(this, this.o, this.p, this.s, this.t, this.u) : new HalfScreenATView(this, this.o, this.p, this.s, this.t, this.u) : (this.o.n.an() == 1 && this.u == 1) ? new LetterFullScreenATView(this, this.o, this.p, this.s, this.t, this.u) : new FullScreenATView(this, this.o, this.p, this.s, this.t, this.u);
    }

    private void b(Bundle bundle) {
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.j = anonymousClass2;
        this.n.setListener(anonymousClass2);
        if (bundle != null) {
            this.v = bundle.getBoolean(a.C0081a.f);
            this.w = bundle.getBoolean(a.C0081a.g);
            this.x = bundle.getBoolean(a.C0081a.h);
            this.y = bundle.getBoolean(a.C0081a.k);
            this.d = bundle.getLong(a.C0081a.m);
            this.e = bundle.getLong(a.C0081a.n);
            this.f = bundle.getFloat(a.C0081a.o);
            this.g = bundle.getBoolean(a.C0081a.i, false);
            this.h = bundle.getBoolean(a.C0081a.p, false);
        }
        this.n.setIsShowEndCard(this.v);
        this.n.setHideFeedbackButton(this.w);
        this.n.setHasReward(this.y);
        if (bundle != null) {
            this.n.setVideoMute(this.x);
            this.n.setShowBannerTime(this.d);
            this.n.setHideBannerTime(this.e);
            this.n.setCloseButtonScaleFactor(this.f);
            this.n.setHasPerformClick(this.g);
            this.n.setShowingEndCardAfterVideoPlay(this.h);
        }
        try {
            this.n.init();
        } catch (Throwable th) {
            th.printStackTrace();
            try {
                b.AbstractC0061b abstractC0061b = this.r;
                if (abstractC0061b != null) {
                    abstractC0061b.a(f.a(f.k, com.anythink.core.common.o.i.a(th.getStackTrace())));
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            finish();
        }
    }

    private void c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mCalled");
            declaredField.setAccessible(true);
            declaredField.setBoolean(this, true);
        } catch (Throwable unused) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        BaseScreenATView baseScreenATView = this.n;
        if (baseScreenATView != null) {
            baseScreenATView.onActivityResult(i, i2, intent);
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (n.a().f() == null) {
            n.a().a(getApplicationContext());
        }
        if (this instanceof ATLandscapeActivity) {
            this.u = 2;
        } else {
            this.u = 1;
        }
        Intent intent = getIntent();
        try {
            if (intent != null) {
                this.s = intent.getStringExtra("extra_scenario");
                this.t = intent.getIntExtra(a.C0081a.b, 1);
                this.p = (l) intent.getSerializableExtra(a.C0081a.c);
                this.o = (m) intent.getSerializableExtra(a.C0081a.e);
                this.q = intent.getStringExtra(a.C0081a.d);
                this.z = a(this.t, this.o);
            } else {
                Log.e("anythink", a + " Intent is null.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.r = com.anythink.basead.e.b.a().a(this.q);
        this.A = com.anythink.basead.d.i.a().a(this.q);
        a("1", 0L);
        m mVar = this.o;
        if (mVar == null || mVar.n == null) {
            StringBuilder sb = new StringBuilder();
            String str = a;
            sb.append(str);
            sb.append("Start Screen Ad Error.");
            Log.e("anythink", sb.toString());
            try {
                b.AbstractC0061b abstractC0061b = this.r;
                if (abstractC0061b != null) {
                    abstractC0061b.a(f.a(f.k, str + "Start FullScreen Ad Error."));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            finish();
            return;
        }
        if (this.p == null) {
            StringBuilder sb2 = new StringBuilder();
            String str2 = a;
            sb2.append(str2);
            sb2.append(" onCreate: OfferAd = null");
            Log.e("anythink", sb2.toString());
            try {
                b.AbstractC0061b abstractC0061b2 = this.r;
                if (abstractC0061b2 != null) {
                    abstractC0061b2.a(f.a(f.k, str2 + " onCreate: OfferAd = null"));
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
            finish();
            return;
        }
        com.anythink.core.common.b.a().a("1", this.i);
        this.n = this.t != 3 ? new FullScreenATView(this, this.o, this.p, this.s, this.t, this.u) : this.A != null ? new ThirdPartyFullScreenATView(this, this.o, this.p, this.s, this.t, this.u, this.A) : this.z ? (this.o.n.an() == 1 && this.u == 1) ? new LetterHalfScreenATView(this, this.o, this.p, this.s, this.t, this.u) : new HalfScreenATView(this, this.o, this.p, this.s, this.t, this.u) : (this.o.n.an() == 1 && this.u == 1) ? new LetterFullScreenATView(this, this.o, this.p, this.s, this.t, this.u) : new FullScreenATView(this, this.o, this.p, this.s, this.t, this.u);
        BaseAd baseAd = this.A;
        ViewGroup customAdContainer = baseAd != null ? baseAd.getCustomAdContainer() : null;
        if (customAdContainer != null) {
            customAdContainer.addView(this.n);
            x.a(customAdContainer);
        } else {
            customAdContainer = this.n;
        }
        setContentView(customAdContainer);
        AnonymousClass2 anonymousClass2 = new AnonymousClass2();
        this.j = anonymousClass2;
        this.n.setListener(anonymousClass2);
        if (bundle != null) {
            this.v = bundle.getBoolean(a.C0081a.f);
            this.w = bundle.getBoolean(a.C0081a.g);
            this.x = bundle.getBoolean(a.C0081a.h);
            this.y = bundle.getBoolean(a.C0081a.k);
            this.d = bundle.getLong(a.C0081a.m);
            this.e = bundle.getLong(a.C0081a.n);
            this.f = bundle.getFloat(a.C0081a.o);
            this.g = bundle.getBoolean(a.C0081a.i, false);
            this.h = bundle.getBoolean(a.C0081a.p, false);
        }
        this.n.setIsShowEndCard(this.v);
        this.n.setHideFeedbackButton(this.w);
        this.n.setHasReward(this.y);
        if (bundle != null) {
            this.n.setVideoMute(this.x);
            this.n.setShowBannerTime(this.d);
            this.n.setHideBannerTime(this.e);
            this.n.setCloseButtonScaleFactor(this.f);
            this.n.setHasPerformClick(this.g);
            this.n.setShowingEndCardAfterVideoPlay(this.h);
        }
        try {
            this.n.init();
        } catch (Throwable th3) {
            th3.printStackTrace();
            try {
                b.AbstractC0061b abstractC0061b3 = this.r;
                if (abstractC0061b3 != null) {
                    abstractC0061b3.a(f.a(f.k, com.anythink.core.common.o.i.a(th3.getStackTrace())));
                }
            } catch (Throwable th4) {
                th4.printStackTrace();
            }
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        this.c = null;
        this.j = null;
        com.anythink.core.common.b.a().b("1", this.i);
        BaseScreenATView baseScreenATView = this.n;
        if (baseScreenATView != null) {
            baseScreenATView.u();
        }
        l lVar = this.p;
        if (lVar != null && lVar.I() && !this.p.P()) {
            com.anythink.core.common.a.l.a().b();
        }
        if (this.o != null) {
            com.anythink.core.common.n.a.a().a(this.o.d + this.o.c);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (4 == i) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        long j = this.m + 1;
        this.m = j;
        if (j <= 5) {
            StringBuilder sb = new StringBuilder("3-");
            h hVar = this.j;
            sb.append(hVar != null ? hVar.i() : "0");
            a(sb.toString(), SystemClock.elapsedRealtime() - this.k);
        }
        this.b = false;
        BaseScreenATView baseScreenATView = this.n;
        if (baseScreenATView != null) {
            baseScreenATView.t();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        if (Build.VERSION.SDK_INT < 29) {
            try {
                try {
                    super.onResume();
                } catch (Throwable unused) {
                    finish();
                }
            } catch (Throwable unused2) {
                Field declaredField = Activity.class.getDeclaredField("mCalled");
                declaredField.setAccessible(true);
                declaredField.setBoolean(this, true);
            }
        } else {
            super.onResume();
        }
        this.k = SystemClock.elapsedRealtime();
        long j = this.l + 1;
        this.l = j;
        if (j <= 5) {
            StringBuilder sb = new StringBuilder("2-");
            h hVar = this.j;
            sb.append(hVar != null ? hVar.i() : "0");
            a(sb.toString(), 0L);
        }
        this.b = true;
        BaseScreenATView baseScreenATView = this.n;
        if (baseScreenATView != null) {
            baseScreenATView.s();
        }
        af afVar = this.c;
        if (afVar != null) {
            afVar.a(this);
            this.c = null;
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        BaseScreenATView baseScreenATView = this.n;
        if (baseScreenATView != null) {
            if (baseScreenATView.isShowEndCard()) {
                bundle.putBoolean(a.C0081a.f, true);
            }
            bundle.putBoolean(a.C0081a.g, this.n.needHideFeedbackButton());
            bundle.putBoolean(a.C0081a.h, this.n.isVideoMute());
            bundle.putBoolean(a.C0081a.k, this.n.hasReward());
            bundle.putLong(a.C0081a.m, this.n.getShowBannerTime());
            bundle.putLong(a.C0081a.n, this.n.getHideBannerTime());
            bundle.putFloat(a.C0081a.o, this.n.getCloseButtonScaleFactor());
            bundle.putBoolean(a.C0081a.i, this.n.getHasPerformClick());
            bundle.putBoolean(a.C0081a.p, this.n.isShowingEndCardAfterVideoPlay());
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (Build.VERSION.SDK_INT == 26) {
            super.setTheme(com.anythink.core.common.o.i.a(this, "myoffer_half_screen_fit_by_o", com.anythink.expressad.foundation.h.i.e));
        } else {
            super.setTheme(i);
        }
    }
}
