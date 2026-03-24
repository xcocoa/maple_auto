package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.basead.a.d;
import com.anythink.basead.ui.d.c;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.c;
import com.anythink.core.common.o.i;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import z2.k3;

/* JADX INFO: loaded from: classes.dex */
public class AsseblemSplashATView extends BaseSdkSplashATView {
    public AsseblemSplashATView(Context context) {
        super(context);
    }

    public AsseblemSplashATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
        super(context, mVar, lVar, aVar);
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final void a() {
        LayoutInflater layoutInflaterFrom;
        Context context;
        String str;
        if (this.b.n.w() == 2) {
            layoutInflaterFrom = LayoutInflater.from(getContext());
            context = getContext();
            str = "myoffer_splash_ad_layout_asseblem_vertical_land";
        } else {
            layoutInflaterFrom = LayoutInflater.from(getContext());
            context = getContext();
            str = "myoffer_splash_ad_layout_asseblem_vertical_port";
        }
        View viewInflate = layoutInflaterFrom.inflate(i.a(context, str, "layout"), this);
        o();
        com.anythink.basead.ui.d.a aVar = this.L;
        if (aVar != null) {
            aVar.a(-102).a(new com.anythink.basead.ui.c.a() { // from class: com.anythink.basead.ui.AsseblemSplashATView.1
                @Override // com.anythink.basead.ui.c.a
                public final void a(int i, int i2) {
                    AsseblemSplashATView.this.a(i, i2);
                }
            }).a(getContext(), viewInflate);
        }
    }

    @Override // com.anythink.basead.ui.BaseSdkSplashATView
    public final void b() {
        TextView textView = (TextView) findViewById(i.a(getContext(), "myoffer_splash_ad_title", "id"));
        TextView textView2 = (TextView) findViewById(i.a(getContext(), "myoffer_splash_ad_install_btn", "id"));
        TextView textView3 = (TextView) findViewById(i.a(getContext(), "myoffer_splash_desc", "id"));
        final FrameLayout frameLayout = (FrameLayout) findViewById(i.a(getContext(), "myoffer_splash_ad_content_image_area", "id"));
        final RoundImageView roundImageView = (RoundImageView) findViewById(i.a(getContext(), "myoffer_splash_bg", "id"));
        final RoundImageView roundImageView2 = (RoundImageView) findViewById(i.a(getContext(), "myoffer_splash_icon", "id"));
        this.s = textView2;
        if (TextUtils.isEmpty(this.c.x())) {
            c.a(roundImageView2);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) roundImageView2.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.rightMargin = 0;
                roundImageView2.setLayoutParams(layoutParams);
            }
            if (textView != null) {
                textView.setGravity(17);
            }
            if (textView3 != null) {
                textView3.setGravity(17);
            }
        } else {
            roundImageView2.setVisibility(0);
            roundImageView2.setNeedRadiu(true);
            roundImageView2.setRadiusInDip(12);
            int i = roundImageView2.getLayoutParams().width;
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.x()), i, i, new b.a() { // from class: com.anythink.basead.ui.AsseblemSplashATView.2
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    if (TextUtils.equals(str, AsseblemSplashATView.this.c.x())) {
                        roundImageView2.setImageBitmap(bitmap);
                    }
                }
            });
        }
        this.p.add(roundImageView2);
        frameLayout.removeAllViews();
        final WrapRoundImageView wrapRoundImageView = new WrapRoundImageView(getContext());
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        wrapRoundImageView.setLayoutParams(layoutParams2);
        wrapRoundImageView.setNeedRadiu(false);
        wrapRoundImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        wrapRoundImageView.setVisibility(4);
        frameLayout.addView(wrapRoundImageView, layoutParams2);
        frameLayout.setVisibility(0);
        roundImageView.setNeedRadiu(false);
        if (TextUtils.isEmpty(this.c.y())) {
            roundImageView.setBackgroundColor(Color.parseColor("#EFEFEF"));
        } else {
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.y()), getResources().getDisplayMetrics().widthPixels, (getResources().getDisplayMetrics().widthPixels * 627) / k3.OooooO0, new b.a() { // from class: com.anythink.basead.ui.AsseblemSplashATView.3
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, final Bitmap bitmap) {
                    if (TextUtils.equals(str, AsseblemSplashATView.this.c.y())) {
                        frameLayout.post(new Runnable() { // from class: com.anythink.basead.ui.AsseblemSplashATView.3.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                wrapRoundImageView.setBitmapAndResize(bitmap, frameLayout.getWidth(), frameLayout.getHeight());
                                wrapRoundImageView.setVisibility(0);
                            }
                        });
                        com.anythink.core.common.o.c.a(AsseblemSplashATView.this.getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.AsseblemSplashATView.3.2
                            @Override // com.anythink.core.common.o.c.a
                            public final void a() {
                            }

                            @Override // com.anythink.core.common.o.c.a
                            public final void a(Bitmap bitmap2) {
                                roundImageView.setImageBitmap(bitmap2);
                            }
                        });
                    }
                }
            });
            this.p.add(wrapRoundImageView);
        }
        if (TextUtils.isEmpty(this.c.v())) {
            textView.setVisibility(4);
        } else {
            textView.setText(this.c.v());
            textView.setVisibility(0);
        }
        this.p.add(textView);
        if (TextUtils.isEmpty(this.c.A())) {
            textView2.setText(d.a(getContext(), this.c));
        } else {
            textView2.setText(this.c.A());
        }
        this.p.add(textView2);
        if (textView3 != null) {
            if (TextUtils.isEmpty(this.c.w())) {
                textView3.setVisibility(8);
            } else {
                textView3.setText(this.c.w());
            }
            this.p.add(textView3);
        }
    }

    @Override // com.anythink.basead.ui.BaseSdkSplashATView
    public void c() {
        super.a(this.b.n.V() < 0 ? 100 : this.b.n.V(), new Runnable() { // from class: com.anythink.basead.ui.AsseblemSplashATView.4
            @Override // java.lang.Runnable
            public final void run() {
                AsseblemSplashATView asseblemSplashATView = AsseblemSplashATView.this;
                if (asseblemSplashATView.H == null) {
                    return;
                }
                AsseblemSplashATView.super.h();
            }
        });
    }
}
