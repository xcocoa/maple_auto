package com.anythink.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.anythink.basead.a.b.c;
import com.anythink.basead.c.e;
import com.anythink.basead.mraid.MraidWebView;
import com.anythink.basead.mraid.d;
import com.anythink.basead.ui.ClickToReLoadView;
import com.anythink.core.basead.ui.web.WebLandPageActivity;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.x;
import com.anythink.expressad.atsignalcommon.mraid.CallMraidJS;

/* JADX INFO: loaded from: classes.dex */
public class MraidContainerView extends FrameLayout {
    public static final int ENDCARD_INIT = 1;
    public static final int LOAD_RETRY_CLICK = 3;
    public static final int PRE_LOAD = 5;
    public static final int VISIABLE_CLICK = 4;
    public static final int WINDOW_ATTACH_CHECK = 2;
    private static final String j = MraidContainerView.class.getSimpleName();
    public l a;
    public n b;
    public m c;
    public b d;
    public ClickToReLoadView e;
    public MraidWebView f;
    public a g;
    public boolean h;
    public boolean i;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;

    public interface a {
        void a();

        void a(String str);

        void b();

        void c();
    }

    public MraidContainerView(@NonNull Context context) {
        super(context);
    }

    public MraidContainerView(@NonNull Context context, l lVar, m mVar, a aVar) {
        super(context);
        this.a = lVar;
        this.b = mVar.n;
        this.c = mVar;
        this.g = aVar;
        setBackgroundColor(getResources().getColor(i.a(context, "color_99000000", com.anythink.expressad.foundation.h.i.d)));
    }

    private void a(int i) {
        if (c.a(this.c, this.a)) {
            return;
        }
        loadMraidWebView(i);
    }

    public static /* synthetic */ boolean a(MraidContainerView mraidContainerView) {
        mraidContainerView.m = false;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean a(String str) {
        boolean z;
        if (this.h) {
            z = false;
        } else {
            com.anythink.core.basead.b.c cVar = new com.anythink.core.basead.b.c();
            cVar.c = this.a;
            cVar.h = this.c;
            cVar.f = str;
            cVar.i = 2;
            WebLandPageActivity.a(com.anythink.core.common.b.n.a().f(), cVar);
            z = true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        MraidWebView mraidWebViewB = c.b(c.b(this.c, this.a));
        this.f = mraidWebViewB;
        if (mraidWebViewB != null) {
            this.n = true;
            if (this.l) {
                mraidWebViewB.setNeedRegisterVolumeChangeReceiver(true);
            }
            this.f.prepare(getContext(), new com.anythink.basead.mraid.b() { // from class: com.anythink.basead.ui.MraidContainerView.1
                @Override // com.anythink.basead.mraid.b
                public final void a() {
                    a aVar = MraidContainerView.this.g;
                    if (aVar != null) {
                        aVar.b();
                    }
                }

                @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
                public final void close() {
                }

                @Override // com.anythink.expressad.atsignalcommon.mraid.IMraidJSBridge
                public final void open(String str) {
                    MraidContainerView mraidContainerView = MraidContainerView.this;
                    if (mraidContainerView.g == null || mraidContainerView.a(str)) {
                        return;
                    }
                    MraidContainerView.this.g.a(str);
                    MraidContainerView.this.h = false;
                }
            });
            this.f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            addView(this.f);
            c();
            a aVar = this.g;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    private void c() {
        if (this.a.g() <= 0 || this.a.h() <= 0) {
            return;
        }
        final ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.anythink.basead.ui.MraidContainerView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                try {
                    MraidContainerView mraidContainerView = MraidContainerView.this;
                    if (!mraidContainerView.i) {
                        mraidContainerView.i = true;
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) mraidContainerView.f.getLayoutParams();
                        layoutParams.width = i.a(com.anythink.core.common.b.n.a().f(), MraidContainerView.this.a.g());
                        layoutParams.height = i.a(com.anythink.core.common.b.n.a().f(), MraidContainerView.this.a.h());
                        int width = (MraidContainerView.this.getWidth() - MraidContainerView.this.getPaddingLeft()) - MraidContainerView.this.getPaddingRight();
                        int height = (MraidContainerView.this.getHeight() - MraidContainerView.this.getPaddingBottom()) - MraidContainerView.this.getPaddingTop();
                        float fG = MraidContainerView.this.a.g() / (MraidContainerView.this.a.h() * 1.0f);
                        layoutParams.width = Math.min(width, layoutParams.width);
                        int iMin = Math.min(height, layoutParams.height);
                        layoutParams.height = iMin;
                        int i = layoutParams.width;
                        float f = i / (iMin * 1.0f);
                        if (f > fG) {
                            layoutParams.width = (int) (iMin * fG);
                        } else if (f < fG) {
                            layoutParams.height = (int) (i / fG);
                        }
                        layoutParams.gravity = 17;
                    }
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.e == null) {
            ClickToReLoadView clickToReLoadView = new ClickToReLoadView(getContext());
            this.e = clickToReLoadView;
            clickToReLoadView.setListener(new ClickToReLoadView.a() { // from class: com.anythink.basead.ui.MraidContainerView.4
                @Override // com.anythink.basead.ui.ClickToReLoadView.a
                public final void a() {
                    MraidContainerView.this.loadMraidWebView(3);
                }
            });
        }
        addView(this.e, new FrameLayout.LayoutParams(-1, -1));
    }

    private void e() {
        ClickToReLoadView clickToReLoadView = this.e;
        if (clickToReLoadView != null) {
            removeView(clickToReLoadView);
        }
    }

    private void f() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        b bVar = this.d;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.h = true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void fireAudioVolumeChange(boolean z) {
        try {
            if (!this.n || this.f == null) {
                return;
            }
            if (z) {
                CallMraidJS.getInstance().fireAudioVolumeChange(this.f, 0.0d);
            } else {
                CallMraidJS.getInstance().fireAudioVolumeChange(this.f, 1.0d);
            }
        } catch (Exception unused) {
        }
    }

    public void fireMraidIsViewable(boolean z) {
        MraidWebView mraidWebView;
        try {
            if (!this.n || (mraidWebView = this.f) == null) {
                return;
            }
            if (z) {
                com.anythink.expressad.mbbanner.a.a.a.a(mraidWebView, true);
            } else {
                com.anythink.expressad.mbbanner.a.a.a.a(mraidWebView, false);
            }
        } catch (Throwable unused) {
        }
    }

    public void init() {
        if (c.a(this.c, this.a)) {
            b();
            return;
        }
        b bVar = new b(this);
        this.d = bVar;
        bVar.a();
    }

    public void loadMraidWebView(final int i) {
        if (this.m || this.n) {
            return;
        }
        this.m = true;
        ClickToReLoadView clickToReLoadView = this.e;
        if (clickToReLoadView != null) {
            removeView(clickToReLoadView);
        }
        b bVar = this.d;
        if (bVar != null) {
            bVar.b();
        }
        final String strA = d.a(this.c, this.a);
        if (!TextUtils.isEmpty(strA)) {
            final String strB = c.b(this.c, this.a);
            com.anythink.core.common.b.n.a().b(new Runnable() { // from class: com.anythink.basead.ui.MraidContainerView.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        MraidContainerView.this.f = new MraidWebView(com.anythink.core.common.b.n.a().f());
                        String str = strB;
                        String str2 = strA;
                        MraidWebView mraidWebView = MraidContainerView.this.f;
                        d.a aVar = new d.a() { // from class: com.anythink.basead.ui.MraidContainerView.3.1
                            @Override // com.anythink.basead.mraid.d.a
                            public final void a() {
                                String unused = MraidContainerView.j;
                                MraidContainerView.a(MraidContainerView.this);
                                MraidContainerView.this.b();
                                MraidContainerView.this.g();
                            }

                            @Override // com.anythink.basead.mraid.d.a
                            public final void a(e eVar) {
                                MraidContainerView.a(MraidContainerView.this);
                                String unused = MraidContainerView.j;
                                new StringBuilder("onFailed: ").append(eVar.c());
                                MraidContainerView.this.d();
                                MraidContainerView.this.g();
                            }
                        };
                        MraidContainerView mraidContainerView = MraidContainerView.this;
                        d.a(str, str2, mraidWebView, aVar, mraidContainerView.a, mraidContainerView.c, i);
                    } catch (Throwable th) {
                        MraidContainerView.a(MraidContainerView.this);
                        String unused = MraidContainerView.j;
                        new StringBuilder("onFailed with exception: ").append(th.getMessage());
                        MraidContainerView.this.g();
                        a aVar2 = MraidContainerView.this.g;
                        if (aVar2 != null) {
                            th.getMessage();
                            aVar2.c();
                        }
                    }
                }
            });
        } else {
            this.m = false;
            d();
            g();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.k = true;
        a(2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.k = false;
    }

    public void release() {
        MraidWebView mraidWebView;
        try {
            if (this.n && (mraidWebView = this.f) != null) {
                x.a(mraidWebView);
                this.f.release();
                com.anythink.core.common.res.d.a(com.anythink.core.common.b.n.a().f()).a(this.c, this.a);
            }
            x.a(this);
        } catch (Throwable unused) {
        }
    }

    public void setNeedRegisterVolumeChangeReceiver(boolean z) {
        this.l = z;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (this.k) {
            a(4);
        }
    }
}
