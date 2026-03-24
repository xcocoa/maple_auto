package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.anythink.core.common.f.ab;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.f.z;
import com.anythink.core.common.o.i;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseSdkSplashATView extends BaseSplashATView {
    public static final int TYPE_ASSEBLEM = 1;
    public static final int TYPE_SINGLE_PICTURE = 0;
    public TextView A;
    public final View.OnClickListener B;
    public RoundImageView v;
    public ViewGroup w;
    public TextView x;
    public TextView y;
    public TextView z;

    public BaseSdkSplashATView(Context context) {
        super(context);
        this.B = new View.OnClickListener() { // from class: com.anythink.basead.ui.BaseSdkSplashATView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n nVar = BaseSdkSplashATView.this.b.n;
                if (nVar == null || nVar.D() != 0) {
                    return;
                }
                BaseSdkSplashATView.super.a(1, 3);
            }
        };
    }

    public BaseSdkSplashATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
        super(context, mVar, lVar, aVar);
        this.B = new View.OnClickListener() { // from class: com.anythink.basead.ui.BaseSdkSplashATView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n nVar = BaseSdkSplashATView.this.b.n;
                if (nVar == null || nVar.D() != 0) {
                    return;
                }
                BaseSdkSplashATView.super.a(1, 3);
            }
        };
        c();
        p();
        a(this.D, this.b.n.n());
    }

    public static boolean isSinglePicture(l lVar, n nVar) {
        return ((lVar instanceof z) && (nVar instanceof ab)) ? 2 == ((ab) nVar).at() : (lVar instanceof aj) && 1 == ((aj) lVar).ai();
    }

    public abstract void b();

    public abstract void c();

    public void o() {
        b();
        this.w = (ViewGroup) findViewById(i.a(getContext(), "myoffer_four_element_container", "id"));
        this.x = (TextView) findViewById(i.a(getContext(), "myoffer_publisher_name", "id"));
        this.y = (TextView) findViewById(i.a(getContext(), "myoffer_privacy_agreement", "id"));
        this.z = (TextView) findViewById(i.a(getContext(), "myoffer_permission_manage", "id"));
        this.A = (TextView) findViewById(i.a(getContext(), "myoffer_version_name", "id"));
        if (this.c.O()) {
            ViewGroup viewGroup = this.w;
            if (viewGroup != null) {
                viewGroup.setVisibility(0);
            }
            TextView textView = this.x;
            if (textView != null) {
                textView.setVisibility(0);
                this.x.setText(this.c.J());
                this.p.add(this.x);
            }
            TextView textView2 = this.y;
            if (textView2 != null) {
                textView2.setVisibility(0);
                this.y.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.BaseSdkSplashATView.2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        com.anythink.core.common.o.n.a(com.anythink.core.common.b.n.a().f(), BaseSdkSplashATView.this.c.L());
                    }
                });
            }
            TextView textView3 = this.z;
            if (textView3 != null) {
                textView3.setVisibility(0);
                this.z.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.BaseSdkSplashATView.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        com.anythink.core.common.o.n.a(com.anythink.core.common.b.n.a().f(), BaseSdkSplashATView.this.c.M());
                    }
                });
            }
            TextView textView4 = this.A;
            if (textView4 != null) {
                textView4.setVisibility(0);
                this.A.setText(getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), this.c.K()));
                this.p.add(this.A);
            }
        } else {
            ViewGroup viewGroup2 = this.w;
            if (viewGroup2 != null) {
                viewGroup2.setVisibility(8);
            }
            TextView textView5 = this.A;
            if (textView5 != null) {
                textView5.setVisibility(8);
            }
            TextView textView6 = this.x;
            if (textView6 != null) {
                textView6.setVisibility(8);
            }
            TextView textView7 = this.y;
            if (textView7 != null) {
                textView7.setVisibility(8);
            }
            TextView textView8 = this.z;
            if (textView8 != null) {
                textView8.setVisibility(8);
            }
            try {
                View viewFindViewById = findViewById(i.a(getContext(), "myoffer_four_element_container_bg", "id"));
                if (viewFindViewById != null) {
                    viewFindViewById.setBackgroundDrawable(null);
                }
            } catch (Throwable unused) {
            }
        }
        RoundImageView roundImageView = (RoundImageView) findViewById(i.a(getContext(), "myoffer_ad_logo", "id"));
        this.v = roundImageView;
        final ViewGroup.LayoutParams layoutParams = roundImageView.getLayoutParams();
        if (!TextUtils.isEmpty(this.c.z())) {
            this.v.setVisibility(0);
            int i = layoutParams.width;
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.z()), i, i, new b.a() { // from class: com.anythink.basead.ui.BaseSdkSplashATView.4
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                    BaseSdkSplashATView.this.v.setVisibility(8);
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    if (TextUtils.equals(str, BaseSdkSplashATView.this.c.z())) {
                        ViewGroup.LayoutParams layoutParams2 = layoutParams;
                        int i2 = layoutParams2.height;
                        layoutParams2.width = (int) (i2 * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                        layoutParams2.height = i2;
                        BaseSdkSplashATView.this.v.setLayoutParams(layoutParams2);
                        BaseSdkSplashATView.this.v.setScaleType(ImageView.ScaleType.FIT_XY);
                        BaseSdkSplashATView.this.v.setImageBitmap(bitmap);
                        BaseSdkSplashATView.this.v.setVisibility(0);
                    }
                }
            });
        } else if (this.c.N() != null) {
            Bitmap bitmapN = this.c.N();
            int i2 = layoutParams.height;
            layoutParams.width = (int) (i2 * ((bitmapN.getWidth() * 1.0f) / bitmapN.getHeight()));
            layoutParams.height = i2;
            this.v.setLayoutParams(layoutParams);
            this.v.setScaleType(ImageView.ScaleType.FIT_XY);
            this.v.setImageBitmap(bitmapN);
            this.v.setImageBitmap(this.c.N());
            this.v.setVisibility(0);
        } else {
            this.v.setVisibility(8);
        }
        this.p.add(this.v);
    }

    @Override // com.anythink.basead.ui.BaseSplashATView
    public void p() {
        super.p();
        setOnClickListener(this.B);
    }
}
