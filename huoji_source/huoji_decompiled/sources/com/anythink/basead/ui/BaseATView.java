package com.anythink.basead.ui;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.a.b;
import com.anythink.basead.e.i;
import com.anythink.basead.ui.b.b;
import com.anythink.basead.ui.guidetoclickv2.d;
import com.anythink.core.api.IOfferClickHandler;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.f.z;
import com.anythink.core.common.o.a.c;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseATView extends RelativeLayout implements d {
    public String a;
    public m b;
    public l c;
    public c d;
    public com.anythink.basead.a.b e;
    public volatile boolean f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public String o;
    public List<View> p;
    public View q;
    public boolean r;
    public View s;
    public com.anythink.basead.ui.b.a t;
    public com.anythink.basead.ui.guidetoclickv2.c u;
    private boolean v;

    /* JADX INFO: renamed from: com.anythink.basead.ui.BaseATView$1, reason: invalid class name */
    public class AnonymousClass1 implements b.a {
        public AnonymousClass1() {
        }

        @Override // com.anythink.basead.ui.b.b.a
        public final void a(int i, int i2) {
            BaseATView.this.a(i, i2);
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.BaseATView$2, reason: invalid class name */
    public class AnonymousClass2 extends com.anythink.basead.ui.b.a {
        public AnonymousClass2(ViewGroup viewGroup, l lVar, m mVar, int i, b.a aVar) {
            super(viewGroup, lVar, mVar, i, aVar);
        }

        @Override // com.anythink.basead.ui.b.a
        public final ViewGroup.LayoutParams a() {
            return BaseATView.this.m();
        }
    }

    public static class a {
        public static final int a = 101;
        public static final int b = 102;
        public static final int c = 103;
        public static final int d = 104;
        public static final int e = 105;
        public static final int f = 106;
        public static final int g = 107;
        public static final int h = 108;
        public static final int i = 110;
        public static final int j = 111;
        public static final int k = 112;
        public static final int l = 113;
        public static final int m = 114;
        public static final int n = 115;
        public static final int o = 116;
        public static final int p = 117;
    }

    public static class b {
        public static final int a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        public static final int e = 4;
        public static final int f = 5;
        public static final int g = 6;
    }

    public BaseATView(Context context) {
        super(context);
        this.a = "BaseATView";
        this.v = false;
        this.r = false;
    }

    public BaseATView(Context context, m mVar, l lVar) {
        this(context, mVar, lVar, "");
    }

    public BaseATView(Context context, m mVar, l lVar, String str) {
        super(context);
        this.a = "BaseATView";
        this.v = false;
        this.r = false;
        this.b = mVar;
        this.c = lVar;
        this.o = str;
        this.p = new ArrayList();
        d();
        a();
        this.t = new AnonymousClass2(this, this.c, this.b, n(), new AnonymousClass1());
        setFocusable(true);
        setClickable(true);
    }

    private boolean a(MotionEvent motionEvent) {
        synchronized (this) {
            try {
                com.anythink.basead.ui.guidetoclickv2.c cVar = this.u;
                if (cVar != null) {
                    if (cVar.a(motionEvent)) {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
            return false;
        }
    }

    private static int b(int i) {
        Random random = new Random();
        if (i <= 0) {
            return 0;
        }
        double d = i;
        int i2 = (int) (0.1d * d);
        return random.nextInt((((int) (d * 0.9d)) - i2) + 1) + i2;
    }

    private void b() {
        this.t = new AnonymousClass2(this, this.c, this.b, n(), new AnonymousClass1());
    }

    private void b(View view) {
        this.q = view;
    }

    private void c() {
        l lVar = this.c;
        if (lVar instanceof z) {
            com.anythink.basead.f.a.b.a(getContext()).a((z) this.c);
        } else if (lVar instanceof aj) {
            com.anythink.basead.d.c.d dVarA = com.anythink.basead.d.c.d.a();
            Context context = getContext();
            m mVar = this.b;
            dVarA.a(context, com.anythink.basead.d.c.d.a(mVar.b, mVar.c), this.c, this.b.n);
        }
        l lVar2 = this.c;
        if ((lVar2 instanceof aj) && this.b.f == 67) {
            if (((aj) lVar2).a(true, true)) {
                com.anythink.core.common.d.c.a(getContext()).a(this.c.t(), 0, 1);
            }
            if (((aj) this.c).a(false, true)) {
                com.anythink.core.common.d.b.a(getContext()).a(this.c.u(), 0, 1);
            }
        }
    }

    private void o() {
        l lVar = this.c;
        if ((lVar instanceof aj) && this.b.f == 67) {
            if (((aj) lVar).a(true, false)) {
                com.anythink.core.common.d.c.a(getContext()).a(this.c.t(), 1, 0);
            }
            if (((aj) this.c).a(false, false)) {
                com.anythink.core.common.d.b.a(getContext()).a(this.c.u(), 1, 0);
            }
        }
    }

    private boolean p() {
        return com.anythink.basead.a.d.b(this.c);
    }

    public float a(com.anythink.basead.ui.a aVar, int i) {
        float f = 1.0f;
        if (aVar != null) {
            if (i == 2) {
                f = 1.5f;
            } else if (i == 3) {
                f = 0.75f;
            } else if (i == 4) {
                f = 0.5f;
            }
            aVar.setClickAreaScaleFactor(f);
        }
        return f;
    }

    public abstract void a();

    public final void a(int i) {
        com.anythink.basead.ui.b.a aVar = this.t;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    public void a(int i, int i2) {
        this.v = true;
        h();
        if (this.e == null) {
            this.e = new com.anythink.basead.a.b(getContext(), this.b, this.c);
        }
        if (this.e.a()) {
            return;
        }
        if (this.r) {
            if (i2 == 1) {
                i2 = 6;
            } else if (i2 == 2 || i2 == 3) {
                i2 = 7;
            } else if (i2 == 4) {
                i2 = 8;
            } else if (i2 == 5) {
                i2 = 9;
            }
        }
        final i iVarA = new i().a(i, i2);
        this.e.a(new b.InterfaceC0048b() { // from class: com.anythink.basead.ui.BaseATView.3
            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void a() {
                BaseATView.this.a(iVarA);
                BaseATView baseATView = BaseATView.this;
                l lVar = baseATView.c;
                if ((lVar instanceof aj) && baseATView.b.f == 67) {
                    if (((aj) lVar).a(true, false)) {
                        com.anythink.core.common.d.c.a(baseATView.getContext()).a(baseATView.c.t(), 1, 0);
                    }
                    if (((aj) baseATView.c).a(false, false)) {
                        com.anythink.core.common.d.b.a(baseATView.getContext()).a(baseATView.c.u(), 1, 0);
                    }
                }
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void a(boolean z) {
                BaseATView.this.a(z);
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final boolean a(String str, IOfferClickHandler iOfferClickHandler) {
                return BaseATView.this.a(str, iOfferClickHandler);
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void b() {
                BaseATView.this.f();
            }

            @Override // com.anythink.basead.a.b.InterfaceC0048b
            public final void c() {
                BaseATView.this.g();
            }
        });
        com.anythink.basead.c.i iVarI = i();
        if (i != 1) {
            View view = this.q;
            if (view != null) {
                a(view);
            } else {
                a(this);
            }
        }
        iVarI.g = j();
        this.e.a(iVarI);
        a(113);
    }

    public void a(final int i, final Runnable runnable) {
        getContext();
        this.d = i > 0 ? new c(i) : new c();
        this.d.a(this, new com.anythink.core.common.o.a.a() { // from class: com.anythink.basead.ui.BaseATView.4
            @Override // com.anythink.core.common.o.a.a, com.anythink.core.common.o.a.b
            public final int getImpressionMinTimeViewed() {
                int i2 = i;
                if (i2 > 0) {
                    return i2;
                }
                return 50;
            }

            @Override // com.anythink.core.common.o.a.a, com.anythink.core.common.o.a.b
            public final void recordImpression(View view) {
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    public final void a(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        int width = view.getWidth();
        int height = view.getHeight();
        int iB = b(width);
        int iB2 = b(height);
        int i3 = i + iB;
        this.g = i3;
        this.h = i2 + iB2;
        this.k = iB;
        this.l = iB2;
        this.i = i3 + ((int) (Math.random() * 15.0d));
        int iRandom = iB + i2 + ((int) (Math.random() * 15.0d));
        this.j = iRandom;
        this.m = this.i - i;
        this.n = iRandom - i2;
    }

    public abstract void a(i iVar);

    public abstract void a(boolean z);

    public boolean a(String str, IOfferClickHandler iOfferClickHandler) {
        return false;
    }

    public void d() {
    }

    public void destroy() {
        a(112);
        com.anythink.basead.a.b bVar = this.e;
        if (bVar != null) {
            bVar.d();
        }
        c cVar = this.d;
        if (cVar != null) {
            cVar.b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.g = (int) motionEvent.getRawX();
            this.h = (int) motionEvent.getRawY();
            this.k = (int) motionEvent.getX();
            this.l = (int) motionEvent.getY();
        } else if (action == 1 || action == 3) {
            this.i = (int) motionEvent.getRawX();
            this.j = (int) motionEvent.getRawY();
            this.m = (int) motionEvent.getX();
            this.n = (int) motionEvent.getY();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public abstract void e();

    public void f() {
    }

    public void g() {
    }

    public boolean getHasPerformClick() {
        return this.v;
    }

    public synchronized void h() {
        if (this.f) {
            return;
        }
        this.f = true;
        l lVar = this.c;
        if (lVar instanceof z) {
            com.anythink.basead.f.a.b.a(getContext()).a((z) this.c);
        } else if (lVar instanceof aj) {
            com.anythink.basead.d.c.d dVarA = com.anythink.basead.d.c.d.a();
            Context context = getContext();
            m mVar = this.b;
            dVarA.a(context, com.anythink.basead.d.c.d.a(mVar.b, mVar.c), this.c, this.b.n);
        }
        l lVar2 = this.c;
        if ((lVar2 instanceof aj) && this.b.f == 67) {
            if (((aj) lVar2).a(true, true)) {
                com.anythink.core.common.d.c.a(getContext()).a(this.c.t(), 0, 1);
            }
            if (((aj) this.c).a(false, true)) {
                com.anythink.core.common.d.b.a(getContext()).a(this.c.u(), 0, 1);
            }
        }
        a(114);
        com.anythink.basead.a.a.a(8, this.c, i());
        e();
    }

    public com.anythink.basead.c.i i() {
        com.anythink.basead.c.i iVar = new com.anythink.basead.c.i(this.b.d, "");
        iVar.e = getWidth();
        iVar.f = getHeight();
        return iVar;
    }

    public boolean isShowingEndCardAfterVideoPlay() {
        return this.r;
    }

    public final com.anythink.basead.c.a j() {
        com.anythink.basead.c.a aVar = new com.anythink.basead.c.a();
        aVar.a = this.g;
        aVar.b = this.h;
        aVar.c = this.i;
        aVar.d = this.j;
        aVar.e = this.k;
        aVar.f = this.l;
        aVar.g = this.m;
        aVar.h = this.n;
        return aVar;
    }

    public boolean k() {
        m mVar;
        n nVar;
        return com.anythink.expressad.shake.a.a().b() && (mVar = this.b) != null && (nVar = mVar.n) != null && nVar.Q() == 1;
    }

    public boolean l() {
        return false;
    }

    public RelativeLayout.LayoutParams m() {
        return null;
    }

    public int n() {
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a(116);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a(117);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (a(motionEvent)) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (a(motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.d
    public void setCallback(com.anythink.basead.ui.guidetoclickv2.c cVar) {
        synchronized (this) {
            this.u = cVar;
        }
    }

    public void setHasPerformClick(boolean z) {
        this.v = z;
    }

    public void setShowingEndCardAfterVideoPlay(boolean z) {
        this.r = z;
    }
}
