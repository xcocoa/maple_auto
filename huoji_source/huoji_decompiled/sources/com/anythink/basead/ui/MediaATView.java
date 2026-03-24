package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.basead.a.d;
import com.anythink.basead.ui.BaseMediaATView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.c;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.x;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaATView extends BaseMediaATView {
    public static final String TAG = "anythink_" + MediaATView.class.getSimpleName();
    public RelativeLayout g;
    public RelativeLayout h;
    public TextView i;
    public TextView j;
    public TextView k;
    public TextView l;
    public final float m;
    private TextView n;
    private TextView o;
    private ImageView p;
    private ImageView q;
    private ImageView r;
    private RoundImageView s;
    private TextView t;

    public MediaATView(Context context, l lVar, m mVar, boolean z, BaseMediaATView.a aVar) {
        super(context, lVar, mVar, z, aVar);
        this.m = 1.0f;
    }

    @Override // com.anythink.basead.ui.BaseMediaATView
    public List<View> getClickViews() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.o);
        if (this.b.D() == 1) {
            return arrayList;
        }
        arrayList.add(this.n);
        arrayList.add(this.q);
        arrayList.add(this.s);
        arrayList.add(this.t);
        n nVar = this.b;
        if (nVar != null && nVar.D() == 0) {
            arrayList.add(this.p);
            arrayList.add(this.g);
        }
        return arrayList;
    }

    @Override // com.anythink.basead.ui.BaseMediaATView
    public View getMonitorClickView() {
        return this.o;
    }

    @Override // com.anythink.basead.ui.BaseMediaATView
    public void init(int i, int i2) {
        View viewFindViewById;
        super.init(i, i2);
        View viewInflate = LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_media_ad_view", "layout"), (ViewGroup) null, false);
        FrameLayout frameLayout = this.f;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
            this.f.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
        }
        this.n = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_title", "id"));
        this.o = (TextView) findViewById(i.a(getContext(), "myoffer_media_ad_cta", "id"));
        this.p = (ImageView) findViewById(i.a(getContext(), "myoffer_media_ad_bg_blur", "id"));
        this.q = (ImageView) findViewById(i.a(getContext(), "myoffer_media_ad_main_image", "id"));
        this.r = (ImageView) findViewById(i.a(getContext(), "myoffer_ad_logo", "id"));
        this.s = (RoundImageView) findViewById(i.a(getContext(), "myoffer_media_ad_icon", "id"));
        this.t = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_desc", "id"));
        this.g = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_media_ad_container", "id"));
        this.h = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_four_element_container", "id"));
        this.i = (TextView) findViewById(i.a(getContext(), "myoffer_publisher_name", "id"));
        this.j = (TextView) findViewById(i.a(getContext(), "myoffer_privacy_agreement", "id"));
        this.k = (TextView) findViewById(i.a(getContext(), "myoffer_permission_manage", "id"));
        this.l = (TextView) findViewById(i.a(getContext(), "myoffer_version_name", "id"));
        String strV = this.a.v();
        if (TextUtils.isEmpty(strV)) {
            this.n.setVisibility(8);
            ViewGroup.LayoutParams layoutParams = this.t.getLayoutParams();
            if (layoutParams instanceof LinearLayout.LayoutParams) {
                ((LinearLayout.LayoutParams) layoutParams).topMargin = 0;
                this.t.setLayoutParams(layoutParams);
            }
        } else {
            this.n.setText(strV);
        }
        String strA = this.a.A();
        if (TextUtils.isEmpty(strA)) {
            this.o.setText(i.a(getContext(), "myoffer_cta_learn_more", com.anythink.expressad.foundation.h.i.g));
        } else {
            this.o.setText(strA);
        }
        this.q.setScaleType(ImageView.ScaleType.FIT_CENTER);
        com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.a.y()), i, i2, new b.a() { // from class: com.anythink.basead.ui.MediaATView.1
            @Override // com.anythink.core.common.res.b.a
            public final void onFail(String str, String str2) {
                Log.e(MediaATView.TAG, "load: image load fail:".concat(String.valueOf(str2)));
            }

            @Override // com.anythink.core.common.res.b.a
            public final void onSuccess(String str, final Bitmap bitmap) {
                if (TextUtils.equals(MediaATView.this.a.y(), str)) {
                    MediaATView.this.q.setImageBitmap(bitmap);
                    MediaATView.this.post(new Runnable() { // from class: com.anythink.basead.ui.MediaATView.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            int[] iArrA = x.a(MediaATView.this.getWidth(), MediaATView.this.getHeight(), bitmap.getWidth() / bitmap.getHeight());
                            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) MediaATView.this.q.getLayoutParams();
                            if (layoutParams2 != null) {
                                layoutParams2.width = iArrA[0];
                                layoutParams2.height = iArrA[1];
                                layoutParams2.addRule(13);
                                MediaATView.this.q.setLayoutParams(layoutParams2);
                            }
                        }
                    });
                    c.a(MediaATView.this.getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.MediaATView.1.2
                        @Override // com.anythink.core.common.o.c.a
                        public final void a() {
                        }

                        @Override // com.anythink.core.common.o.c.a
                        public final void a(Bitmap bitmap2) {
                            MediaATView.this.p.setScaleType(ImageView.ScaleType.FIT_XY);
                            MediaATView.this.p.setImageBitmap(bitmap2);
                        }
                    });
                }
            }
        });
        if (TextUtils.isEmpty(this.a.z())) {
            this.r.setVisibility(8);
        } else {
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.a.z()), new b.a() { // from class: com.anythink.basead.ui.MediaATView.2
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                    MediaATView.this.r.setVisibility(8);
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    if (TextUtils.equals(MediaATView.this.a.z(), str)) {
                        MediaATView.this.r.setImageBitmap(bitmap);
                        ViewGroup.LayoutParams layoutParams2 = MediaATView.this.r.getLayoutParams();
                        int i3 = layoutParams2.height;
                        layoutParams2.width = (int) (i3 * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                        layoutParams2.height = i3;
                        MediaATView.this.r.setLayoutParams(layoutParams2);
                        MediaATView.this.r.setScaleType(ImageView.ScaleType.FIT_XY);
                        MediaATView.this.r.setImageBitmap(bitmap);
                        MediaATView.this.r.setVisibility(0);
                    }
                }
            });
        }
        String strW = this.a.w();
        if (TextUtils.isEmpty(strW)) {
            this.t.setVisibility(8);
        } else {
            this.t.setText(strW);
        }
        if (TextUtils.isEmpty(this.a.x())) {
            this.s.setVisibility(8);
        } else {
            this.s.setRadiusInDip(6);
            this.s.setNeedRadiu(true);
            ViewGroup.LayoutParams layoutParams2 = this.s.getLayoutParams();
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.a.x()), layoutParams2.width, layoutParams2.height, new b.a() { // from class: com.anythink.basead.ui.MediaATView.3
                @Override // com.anythink.core.common.res.b.a
                public final void onFail(String str, String str2) {
                }

                @Override // com.anythink.core.common.res.b.a
                public final void onSuccess(String str, Bitmap bitmap) {
                    if (TextUtils.equals(MediaATView.this.a.x(), str)) {
                        MediaATView.this.s.setImageBitmap(bitmap);
                    }
                }
            });
        }
        if (this.a.O()) {
            RelativeLayout relativeLayout = this.h;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(0);
                this.h.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.MediaATView.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                    }
                });
            }
            TextView textView = this.i;
            if (textView != null) {
                textView.setVisibility(0);
                this.i.setText(this.a.J());
                this.i.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.MediaATView.5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                    }
                });
            }
            TextView textView2 = this.j;
            if (textView2 != null) {
                textView2.setVisibility(0);
                this.j.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.MediaATView.6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        com.anythink.core.common.o.n.a(com.anythink.core.common.b.n.a().f(), MediaATView.this.a.L());
                    }
                });
            }
            TextView textView3 = this.k;
            if (textView3 != null) {
                textView3.setVisibility(0);
                this.k.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.MediaATView.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        com.anythink.core.common.o.n.a(com.anythink.core.common.b.n.a().f(), MediaATView.this.a.M());
                    }
                });
            }
            TextView textView4 = this.l;
            if (textView4 != null) {
                textView4.setVisibility(0);
                this.l.setText(getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), this.a.K()));
                this.l.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.MediaATView.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                    }
                });
            }
        }
        if (d.a(this.a) || (viewFindViewById = findViewById(i.a(getContext(), "myoffer_media_ad_main_image_container", "id"))) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams3 = viewFindViewById.getLayoutParams();
        if (layoutParams3 instanceof RelativeLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams3).bottomMargin = i.a(getContext(), 84.0f);
            viewFindViewById.setLayoutParams(layoutParams3);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }
}
