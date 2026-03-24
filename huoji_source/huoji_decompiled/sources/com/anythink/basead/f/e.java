package com.anythink.basead.f;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.anythink.basead.a.b;
import com.anythink.basead.e.i;
import com.anythink.basead.ui.b.b;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.z;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e extends c {
    public com.anythink.basead.e.a a;
    public com.anythink.core.common.o.a.c k;
    public com.anythink.basead.a.b l;
    public View m;
    public volatile boolean n;
    public View o;
    public View.OnClickListener p;
    public View.OnClickListener q;
    public com.anythink.basead.ui.b.a r;
    private final String s;

    /* JADX INFO: renamed from: com.anythink.basead.f.e$4, reason: invalid class name */
    public class AnonymousClass4 extends com.anythink.core.common.o.a.a {
        public AnonymousClass4() {
        }

        @Override // com.anythink.core.common.o.a.a, com.anythink.core.common.o.a.b
        public final void recordImpression(View view) {
            e.this.r();
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.f.e$5, reason: invalid class name */
    public class AnonymousClass5 implements b.a {
        public AnonymousClass5() {
        }

        @Override // com.anythink.basead.ui.b.b.a
        public final void a(int i, int i2) {
            e.this.a(i, i2, false);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.f.e$6, reason: invalid class name */
    public class AnonymousClass6 extends com.anythink.basead.ui.b.a {
        public AnonymousClass6(ViewGroup viewGroup, l lVar, m mVar, b.a aVar) {
            super(viewGroup, lVar, mVar, 5, aVar);
        }

        @Override // com.anythink.basead.ui.b.a
        public final ViewGroup.LayoutParams a() {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            if (e.this.m != null) {
                layoutParams.gravity = 81;
                layoutParams.setMargins(0, 0, 0, 0);
            }
            return layoutParams;
        }
    }

    public e(Context context, m mVar, String str, boolean z) {
        super(context, mVar, str, z);
        this.s = getClass().getSimpleName();
        this.p = new View.OnClickListener() { // from class: com.anythink.basead.f.e.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e.this.a(view, false);
            }
        };
        this.q = new View.OnClickListener() { // from class: com.anythink.basead.f.e.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                e.this.a(view, true);
            }
        };
    }

    private void a(int i) {
        com.anythink.basead.ui.b.a aVar = this.r;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    private void a(int i, int i2) {
        a(i, i2, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final int i2, boolean z) {
        r();
        if (this.l == null) {
            this.l = new com.anythink.basead.a.b(this.c, this.d, this.g);
        }
        if (this.l.a()) {
            return;
        }
        this.l.a(new b.InterfaceC0048b() { // from class: com.anythink.basead.f.e.3
            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void a() {
                com.anythink.basead.e.a aVar = e.this.a;
                if (aVar != null) {
                    aVar.onAdClick(new i().a(i, i2));
                }
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void a(boolean z3) {
                com.anythink.basead.e.a aVar = e.this.a;
                if (aVar != null) {
                    aVar.onDeeplinkCallback(z3);
                }
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
                return false;
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void b() {
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void c() {
            }
        });
        com.anythink.basead.c.i iVar = new com.anythink.basead.c.i(this.d.d, "");
        if (z) {
            iVar.k = true;
        }
        this.l.a(iVar);
        a(113);
    }

    private void a(View view) {
        z zVar;
        m mVar;
        this.m = view;
        if (view != null && (view instanceof ViewGroup) && (zVar = this.g) != null && (mVar = this.d) != null) {
            this.r = new AnonymousClass6((ViewGroup) view, zVar, mVar, new AnonymousClass5());
        }
        AnonymousClass4 anonymousClass4 = new AnonymousClass4();
        if (this.k == null) {
            view.getContext();
            this.k = new com.anythink.core.common.o.a.c();
        }
        this.k.a(view, anonymousClass4);
    }

    private void a(View view, View.OnClickListener onClickListener) {
        if (!(view instanceof ViewGroup)) {
            view.setOnClickListener(onClickListener);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            a(viewGroup.getChildAt(i), onClickListener);
        }
    }

    private void a(View view, View[] viewArr) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(viewGroup.getChildAt(i), viewArr);
            }
            return;
        }
        if ((view instanceof Button) || (view instanceof TextView)) {
            String string = ((TextView) view).getText().toString();
            if (TextUtils.isEmpty(string) || !TextUtils.equals(string, g())) {
                return;
            }
            viewArr[0] = view;
        }
    }

    public static View k() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (this.n) {
            return;
        }
        a(114);
        this.n = true;
        com.anythink.basead.f.a.b.a(this.c).a(this.g);
        com.anythink.basead.a.a.a(8, this.g, new com.anythink.basead.c.i(this.d.d, ""));
        com.anythink.basead.e.a aVar = this.a;
        if (aVar != null) {
            aVar.onAdShow(new i());
        }
    }

    private void s() {
        z zVar;
        m mVar;
        View view = this.m;
        if (view == null || !(view instanceof ViewGroup) || (zVar = this.g) == null || (mVar = this.d) == null) {
            return;
        }
        this.r = new AnonymousClass6((ViewGroup) view, zVar, mVar, new AnonymousClass5());
    }

    private int t() {
        z zVar = this.g;
        if (zVar != null) {
            return zVar.W();
        }
        return 0;
    }

    private int u() {
        z zVar = this.g;
        if (zVar != null) {
            return zVar.X();
        }
        return 0;
    }

    @Override // com.anythink.basead.f.a
    public final void a(Activity activity, Map<String, Object> map) {
    }

    public final void a(View view, List<View> list, List<View> list2) {
        z zVar;
        m mVar;
        this.m = view;
        if (view != null && (view instanceof ViewGroup) && (zVar = this.g) != null && (mVar = this.d) != null) {
            this.r = new AnonymousClass6((ViewGroup) view, zVar, mVar, new AnonymousClass5());
        }
        AnonymousClass4 anonymousClass4 = new AnonymousClass4();
        if (this.k == null) {
            view.getContext();
            this.k = new com.anythink.core.common.o.a.c();
        }
        this.k.a(view, anonymousClass4);
        if (list == null || list.size() <= 0) {
            a(view, this.p);
        } else {
            View[] viewArr = new View[1];
            a(view, viewArr);
            if (viewArr[0] != null) {
                this.o = viewArr[0];
            }
            for (View view2 : list) {
                if (view2 != null) {
                    view2.setOnClickListener(this.p);
                }
            }
        }
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        for (View view3 : list2) {
            if (view3 != null) {
                view3.setOnClickListener(this.q);
            }
        }
    }

    public final void a(View view, boolean z) {
        View view2 = this.o;
        if (view2 != null && view == view2) {
            a(1, 1, z);
        } else {
            View view3 = this.m;
            a(1, (view3 == null || view != view3) ? 2 : 3, z);
        }
    }

    public final void a(com.anythink.basead.e.a aVar) {
        this.a = aVar;
    }

    public final String b() {
        z zVar = this.g;
        return zVar != null ? zVar.v() : "";
    }

    public final String f() {
        z zVar = this.g;
        return zVar != null ? zVar.w() : "";
    }

    public final String g() {
        z zVar = this.g;
        return zVar != null ? zVar.A() : "";
    }

    public final String h() {
        z zVar = this.g;
        return zVar != null ? zVar.x() : "";
    }

    public final String i() {
        z zVar = this.g;
        return zVar != null ? zVar.y() : "";
    }

    public final String j() {
        z zVar = this.g;
        return zVar != null ? zVar.z() : "";
    }

    public final int l() {
        z zVar = this.g;
        if (zVar != null) {
            return zVar.W();
        }
        return 0;
    }

    public final int m() {
        z zVar = this.g;
        if (zVar != null) {
            return zVar.X();
        }
        return 0;
    }

    public final void n() {
        com.anythink.core.common.o.a.c cVar = this.k;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final void o() {
        n();
        a(112);
        this.a = null;
        com.anythink.basead.a.b bVar = this.l;
        if (bVar != null) {
            bVar.d();
            this.l = null;
        }
        com.anythink.core.common.o.a.c cVar = this.k;
        if (cVar != null) {
            cVar.b();
            this.k = null;
        }
    }

    public final int p() {
        z zVar = this.g;
        if (zVar != null) {
            return zVar.H();
        }
        return 0;
    }

    public final int q() {
        z zVar = this.g;
        if (zVar != null) {
            return zVar.V();
        }
        return 0;
    }
}
