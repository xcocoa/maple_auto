package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.basead.a.d;
import com.anythink.basead.c.f;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.c;
import com.anythink.core.common.o.i;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import z2.k3;

/* JADX INFO: loaded from: classes.dex */
public class SinglePictureSplashATView extends BaseSdkSplashATView {
    public SinglePictureSplashATView(Context context) {
        super(context);
    }

    public SinglePictureSplashATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
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
            str = "myoffer_splash_ad_layout_single_land";
        } else {
            layoutInflaterFrom = LayoutInflater.from(getContext());
            context = getContext();
            str = "myoffer_splash_ad_layout_single_port";
        }
        View viewInflate = layoutInflaterFrom.inflate(i.a(context, str, "layout"), this);
        o();
        com.anythink.basead.ui.d.a aVar = this.L;
        if (aVar != null) {
            aVar.a(-102).a(new com.anythink.basead.ui.c.a() { // from class: com.anythink.basead.ui.SinglePictureSplashATView.1
                @Override // com.anythink.basead.ui.c.a
                public final void a(int i, int i2) {
                    SinglePictureSplashATView.this.a(i, i2);
                }
            }).a(getContext(), viewInflate);
        }
    }

    @Override // com.anythink.basead.ui.BaseSdkSplashATView
    public final void b() {
        TextView textView = (TextView) findViewById(i.a(getContext(), "myoffer_splash_ad_install_btn", "id"));
        this.s = textView;
        final RoundImageView roundImageView = (RoundImageView) findViewById(i.a(getContext(), "myoffer_splash_bg", "id"));
        com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.y()), getResources().getDisplayMetrics().widthPixels, (getResources().getDisplayMetrics().widthPixels * 627) / k3.OooooO0, new b.a() { // from class: com.anythink.basead.ui.SinglePictureSplashATView.2
            @Override // com.anythink.core.common.res.b.a
            public final void onFail(String str, String str2) {
            }

            @Override // com.anythink.core.common.res.b.a
            public final void onSuccess(String str, final Bitmap bitmap) {
                if (TextUtils.equals(str, SinglePictureSplashATView.this.c.y())) {
                    SinglePictureSplashATView singlePictureSplashATView = SinglePictureSplashATView.this;
                    final WrapRoundImageView wrapRoundImageView = (WrapRoundImageView) singlePictureSplashATView.findViewById(i.a(singlePictureSplashATView.getContext(), "myoffer_splash_ad_content_image_area", "id"));
                    if (SinglePictureSplashATView.this.b.n.p() == 2) {
                        wrapRoundImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                        wrapRoundImageView.setImageBitmap(bitmap);
                    } else {
                        wrapRoundImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                        wrapRoundImageView.post(new Runnable() { // from class: com.anythink.basead.ui.SinglePictureSplashATView.2.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                wrapRoundImageView.setBitmapAndResize(bitmap, SinglePictureSplashATView.this.getWidth(), SinglePictureSplashATView.this.getHeight());
                            }
                        });
                    }
                    if (roundImageView != null) {
                        c.a(SinglePictureSplashATView.this.getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.SinglePictureSplashATView.2.2
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
            }
        });
        n nVar = this.b.n;
        if (nVar == null || textView == null) {
            return;
        }
        if (nVar.D() == 0 || k()) {
            textView.setVisibility(8);
            return;
        }
        textView.setVisibility(0);
        if (TextUtils.isEmpty(this.c.A())) {
            textView.setText(d.a(getContext(), this.c));
        } else {
            textView.setText(this.c.A());
        }
        this.p.add(textView);
    }

    @Override // com.anythink.basead.ui.BaseSdkSplashATView
    public final void c() {
        super.a(this.b.n.V() < 0 ? 100 : this.b.n.V(), new Runnable() { // from class: com.anythink.basead.ui.SinglePictureSplashATView.3
            @Override // java.lang.Runnable
            public final void run() {
                SinglePictureSplashATView singlePictureSplashATView;
                String str;
                SinglePictureSplashATView singlePictureSplashATView2 = SinglePictureSplashATView.this;
                if (singlePictureSplashATView2.H == null) {
                    return;
                }
                int width = singlePictureSplashATView2.getWidth();
                int height = SinglePictureSplashATView.this.getHeight();
                int i = (int) (((double) SinglePictureSplashATView.this.getResources().getDisplayMetrics().widthPixels) * 0.5d);
                int i2 = (int) (((double) SinglePictureSplashATView.this.getResources().getDisplayMetrics().heightPixels) * 0.5d);
                if (width < i) {
                    singlePictureSplashATView = SinglePictureSplashATView.this;
                    str = "Splash display width is less than 50% of screen width!";
                } else {
                    singlePictureSplashATView = SinglePictureSplashATView.this;
                    if (height >= i2) {
                        SinglePictureSplashATView.super.h();
                        return;
                    }
                    str = "Splash display height is less than 50% of screen height!";
                }
                singlePictureSplashATView.a(f.a(f.k, str));
                Log.e("anythink", str);
            }
        });
    }
}
