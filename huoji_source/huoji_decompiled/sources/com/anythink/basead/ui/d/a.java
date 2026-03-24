package com.anythink.basead.ui.d;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.BaseSdkSplashATView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.e;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public static final int a = -100;
    public static final int b = -101;
    public static final int c = -102;
    private final l<?> d;
    private final n e;
    private int f;
    private View g;
    private View h;
    private View i;
    private View j;
    private View k;
    private View l;
    private View m;
    private View n;
    private com.anythink.basead.ui.c.a o;

    public a(l<?> lVar, n nVar) {
        this.d = lVar;
        this.e = nVar;
    }

    private static int a(Context context, float f) {
        return i.a(context, f);
    }

    private void a(Context context) {
        if (this.i == null) {
            this.i = this.g.findViewById(i.a(context, "myoffer_splash_ad_install_btn", "id"));
        }
        if (this.j == null) {
            this.j = this.g.findViewById(i.a(context, "myoffer_shake_view", "id"));
        }
        if (BaseSdkSplashATView.isSinglePicture(this.d, this.e)) {
            this.l.setPadding(0, i.a(context, 26.0f), 0, 0);
            a(context, this.i, 100.0f);
            a(context, this.j, 100.0f);
        } else if (this.e.w() == 2) {
            this.l.setPadding(0, 0, 0, 0);
            View view = this.m;
            if (view != null && view.getLayoutParams() != null) {
                ViewGroup.LayoutParams layoutParams = this.m.getLayoutParams();
                layoutParams.height = i.a(context, 46.0f);
                this.m.setLayoutParams(layoutParams);
                this.m.setPadding(i.a(context, 31.0f), i.a(context, 13.0f), i.a(context, 33.0f), i.a(context, 13.0f));
                this.m.setBackgroundResource(i.a(context, "myoffer_invalid_button_shape_radius_24", com.anythink.expressad.foundation.h.i.c));
            }
            View view2 = this.n;
            if (view2 != null && view2.getLayoutParams() != null) {
                ViewGroup.LayoutParams layoutParams2 = this.n.getLayoutParams();
                if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams2;
                    layoutParams3.addRule(0, i.a(context, "myoffer_fl_invalid_btn", "id"));
                    layoutParams3.rightMargin = i.a(context, 10.0f);
                    this.n.setLayoutParams(layoutParams3);
                }
                this.n.setPadding(0, 0, 0, 0);
            }
        } else {
            this.l.setPadding(0, i.a(context, 26.0f), 0, 0);
            View view3 = this.h;
            if (view3 != null) {
                view3.setPadding(0, i.a(context, 25.0f), 0, 0);
            }
        }
        this.l.setVisibility(0);
        a(false);
    }

    private static void a(Context context, View view, float f) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).bottomMargin = i.a(context, f);
        } else if (layoutParams instanceof LinearLayout.LayoutParams) {
            ((LinearLayout.LayoutParams) layoutParams).bottomMargin = i.a(context, f);
        }
    }

    private void a(boolean z) {
        View view;
        View.OnClickListener onClickListener;
        if (!z || (view = this.m) == null) {
            view = this.l;
            if (view == null) {
                return;
            } else {
                onClickListener = new View.OnClickListener() { // from class: com.anythink.basead.ui.d.a.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        if (a.this.o != null) {
                            a.this.o.a(10, 14);
                        }
                    }
                };
            }
        } else {
            onClickListener = new View.OnClickListener() { // from class: com.anythink.basead.ui.d.a.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    if (a.this.o != null) {
                        a.this.o.a(10, 14);
                    }
                }
            };
        }
        view.setOnClickListener(onClickListener);
    }

    private void b(Context context) {
        View viewFindViewById = this.g.findViewById(i.a(context, "myoffer_include_invalid_button_full_screen", "id"));
        this.l = viewFindViewById;
        if (viewFindViewById == null) {
            this.l = this.g.findViewById(i.a(context, "myoffer_fl_invalid_btn", "id"));
        }
        this.h = this.g.findViewById(i.a(context, "myoffer_splash_ad_bottom_container", "id"));
        this.k = this.g.findViewById(i.a(context, "myoffer_ll_top_content", "id"));
        this.i = this.g.findViewById(i.a(context, "myoffer_btn_banner_cta", "id"));
        this.j = this.g.findViewById(i.a(context, "myoffer_shake_hint_text", "id"));
        this.n = this.g.findViewById(i.a(context, "myoffer_ll_title_desc_container", "id"));
        View view = this.l;
        if (view != null) {
            this.m = view.findViewById(i.a(context, "myoffer_invalid_btn", "id"));
        }
    }

    private static void b(Context context, View view, float f) {
        if (view == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).topMargin = i.a(context, f);
        } else if (layoutParams instanceof LinearLayout.LayoutParams) {
            ((LinearLayout.LayoutParams) layoutParams).topMargin = i.a(context, f);
        }
    }

    public final a a(int i) {
        this.f = i;
        return this;
    }

    public final a a(com.anythink.basead.ui.c.a aVar) {
        this.o = aVar;
        return this;
    }

    public final void a() {
        com.anythink.core.common.b.n.a().b(new Runnable() { // from class: com.anythink.basead.ui.d.a.3
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.l != null) {
                    a.this.l.setVisibility(8);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x034f A[PHI: r2
      0x034f: PHI (r2v37 android.view.ViewGroup$LayoutParams) = (r2v28 android.view.ViewGroup$LayoutParams), (r2v68 android.view.ViewGroup$LayoutParams) binds: [B:104:0x034d, B:75:0x0239] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02e3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(Context context, View view) {
        n nVar;
        ViewGroup.LayoutParams layoutParams;
        View view2;
        float f;
        boolean z;
        this.g = view;
        if (view == null || this.d == null || (nVar = this.e) == null || !nVar.al()) {
            return;
        }
        View viewFindViewById = this.g.findViewById(i.a(context, "myoffer_include_invalid_button_full_screen", "id"));
        this.l = viewFindViewById;
        if (viewFindViewById == null) {
            this.l = this.g.findViewById(i.a(context, "myoffer_fl_invalid_btn", "id"));
        }
        this.h = this.g.findViewById(i.a(context, "myoffer_splash_ad_bottom_container", "id"));
        this.k = this.g.findViewById(i.a(context, "myoffer_ll_top_content", "id"));
        this.i = this.g.findViewById(i.a(context, "myoffer_btn_banner_cta", "id"));
        this.j = this.g.findViewById(i.a(context, "myoffer_shake_hint_text", "id"));
        this.n = this.g.findViewById(i.a(context, "myoffer_ll_title_desc_container", "id"));
        View view3 = this.l;
        if (view3 != null) {
            this.m = view3.findViewById(i.a(context, "myoffer_invalid_btn", "id"));
        }
        if (this.l == null) {
            return;
        }
        if (TextUtils.equals(String.valueOf(this.e.z()), "4")) {
            if (this.i == null) {
                this.i = this.g.findViewById(i.a(context, "myoffer_splash_ad_install_btn", "id"));
            }
            if (this.j == null) {
                this.j = this.g.findViewById(i.a(context, "myoffer_shake_view", "id"));
            }
            if (BaseSdkSplashATView.isSinglePicture(this.d, this.e)) {
                this.l.setPadding(0, i.a(context, 26.0f), 0, 0);
                a(context, this.i, 100.0f);
                a(context, this.j, 100.0f);
            } else if (this.e.w() == 2) {
                this.l.setPadding(0, 0, 0, 0);
                View view4 = this.m;
                if (view4 != null && view4.getLayoutParams() != null) {
                    ViewGroup.LayoutParams layoutParams2 = this.m.getLayoutParams();
                    layoutParams2.height = i.a(context, 46.0f);
                    this.m.setLayoutParams(layoutParams2);
                    this.m.setPadding(i.a(context, 31.0f), i.a(context, 13.0f), i.a(context, 33.0f), i.a(context, 13.0f));
                    this.m.setBackgroundResource(i.a(context, "myoffer_invalid_button_shape_radius_24", com.anythink.expressad.foundation.h.i.c));
                }
                View view5 = this.n;
                if (view5 != null && view5.getLayoutParams() != null) {
                    ViewGroup.LayoutParams layoutParams3 = this.n.getLayoutParams();
                    if (layoutParams3 instanceof RelativeLayout.LayoutParams) {
                        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams3;
                        layoutParams4.addRule(0, i.a(context, "myoffer_fl_invalid_btn", "id"));
                        layoutParams4.rightMargin = i.a(context, 10.0f);
                        this.n.setLayoutParams(layoutParams4);
                    }
                    this.n.setPadding(0, 0, 0, 0);
                }
            } else {
                this.l.setPadding(0, i.a(context, 26.0f), 0, 0);
                View view6 = this.h;
                if (view6 != null) {
                    view6.setPadding(0, i.a(context, 25.0f), 0, 0);
                }
            }
            this.l.setVisibility(0);
            a(false);
            return;
        }
        int i = this.f;
        if (i != -101) {
            switch (i) {
                case 1:
                case 5:
                    this.l.setPadding(0, i.a(context, 26.0f), 0, 0);
                    if (!TextUtils.isEmpty(this.d.x())) {
                        a(context, this.i, 100.0f);
                        view2 = this.j;
                        f = 154.0f;
                        a(context, view2, f);
                    }
                    z = false;
                    break;
                case 2:
                case 6:
                    this.l.setPadding(0, i.a(context, 10.0f), 0, 0);
                    if (!TextUtils.isEmpty(this.d.x())) {
                        a(context, this.k, 160.0f);
                        a(context, this.i, 70.0f);
                        view2 = this.j;
                        f = 124.0f;
                        a(context, view2, f);
                    }
                    z = false;
                    break;
                case 3:
                case 4:
                case 7:
                    if (!e.h(context)) {
                        this.l.setPadding(0, i.a(context, 10.0f), 0, 0);
                        z = false;
                    } else {
                        View view7 = this.m;
                        if (view7 != null && view7.getLayoutParams() != null) {
                            ViewGroup.LayoutParams layoutParams5 = this.m.getLayoutParams();
                            layoutParams5.width = i.a(context, 80.0f);
                            layoutParams5.height = i.a(context, 48.0f);
                            this.m.setLayoutParams(layoutParams5);
                            this.m.setPadding(i.a(context, 34.0f), i.a(context, 14.0f), i.a(context, 34.0f), i.a(context, 14.0f));
                            this.m.setBackgroundResource(i.a(context, "myoffer_invalid_button_shape_radius_24", com.anythink.expressad.foundation.h.i.c));
                        }
                        z = true;
                    }
                    break;
                case 8:
                    if (e.h(context)) {
                        this.l.setPadding(0, 0, 0, 0);
                        View view8 = this.m;
                        if (view8 != null) {
                            ViewGroup.LayoutParams layoutParams6 = view8.getLayoutParams();
                            layoutParams6.height = i.a(context, 48.0f);
                            this.m.setLayoutParams(layoutParams6);
                            this.m.setPadding(i.a(context, 34.0f), i.a(context, 14.0f), i.a(context, 34.0f), i.a(context, 14.0f));
                            this.m.setBackgroundResource(i.a(context, "myoffer_invalid_button_shape_radius_24", com.anythink.expressad.foundation.h.i.c));
                        }
                        if (this.f == -101) {
                            layoutParams = this.l.getLayoutParams();
                            layoutParams.width = -2;
                            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                                RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) layoutParams;
                                layoutParams7.addRule(11);
                                layoutParams7.rightMargin = i.a(context, 20.0f);
                                layoutParams7.bottomMargin = i.a(context, 30.0f);
                            }
                            this.l.setLayoutParams(layoutParams);
                        }
                    } else {
                        this.l.setPadding(0, i.a(context, 26.0f), 0, 0);
                        a(context, this.i, 100.0f);
                        a(context, this.j, 152.0f);
                        if (this.f == -101) {
                            view2 = this.l;
                            f = 35.0f;
                            a(context, view2, f);
                        }
                    }
                    z = false;
                    break;
                default:
                    if (e.h(context)) {
                        this.l.setPadding(0, 0, 0, 0);
                        View view9 = this.m;
                        if (view9 != null) {
                            ViewGroup.LayoutParams layoutParams8 = view9.getLayoutParams();
                            layoutParams8.height = i.a(context, 48.0f);
                            this.m.setLayoutParams(layoutParams8);
                            this.m.setPadding(i.a(context, 34.0f), i.a(context, 14.0f), i.a(context, 34.0f), i.a(context, 14.0f));
                            this.m.setBackgroundResource(i.a(context, "myoffer_invalid_button_shape_radius_24", com.anythink.expressad.foundation.h.i.c));
                        }
                        View view10 = this.n;
                        if (view10 != null && view10.getLayoutParams() != null) {
                            ViewGroup.LayoutParams layoutParams9 = this.n.getLayoutParams();
                            if (layoutParams9 instanceof RelativeLayout.LayoutParams) {
                                RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) layoutParams9;
                                layoutParams10.addRule(0, i.a(context, "myoffer_fl_invalid_btn", "id"));
                                this.n.setLayoutParams(layoutParams10);
                            }
                        }
                        if (this.f == -100) {
                            layoutParams = this.l.getLayoutParams();
                            layoutParams.width = -2;
                            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                            }
                            this.l.setLayoutParams(layoutParams);
                        }
                    } else {
                        this.l.setPadding(0, i.a(context, 26.0f), 0, 0);
                        View view11 = this.h;
                        if (view11 != null) {
                            view11.setPadding(0, 0, 0, 0);
                        }
                        b(context, this.k, 14.0f);
                        b(context, this.i, 92.0f);
                        if (this.f == -100) {
                            view2 = this.l;
                            f = 44.0f;
                            a(context, view2, f);
                        }
                    }
                    z = false;
                    break;
            }
        }
        this.l.setVisibility(0);
        a(z);
    }

    public final void b() {
        com.anythink.core.common.b.n.a().b(new Runnable() { // from class: com.anythink.basead.ui.d.a.4
            @Override // java.lang.Runnable
            public final void run() {
                if (a.this.l != null) {
                    a.this.l.setVisibility(0);
                }
            }
        });
    }
}
