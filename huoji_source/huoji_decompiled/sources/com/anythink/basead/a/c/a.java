package com.anythink.basead.a.c;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.basead.a.d;
import com.anythink.core.common.f.l;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.n;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public TextView a;
    public View b;
    public ImageView c;
    public View d;
    public View e;
    public Context f;
    public ValueAnimator g;
    public boolean h;
    public boolean i;
    public int j;
    public int k;
    private ViewGroup l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;

    /* JADX INFO: renamed from: com.anythink.basead.a.c.a$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public final /* synthetic */ l a;

        public AnonymousClass2(l lVar) {
            this.a = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(com.anythink.core.common.b.n.a().f(), this.a.L());
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.c.a$3, reason: invalid class name */
    public class AnonymousClass3 implements View.OnClickListener {
        public final /* synthetic */ l a;

        public AnonymousClass3(l lVar) {
            this.a = lVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(com.anythink.core.common.b.n.a().f(), this.a.M());
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.c.a$4, reason: invalid class name */
    public class AnonymousClass4 implements View.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.a.c.a$5, reason: invalid class name */
    public class AnonymousClass5 implements View.OnClickListener {
        public AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public a(Context context) {
        this.f = context;
        this.d = LayoutInflater.from(context).inflate(i.a(context, "myoffer_letter_top_layout", "layout"), (ViewGroup) null);
        View view = new View(context);
        this.e = view;
        view.setBackgroundResource(i.a(context, "myoffer_letter_bottom", com.anythink.expressad.foundation.h.i.c));
        this.a = (TextView) this.d.findViewById(i.a(context, "myoffer_btn_banner_cta", "id"));
        this.b = this.d.findViewById(i.a(context, "myoffer_letter_icon", "id"));
        this.l = (ViewGroup) this.d.findViewById(i.a(context, "myoffer_four_element_container", "id"));
        this.m = (TextView) this.d.findViewById(i.a(context, "myoffer_version_name", "id"));
        this.n = (TextView) this.d.findViewById(i.a(context, "myoffer_publisher_name", "id"));
        this.o = (TextView) this.d.findViewById(i.a(context, "myoffer_permission_manage", "id"));
        this.p = (TextView) this.d.findViewById(i.a(context, "myoffer_privacy_agreement", "id"));
        this.c = (ImageView) this.d.findViewById(i.a(context, "myoffer_ad_logo", "id"));
    }

    private void a(l lVar) {
        if (!lVar.O()) {
            ViewGroup viewGroup = this.l;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            TextView textView = this.m;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.n;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            TextView textView3 = this.p;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            TextView textView4 = this.o;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            try {
                View viewFindViewById = this.d.findViewById(i.a(this.f, "myoffer_four_element_container_bg", "id"));
                if (viewFindViewById != null) {
                    viewFindViewById.setBackgroundDrawable(null);
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        this.m.setText(this.f.getResources().getString(i.a(this.f, "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), lVar.K()));
        this.n.setText(lVar.J());
        this.p.setOnClickListener(new AnonymousClass2(lVar));
        this.o.setOnClickListener(new AnonymousClass3(lVar));
        this.m.setOnClickListener(new AnonymousClass4());
        this.n.setOnClickListener(new AnonymousClass5());
        ViewGroup viewGroup2 = this.l;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility(0);
        }
        TextView textView5 = this.m;
        if (textView5 != null) {
            textView5.setVisibility(0);
        }
        TextView textView6 = this.n;
        if (textView6 != null) {
            textView6.setVisibility(0);
        }
        TextView textView7 = this.p;
        if (textView7 != null) {
            textView7.setVisibility(0);
        }
        TextView textView8 = this.o;
        if (textView8 != null) {
            textView8.setVisibility(0);
        }
    }

    public final int a() {
        return this.j;
    }

    public final void a(int i) {
        this.j = (i * 111) / 300;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.d.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = this.j;
        this.d.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.e.getLayoutParams();
        layoutParams2.width = i;
        layoutParams2.height = (layoutParams.height * 200) / 111;
        this.e.setLayoutParams(layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.a.getLayoutParams();
        layoutParams3.height = (layoutParams.height * 48) / 126;
        layoutParams3.bottomMargin = (this.j / 129) * 35;
        RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) this.b.getLayoutParams();
        int i2 = this.j;
        layoutParams4.bottomMargin = (i2 / 129) * 35;
        this.k = i2 / 3;
    }

    public final void a(final View view) {
        if (this.h || this.i) {
            return;
        }
        this.h = true;
        view.postDelayed(new Runnable() { // from class: com.anythink.basead.a.c.a.6
            @Override // java.lang.Runnable
            public final void run() {
                a.this.g = ValueAnimator.ofFloat(0.0f, 720.0f);
                a.this.g.setDuration(com.anythink.expressad.exoplayer.i.a.f);
                a.this.g.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.anythink.basead.a.c.a.6.1
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        double dSin = Math.sin(Math.toRadians(((Float) valueAnimator.getAnimatedValue()).floatValue())) * Math.pow(((valueAnimator.getDuration() * 2) - valueAnimator.getCurrentPlayTime()) / (valueAnimator.getDuration() * 2.0f), 2.0d);
                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                        view.setTranslationY(-((float) (((double) a.this.k) * dSin)));
                    }
                });
                if (a.this.g.isStarted()) {
                    return;
                }
                a.this.g.start();
            }
        }, com.anythink.expressad.exoplayer.i.a.f);
    }

    public final void a(RelativeLayout relativeLayout, int i) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(8, i);
        this.d.setLayoutParams(layoutParams);
        relativeLayout.addView(this.d, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(8, this.d.getId());
        layoutParams2.addRule(5, this.d.getId());
        layoutParams2.addRule(7, this.d.getId());
        relativeLayout.addView(this.e, 0, layoutParams2);
    }

    public final void a(l lVar, View.OnClickListener onClickListener) {
        if (TextUtils.isEmpty(lVar.E())) {
            this.a.setVisibility(8);
            this.b.setVisibility(0);
        } else {
            if (TextUtils.isEmpty(lVar.A())) {
                this.a.setText(d.a(this.f, lVar));
            } else {
                this.a.setText(lVar.A());
            }
            this.a.setOnClickListener(onClickListener);
            this.b.setVisibility(8);
            this.a.setVisibility(0);
        }
        if (this.c != null) {
            final String strZ = lVar.z();
            if (TextUtils.isEmpty(strZ)) {
                this.c.setVisibility(8);
            } else {
                final ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
                b.a(this.f).a(new e(1, strZ), layoutParams.width, layoutParams.height, new b.a() { // from class: com.anythink.basead.a.c.a.1
                    @Override // com.anythink.core.common.res.b.a
                    public final void onFail(String str, String str2) {
                        a.this.c.setVisibility(8);
                    }

                    @Override // com.anythink.core.common.res.b.a
                    public final void onSuccess(String str, Bitmap bitmap) {
                        if (TextUtils.equals(str, strZ)) {
                            a.this.c.setImageBitmap(bitmap);
                            ViewGroup.LayoutParams layoutParams2 = layoutParams;
                            int i = layoutParams2.height;
                            layoutParams2.width = (int) (i * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                            layoutParams2.height = i;
                            a.this.c.setLayoutParams(layoutParams2);
                            a.this.c.setScaleType(ImageView.ScaleType.FIT_XY);
                            a.this.c.setImageBitmap(bitmap);
                            a.this.c.setVisibility(0);
                        }
                    }
                });
            }
        }
        if (!lVar.O()) {
            ViewGroup viewGroup = this.l;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            TextView textView = this.m;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.n;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            TextView textView3 = this.p;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            TextView textView4 = this.o;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            try {
                View viewFindViewById = this.d.findViewById(i.a(this.f, "myoffer_four_element_container_bg", "id"));
                if (viewFindViewById != null) {
                    viewFindViewById.setBackgroundDrawable(null);
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        this.m.setText(this.f.getResources().getString(i.a(this.f, "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), lVar.K()));
        this.n.setText(lVar.J());
        this.p.setOnClickListener(new AnonymousClass2(lVar));
        this.o.setOnClickListener(new AnonymousClass3(lVar));
        this.m.setOnClickListener(new AnonymousClass4());
        this.n.setOnClickListener(new AnonymousClass5());
        ViewGroup viewGroup2 = this.l;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility(0);
        }
        TextView textView5 = this.m;
        if (textView5 != null) {
            textView5.setVisibility(0);
        }
        TextView textView6 = this.n;
        if (textView6 != null) {
            textView6.setVisibility(0);
        }
        TextView textView7 = this.p;
        if (textView7 != null) {
            textView7.setVisibility(0);
        }
        TextView textView8 = this.o;
        if (textView8 != null) {
            textView8.setVisibility(0);
        }
    }

    public final int b() {
        return this.k;
    }

    public final void c() {
        this.i = true;
        try {
            ValueAnimator valueAnimator = this.g;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                return;
            }
            this.g.cancel();
        } catch (Throwable unused) {
        }
    }
}
