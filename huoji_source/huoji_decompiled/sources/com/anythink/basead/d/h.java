package com.anythink.basead.d;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.anythink.basead.a.b;
import com.anythink.basead.ui.BaseMediaATView;
import com.anythink.basead.ui.MediaATView;
import com.anythink.basead.ui.MraidMediaView;
import com.anythink.basead.ui.OwnNativeATView;
import com.anythink.basead.ui.SimpleMediaATView;
import com.anythink.basead.ui.b.b;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ai;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.j;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.expressad.advanced.view.ATOutNativeAdvancedViewGroup;
import com.anythink.expressad.out.o;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class h {
    public Context a;
    public com.anythink.basead.e.a b;
    public com.anythink.core.common.o.a.c c;
    public com.anythink.basead.a.b d;
    public View e;
    public volatile boolean f;
    public aj g;
    public m h;
    public boolean i;
    public boolean j;
    public String k;
    public com.anythink.expressad.advanced.d.c l;
    public BaseMediaATView m;
    public View n;
    public int q;
    public int r;
    public com.anythink.basead.ui.b.a s;
    public OwnNativeATView t;
    private final String u = getClass().getSimpleName();
    public View.OnClickListener o = new View.OnClickListener() { // from class: com.anythink.basead.d.h.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            h.this.a(view, false);
        }
    };
    public View.OnClickListener p = new View.OnClickListener() { // from class: com.anythink.basead.d.h.2
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            h.this.a(view, true);
        }
    };

    /* JADX INFO: renamed from: com.anythink.basead.d.h$7, reason: invalid class name */
    public class AnonymousClass7 implements b.a {
        public AnonymousClass7() {
        }

        @Override // com.anythink.basead.ui.b.b.a
        public final void a(int i, int i2) {
            h hVar = h.this;
            hVar.a(h.b(hVar), i, i2);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.h$8, reason: invalid class name */
    public class AnonymousClass8 extends com.anythink.basead.ui.b.a {
        public AnonymousClass8(ViewGroup viewGroup, l lVar, m mVar, int i, b.a aVar) {
            super(viewGroup, lVar, mVar, i, aVar);
        }

        @Override // com.anythink.basead.ui.b.a
        public final ViewGroup.LayoutParams a() {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            if (h.this.t != null) {
                layoutParams.gravity = 81;
                layoutParams.setMargins(0, 0, 0, 0);
            }
            return layoutParams;
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.d.h$9, reason: invalid class name */
    public class AnonymousClass9 implements OwnNativeATView.a {
        public AnonymousClass9() {
        }

        @Override // com.anythink.basead.ui.OwnNativeATView.a
        public final void a() {
            h.this.b(110);
        }

        @Override // com.anythink.basead.ui.OwnNativeATView.a
        public final void b() {
            h.this.b(111);
        }
    }

    public static class a implements BaseMediaATView.a {
        private final BaseMediaATView.a a;

        public a(BaseMediaATView.a aVar) {
            this.a = aVar;
        }

        @Override // com.anythink.basead.ui.BaseMediaATView.a
        public final void onClickCloseView() {
            BaseMediaATView.a aVar = this.a;
            if (aVar != null) {
                aVar.onClickCloseView();
            }
        }
    }

    public h(Context context, aj ajVar, m mVar, com.anythink.core.common.a.i iVar, boolean z) {
        this.a = context.getApplicationContext();
        this.g = ajVar;
        this.h = mVar;
        this.i = z;
        if (iVar instanceof com.anythink.expressad.advanced.d.c) {
            com.anythink.expressad.advanced.d.c cVar = (com.anythink.expressad.advanced.d.c) iVar;
            this.l = cVar;
            cVar.a(new o() { // from class: com.anythink.basead.d.h.4
                @Override // com.anythink.expressad.out.o
                public final void a() {
                }

                @Override // com.anythink.expressad.out.o
                public final void a(com.anythink.expressad.foundation.d.c cVar2) {
                    Context contextF = n.a().f();
                    h hVar = h.this;
                    if (hVar.d == null) {
                        hVar.d = new com.anythink.basead.a.b(contextF, hVar.h, hVar.g);
                        h.this.d.a(new b.InterfaceC0048b() { // from class: com.anythink.basead.d.h.4.1
                            @Override // com.anythink.basead.a.b.InterfaceC0048b
                            public final void a() {
                                com.anythink.basead.e.a aVar = h.this.b;
                                if (aVar != null) {
                                    aVar.onAdClick(new com.anythink.basead.e.i().a(1, 13));
                                }
                            }

                            @Override // com.anythink.basead.a.b.InterfaceC0048b
                            public final void a(boolean z3) {
                                com.anythink.basead.e.a aVar = h.this.b;
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
                    }
                    com.anythink.basead.d.a.b.a(h.this.d.b(), cVar2);
                    com.anythink.expressad.advanced.d.c cVar3 = h.this.l;
                    ATOutNativeAdvancedViewGroup aTOutNativeAdvancedViewGroupC = cVar3 != null ? cVar3.c() : null;
                    com.anythink.basead.c.i iVar2 = new com.anythink.basead.c.i(h.this.h.d, "");
                    if (aTOutNativeAdvancedViewGroupC != null) {
                        iVar2.f = aTOutNativeAdvancedViewGroupC.getHeight();
                        iVar2.e = aTOutNativeAdvancedViewGroupC.getWidth();
                    }
                    iVar2.g = new com.anythink.basead.c.a();
                    h.this.d.a(iVar2);
                }

                @Override // com.anythink.expressad.out.o
                public final void a(String str) {
                }

                @Override // com.anythink.expressad.out.o
                public final void b() {
                    com.anythink.basead.e.a aVar = h.this.b;
                    if (aVar != null) {
                        aVar.onAdShow(new com.anythink.basead.e.i());
                    }
                }

                @Override // com.anythink.expressad.out.o
                public final void c() {
                }

                @Override // com.anythink.expressad.out.o
                public final void d() {
                }

                @Override // com.anythink.expressad.out.o
                public final void e() {
                }

                @Override // com.anythink.expressad.out.o
                public final void f() {
                    com.anythink.basead.e.a aVar = h.this.b;
                    if (aVar != null) {
                        aVar.onAdClosed();
                    }
                }
            });
        }
    }

    private void A() {
        OwnNativeATView ownNativeATView;
        aj ajVar;
        m mVar;
        if (this.l != null || (ownNativeATView = this.t) == null || (ajVar = this.g) == null || (mVar = this.h) == null) {
            return;
        }
        this.s = new AnonymousClass8(ownNativeATView, ajVar, mVar, this.i ? 5 : 6, new AnonymousClass7());
        this.t.setLifeCallback(new AnonymousClass9());
    }

    private static int a(int i) {
        Random random = new Random();
        if (i <= 0) {
            return 0;
        }
        double d = i;
        int i2 = (int) (0.1d * d);
        return random.nextInt((((int) (d * 0.9d)) - i2) + 1) + i2;
    }

    private View a(Context context, l lVar, com.anythink.core.common.f.n nVar) {
        SimpleMediaATView simpleMediaATView = new SimpleMediaATView(context);
        simpleMediaATView.initView(lVar);
        if (nVar != null && nVar.D() != 1) {
            simpleMediaATView.setOnClickListener(this.o);
        }
        return simpleMediaATView;
    }

    private View a(Context context, boolean z, boolean z3, BaseMediaATView.a aVar) {
        a aVar2 = new a(aVar);
        OwnNativeATView ownNativeATView = new OwnNativeATView(this.a);
        this.t = ownNativeATView;
        if (z) {
            MraidMediaView mraidMediaView = new MraidMediaView(context, this.g, this.h, z3, aVar2);
            this.m = mraidMediaView;
            mraidMediaView.setMraidWebViewListener(new MraidMediaView.a() { // from class: com.anythink.basead.d.h.5
                @Override // com.anythink.basead.ui.MraidMediaView.a
                public final void a() {
                    h hVar = h.this;
                    OwnNativeATView ownNativeATView2 = hVar.t;
                    if (ownNativeATView2 != null) {
                        hVar.a(ownNativeATView2);
                    }
                }

                @Override // com.anythink.basead.ui.MraidMediaView.a
                public final void a(String str) {
                    aj ajVar = h.this.g;
                    if (ajVar != null) {
                        ajVar.w(str);
                    }
                    h hVar = h.this;
                    hVar.a(hVar.m, 1, 13);
                }
            });
        } else {
            this.m = new MediaATView(context, this.g, this.h, z3, aVar2);
        }
        this.m.init(this.q, this.r);
        ownNativeATView.addView(this.m, new FrameLayout.LayoutParams(this.m.getMediaViewWidth(), this.m.getMediaViewHeight()));
        a(ownNativeATView, this.m.getClickViews());
        return ownNativeATView;
    }

    private void a(View view, final int i, final int i2, boolean z) {
        if (this.t != null) {
            y();
            if (this.d == null) {
                this.d = new com.anythink.basead.a.b(n.a().f(), this.h, this.g);
            }
            if (this.d.a()) {
                return;
            }
            this.d.a(new b.InterfaceC0048b() { // from class: com.anythink.basead.d.h.3
                @Override // com.anythink.basead.a.b.InterfaceC0048b
                public final void a() {
                    com.anythink.basead.e.a aVar = h.this.b;
                    if (aVar != null) {
                        aVar.onAdClick(new com.anythink.basead.e.i().a(i, i2));
                    }
                }

                @Override // com.anythink.basead.a.b.InterfaceC0048b
                public final void a(boolean z3) {
                    com.anythink.basead.e.a aVar = h.this.b;
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
                    BaseMediaATView baseMediaATView = h.this.m;
                    if (baseMediaATView != null) {
                        baseMediaATView.notifyClick();
                    }
                }

                @Override // com.anythink.basead.a.b.InterfaceC0048b
                public final void c() {
                }
            });
            com.anythink.basead.c.i iVar = new com.anythink.basead.c.i(this.h.d, "");
            iVar.f = this.t.getHeight();
            iVar.e = this.t.getWidth();
            iVar.g = i == 1 ? this.t.getAdClickRecord() : b(view);
            if (z) {
                iVar.k = true;
            }
            this.d.a(iVar);
            b(113);
        }
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

    private void a(View view, List<View> list) {
        a(view, list, (List<View>) null);
    }

    private void a(View view, View[] viewArr) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(viewGroup.getChildAt(i), viewArr);
            }
            return;
        }
        if (((view instanceof Button) || (view instanceof TextView)) && TextUtils.equals(((TextView) view).getText().toString(), this.g.A())) {
            viewArr[0] = view;
        }
    }

    private void a(OwnNativeATView[] ownNativeATViewArr, View view) {
        if (view instanceof ViewGroup) {
            if (view instanceof OwnNativeATView) {
                ownNativeATViewArr[0] = (OwnNativeATView) view;
            }
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                a(ownNativeATViewArr, viewGroup.getChildAt(i));
            }
        }
    }

    public static /* synthetic */ View b(h hVar) {
        View monitorClickView;
        BaseMediaATView baseMediaATView = hVar.m;
        if (baseMediaATView != null && (monitorClickView = baseMediaATView.getMonitorClickView()) != null) {
            hVar.n = monitorClickView;
            return monitorClickView;
        }
        View[] viewArr = new View[1];
        hVar.a(hVar.t, viewArr);
        if (viewArr[0] == null) {
            return hVar.t;
        }
        hVar.n = viewArr[0];
        return viewArr[0];
    }

    private static com.anythink.basead.c.a b(View view) {
        if (view == null) {
            return null;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        int width = view.getWidth();
        int height = view.getHeight();
        int iA = a(width);
        int iA2 = a(height);
        com.anythink.basead.c.a aVar = new com.anythink.basead.c.a();
        int i3 = i + iA;
        aVar.a = i3;
        aVar.b = i2 + iA2;
        aVar.e = iA;
        aVar.f = iA2;
        aVar.c = i3 + ((int) (Math.random() * 15.0d));
        int iRandom = aVar.b + ((int) (Math.random() * 15.0d));
        aVar.d = iRandom;
        aVar.g = aVar.c - i;
        aVar.h = iRandom - i2;
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        com.anythink.basead.ui.b.a aVar = this.s;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    private boolean c(View view) {
        String str;
        if (this.t == null) {
            OwnNativeATView[] ownNativeATViewArr = new OwnNativeATView[1];
            a(ownNativeATViewArr, view);
            if (ownNativeATViewArr[0] == null) {
                str = "Register View don't contain OwnNativeAdView.";
            } else if (ownNativeATViewArr[0].getChildCount() == 0) {
                str = "OwnNativeAdView View don't contain any child views.";
            } else {
                this.t = ownNativeATViewArr[0];
            }
            Log.i("anythink", str);
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y() {
        if (this.f) {
            return;
        }
        this.f = true;
        if (this.j && this.g.k()) {
            BaseMediaATView baseMediaATView = this.m;
            if (baseMediaATView instanceof MraidMediaView) {
                ((MraidMediaView) baseMediaATView).fireAudioVolumeChange(this.j);
            }
        }
        if (this.g instanceof ai) {
            com.anythink.basead.d.c.d dVarA = com.anythink.basead.d.c.d.a();
            Context context = this.a;
            m mVar = this.h;
            dVarA.a(context, com.anythink.basead.d.c.d.a(mVar.b, mVar.c), this.g, this.h.n);
        }
        com.anythink.expressad.advanced.d.c cVar = this.l;
        View viewC = cVar != null ? cVar.c() : this.t;
        if (this.g.k()) {
            viewC = this.m;
        }
        if (viewC != null) {
            com.anythink.basead.c.i iVar = new com.anythink.basead.c.i(this.h.d, "");
            iVar.f = viewC.getHeight();
            iVar.e = viewC.getWidth();
            com.anythink.basead.a.a.a(8, this.g, iVar);
            com.anythink.basead.e.a aVar = this.b;
            if (aVar != null) {
                aVar.onAdShow(new com.anythink.basead.e.i());
            }
        }
        b(114);
    }

    private View z() {
        View monitorClickView;
        BaseMediaATView baseMediaATView = this.m;
        if (baseMediaATView != null && (monitorClickView = baseMediaATView.getMonitorClickView()) != null) {
            this.n = monitorClickView;
            return monitorClickView;
        }
        View[] viewArr = new View[1];
        a(this.t, viewArr);
        if (viewArr[0] == null) {
            return this.t;
        }
        this.n = viewArr[0];
        return viewArr[0];
    }

    public final View a(Context context, boolean z, BaseMediaATView.a aVar) {
        com.anythink.expressad.advanced.d.c cVar = this.l;
        if (cVar != null) {
            cVar.a(z ? 1 : 0);
            return this.l.c();
        }
        aj ajVar = this.g;
        if (ajVar != null && ajVar.k() && this.i) {
            return a(context, true, z, aVar);
        }
        aj ajVar2 = this.g;
        if (ajVar2 == null || TextUtils.isEmpty(ajVar2.y())) {
            return null;
        }
        boolean z3 = this.i;
        if (z3 && (this.g instanceof j)) {
            return a(context, false, z, aVar);
        }
        if (!z3) {
            aj ajVar3 = this.g;
            if (ajVar3 instanceof j) {
                com.anythink.core.common.f.n nVar = this.h.n;
                SimpleMediaATView simpleMediaATView = new SimpleMediaATView(context);
                simpleMediaATView.initView(ajVar3);
                if (nVar != null && nVar.D() != 1) {
                    simpleMediaATView.setOnClickListener(this.o);
                }
                return simpleMediaATView;
            }
        }
        return null;
    }

    public final l a() {
        return this.g;
    }

    public final void a(int i, int i2) {
        this.q = i;
        this.r = i2;
        com.anythink.expressad.advanced.d.c cVar = this.l;
        if (cVar != null) {
            cVar.a(i2, i);
        }
    }

    public final void a(View view) {
        this.e = view;
        com.anythink.core.common.o.a.a aVar = new com.anythink.core.common.o.a.a() { // from class: com.anythink.basead.d.h.6
            @Override // com.anythink.core.common.o.a.a, com.anythink.core.common.o.a.b
            public final void recordImpression(View view2) {
                h.this.y();
            }
        };
        if (this.c == null) {
            view.getContext();
            this.c = new com.anythink.core.common.o.a.c(this.h.n.V() <= 0 ? 100 : this.h.n.V());
        }
        this.c.a(view, aVar);
    }

    public final void a(View view, int i, int i2) {
        a(view, i, i2, false);
    }

    public final void a(View view, List<View> list, List<View> list2) {
        OwnNativeATView ownNativeATView;
        aj ajVar;
        m mVar;
        String str;
        boolean z = true;
        if (this.t == null) {
            OwnNativeATView[] ownNativeATViewArr = new OwnNativeATView[1];
            a(ownNativeATViewArr, view);
            if (ownNativeATViewArr[0] == null) {
                str = "Register View don't contain OwnNativeAdView.";
            } else if (ownNativeATViewArr[0].getChildCount() == 0) {
                str = "OwnNativeAdView View don't contain any child views.";
            } else {
                this.t = ownNativeATViewArr[0];
            }
            Log.i("anythink", str);
            z = false;
        }
        if (z) {
            aj ajVar2 = this.g;
            if (ajVar2 != null && !ajVar2.k()) {
                a(view);
                if (list == null || list.size() <= 0) {
                    a(view, this.o);
                } else {
                    for (View view2 : list) {
                        if (view2 != null) {
                            view2.setOnClickListener(this.o);
                        }
                    }
                }
                if (list2 != null && list2.size() > 0) {
                    for (View view3 : list2) {
                        if (view3 != null) {
                            view3.setOnClickListener(this.p);
                        }
                    }
                }
            }
            if (this.l != null || (ownNativeATView = this.t) == null || (ajVar = this.g) == null || (mVar = this.h) == null) {
                return;
            }
            this.s = new AnonymousClass8(ownNativeATView, ajVar, mVar, this.i ? 5 : 6, new AnonymousClass7());
            this.t.setLifeCallback(new AnonymousClass9());
        }
    }

    public final void a(View view, boolean z) {
        View view2 = this.n;
        if (view2 != null && view == view2) {
            a(view, 1, 1, z);
        } else {
            View view3 = this.e;
            a(view, 1, (view3 == null || view != view3) ? 2 : 3, z);
        }
    }

    public final void a(com.anythink.basead.e.a aVar) {
        this.b = aVar;
    }

    public final void a(String str) {
        this.k = str;
        if (this.l != null) {
            if (TextUtils.isEmpty(str)) {
                this.l.c(3);
                return;
            }
            String str2 = this.k;
            str2.hashCode();
            switch (str2) {
                case "1":
                    this.l.c(3);
                    break;
                case "2":
                    this.l.c(1);
                    break;
                case "3":
                    this.l.c(2);
                    break;
            }
        }
    }

    public final void a(boolean z) {
        this.j = z;
        com.anythink.expressad.advanced.d.c cVar = this.l;
        if (cVar != null) {
            cVar.b(z ? 1 : 2);
        }
    }

    public final boolean a(boolean z, boolean z3) {
        if (this.g.r() != 67) {
            return false;
        }
        return this.g.a(z, z3);
    }

    public final String b() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.v() : "";
    }

    public final String c() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.w() : "";
    }

    public final String d() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.A() : "";
    }

    public final String e() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.x() : "";
    }

    public final String f() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.y() : "";
    }

    public final String g() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.z() : "";
    }

    public final String h() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.ak() : "";
    }

    public final String i() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.J() : "";
    }

    public final String j() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.M() : "";
    }

    public final String k() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.L() : "";
    }

    public final String l() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.K() : "";
    }

    public final String m() {
        aj ajVar = this.g;
        return ajVar != null ? ajVar.f() : "";
    }

    public final boolean n() {
        aj ajVar = this.g;
        if (ajVar != null) {
            return (TextUtils.isEmpty(ajVar.J()) && TextUtils.isEmpty(this.g.ak()) && TextUtils.isEmpty(this.g.M()) && TextUtils.isEmpty(this.g.L()) && TextUtils.isEmpty(this.g.f()) && TextUtils.isEmpty(this.g.K())) ? false : true;
        }
        return false;
    }

    public final boolean o() {
        return this.i || this.l != null;
    }

    public final void p() {
        com.anythink.core.common.o.a.c cVar = this.c;
        if (cVar != null) {
            cVar.a();
        }
    }

    public final void q() {
        p();
        b(112);
        this.e = null;
        this.t = null;
        this.b = null;
        try {
            com.anythink.expressad.advanced.d.c cVar = this.l;
            if (cVar != null) {
                cVar.e();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.anythink.basead.a.b bVar = this.d;
        if (bVar != null) {
            bVar.d();
            this.d = null;
        }
        com.anythink.core.common.o.a.c cVar2 = this.c;
        if (cVar2 != null) {
            cVar2.b();
            this.c = null;
        }
        BaseMediaATView baseMediaATView = this.m;
        if (baseMediaATView != null) {
            baseMediaATView.destroy();
        }
    }

    public final void r() {
        com.anythink.expressad.advanced.d.c cVar = this.l;
        if (cVar != null) {
            cVar.d(3);
        }
    }

    public final void s() {
        com.anythink.expressad.advanced.d.c cVar = this.l;
        if (cVar != null) {
            cVar.e(3);
        }
    }

    public final int t() {
        com.anythink.expressad.advanced.d.c cVar = this.l;
        if (cVar == null) {
            return 2;
        }
        return cVar.f();
    }

    public final int u() {
        aj ajVar = this.g;
        if (ajVar != null) {
            return ajVar.W();
        }
        return 0;
    }

    public final int v() {
        aj ajVar = this.g;
        if (ajVar != null) {
            return ajVar.X();
        }
        return 0;
    }

    public final int w() {
        aj ajVar = this.g;
        if (ajVar != null) {
            return ajVar.H();
        }
        return 0;
    }

    public final int x() {
        aj ajVar;
        if (this.i || (ajVar = this.g) == null) {
            return 0;
        }
        return ajVar.V();
    }
}
