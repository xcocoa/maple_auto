package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.f.aj;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.z;
import com.anythink.core.common.o.c;
import com.anythink.core.common.o.i;
import com.anythink.core.common.o.n;
import com.anythink.core.common.o.x;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.res.image.RecycleImageView;
import com.anythink.core.common.ui.component.RoundImageView;

/* JADX INFO: loaded from: classes.dex */
public class SdkBannerATView extends BaseBannerATView {
    private static final int B = 1;
    private static final int C = 2;
    private int A;
    private final View.OnClickListener D;
    private final View.OnClickListener E;
    public boolean y;
    public String z;

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$10, reason: invalid class name */
    public class AnonymousClass10 implements b.a {
        public final /* synthetic */ ImageView a;

        public AnonymousClass10(ImageView imageView) {
            this.a = imageView;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(SdkBannerATView.this.c.z(), str)) {
                this.a.setImageBitmap(bitmap);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$11, reason: invalid class name */
    public class AnonymousClass11 implements View.OnClickListener {
        public AnonymousClass11() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$12, reason: invalid class name */
    public class AnonymousClass12 implements View.OnClickListener {
        public AnonymousClass12() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(com.anythink.core.common.b.n.a().f(), SdkBannerATView.this.c.L());
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$13, reason: invalid class name */
    public class AnonymousClass13 implements View.OnClickListener {
        public AnonymousClass13() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(com.anythink.core.common.b.n.a().f(), SdkBannerATView.this.c.M());
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$14, reason: invalid class name */
    public class AnonymousClass14 implements View.OnClickListener {
        public AnonymousClass14() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$15, reason: invalid class name */
    public class AnonymousClass15 implements b.a {
        public final /* synthetic */ RoundImageView a;

        public AnonymousClass15(RoundImageView roundImageView) {
            this.a = roundImageView;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(SdkBannerATView.this.c.x(), str)) {
                this.a.setImageBitmap(bitmap);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {
        public final /* synthetic */ ImageView a;

        public AnonymousClass2(ImageView imageView) {
            this.a = imageView;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(SdkBannerATView.this.c.z(), str)) {
                this.a.setImageBitmap(bitmap);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$3, reason: invalid class name */
    public class AnonymousClass3 implements b.a {
        public final /* synthetic */ RoundImageView a;

        public AnonymousClass3(RoundImageView roundImageView) {
            this.a = roundImageView;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(SdkBannerATView.this.c.y(), str)) {
                this.a.setImageBitmap(bitmap);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$4, reason: invalid class name */
    public class AnonymousClass4 implements View.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$5, reason: invalid class name */
    public class AnonymousClass5 implements View.OnClickListener {
        public AnonymousClass5() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(com.anythink.core.common.b.n.a().f(), SdkBannerATView.this.c.L());
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$6, reason: invalid class name */
    public class AnonymousClass6 implements View.OnClickListener {
        public AnonymousClass6() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(com.anythink.core.common.b.n.a().f(), SdkBannerATView.this.c.M());
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$7, reason: invalid class name */
    public class AnonymousClass7 implements View.OnClickListener {
        public AnonymousClass7() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.SdkBannerATView$9, reason: invalid class name */
    public class AnonymousClass9 implements b.a {
        public final /* synthetic */ String a;
        public final /* synthetic */ RecycleImageView b;
        public final /* synthetic */ RecycleImageView c;

        public AnonymousClass9(String str, RecycleImageView recycleImageView, RecycleImageView recycleImageView2) {
            this.a = str;
            this.b = recycleImageView;
            this.c = recycleImageView2;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, final Bitmap bitmap) {
            if (TextUtils.equals(this.a, str)) {
                this.b.setImageBitmap(bitmap);
                SdkBannerATView.this.post(new Runnable() { // from class: com.anythink.basead.ui.SdkBannerATView.9.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int[] iArrA = x.a(SdkBannerATView.this.getWidth(), SdkBannerATView.this.getHeight(), bitmap.getWidth() / bitmap.getHeight());
                        ViewGroup.LayoutParams layoutParams = AnonymousClass9.this.b.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.width = iArrA[0];
                            layoutParams.height = iArrA[1];
                            AnonymousClass9.this.b.setLayoutParams(layoutParams);
                        }
                    }
                });
                c.a(SdkBannerATView.this.getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.SdkBannerATView.9.2
                    @Override // com.anythink.core.common.o.c.a
                    public final void a() {
                    }

                    @Override // com.anythink.core.common.o.c.a
                    public final void a(Bitmap bitmap2) {
                        AnonymousClass9.this.c.setImageBitmap(bitmap2);
                    }
                });
            }
        }
    }

    public SdkBannerATView(Context context) {
        super(context);
        this.A = 2;
        this.D = new View.OnClickListener() { // from class: com.anythink.basead.ui.SdkBannerATView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (2 != SdkBannerATView.this.A) {
                    SdkBannerATView.super.a(1, 3);
                    return;
                }
                com.anythink.core.common.f.n nVar = SdkBannerATView.this.b.n;
                if (nVar == null || nVar.D() != 0) {
                    return;
                }
                SdkBannerATView.super.a(1, 3);
            }
        };
        this.E = new View.OnClickListener() { // from class: com.anythink.basead.ui.SdkBannerATView.8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SdkBannerATView sdkBannerATView = SdkBannerATView.this;
                View view2 = sdkBannerATView.s;
                if (view2 == null || view2 != view) {
                    SdkBannerATView.super.a(1, 2);
                } else {
                    SdkBannerATView.super.a(1, 1);
                }
            }
        };
    }

    public SdkBannerATView(Context context, m mVar, l lVar, com.anythink.basead.e.a aVar) {
        super(context, mVar, lVar, aVar);
        this.A = 2;
        this.D = new View.OnClickListener() { // from class: com.anythink.basead.ui.SdkBannerATView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (2 != SdkBannerATView.this.A) {
                    SdkBannerATView.super.a(1, 3);
                    return;
                }
                com.anythink.core.common.f.n nVar = SdkBannerATView.this.b.n;
                if (nVar == null || nVar.D() != 0) {
                    return;
                }
                SdkBannerATView.super.a(1, 3);
            }
        };
        this.E = new View.OnClickListener() { // from class: com.anythink.basead.ui.SdkBannerATView.8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SdkBannerATView sdkBannerATView = SdkBannerATView.this;
                View view2 = sdkBannerATView.s;
                if (view2 == null || view2 != view) {
                    SdkBannerATView.super.a(1, 2);
                } else {
                    SdkBannerATView.super.a(1, 1);
                }
            }
        };
        b();
        c();
    }

    private int a(String str) {
        l lVar = this.c;
        int i = 1;
        if (!(lVar instanceof aj) ? !(lVar instanceof z) || TextUtils.isEmpty(str) || !com.anythink.basead.a.b.c.c(str) : ((aj) lVar).ai() != 1) {
            i = 2;
        }
        this.A = i;
        return i;
    }

    private void b(String str) {
        RelativeLayout relativeLayout = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_root", "id"));
        this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
        RelativeLayout relativeLayout2 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_container", "id"));
        TextView textView = (TextView) findViewById(i.a(getContext(), "myoffer_banner_publisher_name", "id"));
        TextView textView2 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_privacy_agreement", "id"));
        TextView textView3 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_permission_manage", "id"));
        TextView textView4 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_version_name", "id"));
        if (this.b.n.y() == 0) {
            this.w.setVisibility(0);
            if (TextUtils.equals(com.anythink.core.common.f.n.d, this.z)) {
                ViewGroup.LayoutParams layoutParams = this.w.getLayoutParams();
                layoutParams.width = i.a(getContext(), 23.0f);
                layoutParams.height = i.a(getContext(), 23.0f);
                this.w.setLayoutParams(layoutParams);
            }
            a(this.w, this.b.n.n());
        } else {
            this.w.setVisibility(8);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        layoutParams2.width = -1;
        layoutParams2.height = -1;
        relativeLayout.setLayoutParams(layoutParams2);
        RecycleImageView recycleImageView = new RecycleImageView(getContext());
        recycleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(recycleImageView, 0, new RelativeLayout.LayoutParams(-1, -1));
        RecycleImageView recycleImageView2 = new RecycleImageView(getContext());
        recycleImageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
        com.anythink.core.common.res.b.a(getContext()).a(new e(1, str), new AnonymousClass9(str, recycleImageView2, recycleImageView));
        this.p.add(recycleImageView2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams3.addRule(13);
        addView(recycleImageView2, 1, layoutParams3);
        if (!TextUtils.isEmpty(this.c.z())) {
            ImageView imageView = (ImageView) findViewById(i.a(getContext(), "myoffer_banner_self_ad_logo", "id"));
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.z()), new AnonymousClass10(imageView));
            this.p.add(imageView);
        }
        if (this.c.O()) {
            if (relativeLayout2 != null) {
                relativeLayout2.setVisibility(0);
            }
            if (textView != null) {
                textView.setVisibility(0);
                textView.setText(this.c.J());
                textView.setOnClickListener(new AnonymousClass11());
            }
            if (textView2 != null) {
                textView2.setVisibility(0);
                textView2.setOnClickListener(new AnonymousClass12());
            }
            if (textView3 != null) {
                textView3.setVisibility(0);
                textView3.setOnClickListener(new AnonymousClass13());
            }
            if (textView4 != null) {
                textView4.setVisibility(0);
                textView4.setText(getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), this.c.K()));
                textView4.setOnClickListener(new AnonymousClass14());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03e2 A[PHI: r11 r15 r18
      0x03e2: PHI (r11v12 java.lang.Object) = (r11v11 java.lang.Object), (r11v13 java.lang.Object) binds: [B:108:0x03e0, B:104:0x03d1] A[DONT_GENERATE, DONT_INLINE]
      0x03e2: PHI (r15v4 java.lang.Object) = (r15v3 java.lang.Object), (r15v5 java.lang.Object) binds: [B:108:0x03e0, B:104:0x03d1] A[DONT_GENERATE, DONT_INLINE]
      0x03e2: PHI (r18v2 android.widget.TextView) = (r18v1 android.widget.TextView), (r18v3 android.widget.TextView) binds: [B:108:0x03e0, B:104:0x03d1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0784  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x07b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void o() {
        byte b;
        String str;
        Object obj;
        TextView textView;
        Object obj2;
        byte b2;
        TextView textView2;
        TextView textView3;
        RelativeLayout relativeLayout;
        TextView textView4;
        ImageView imageView;
        RoundImageView roundImageView;
        Object obj3;
        byte b3;
        RelativeLayout relativeLayout2;
        TextView textView5;
        byte b4;
        byte b5;
        String strX = this.b.n.x();
        l lVar = this.c;
        String strY = lVar instanceof aj ? lVar.y() : null;
        switch (strX.hashCode()) {
            case -559799608:
                b = !strX.equals(com.anythink.core.common.f.n.c) ? (byte) -1 : (byte) 1;
                break;
            case 1507809730:
                if (strX.equals(com.anythink.core.common.f.n.a)) {
                    b = 3;
                    break;
                }
                break;
            case 1507809854:
                if (strX.equals(com.anythink.core.common.f.n.b)) {
                    b = 0;
                    break;
                }
                break;
            case 1622564786:
                if (strX.equals(com.anythink.core.common.f.n.d)) {
                    b = 2;
                    break;
                }
                break;
        }
        String str2 = "myoffer_banner_ad_layout_320x50";
        if (b == 0) {
            this.z = com.anythink.core.common.f.n.b;
            if (strY == null) {
                l lVar2 = this.c;
                if (lVar2 instanceof z) {
                    strY = ((z) lVar2).b();
                }
            }
            this.y = true;
            str2 = "myoffer_banner_ad_layout_320x90";
        } else if (b == 1) {
            this.z = com.anythink.core.common.f.n.c;
            if (strY == null) {
                l lVar3 = this.c;
                if (lVar3 instanceof z) {
                    strY = ((z) lVar3).c();
                }
            }
            this.y = true;
            str2 = "myoffer_banner_ad_layout_300x250";
        } else if (b != 2) {
            this.z = com.anythink.core.common.f.n.a;
            if (strY == null) {
                l lVar4 = this.c;
                if (lVar4 instanceof z) {
                    strY = ((z) lVar4).a();
                }
            }
        } else {
            this.z = com.anythink.core.common.f.n.d;
            if (strY == null) {
                l lVar5 = this.c;
                if (lVar5 instanceof z) {
                    strY = ((z) lVar5).e();
                }
            }
            this.y = true;
            str2 = "myoffer_banner_ad_layout_728x90";
        }
        l lVar6 = this.c;
        int i = (!(lVar6 instanceof aj) ? (lVar6 instanceof z) && !TextUtils.isEmpty(strY) && com.anythink.basead.a.b.c.c(strY) : ((aj) lVar6).ai() == 1) ? 2 : 1;
        this.A = i;
        if (1 == i) {
            LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_banner_ad_layout_pure_picture", "layout"), this);
            RelativeLayout relativeLayout3 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_root", "id"));
            this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
            RelativeLayout relativeLayout4 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_container", "id"));
            TextView textView6 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_publisher_name", "id"));
            TextView textView7 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_privacy_agreement", "id"));
            TextView textView8 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_permission_manage", "id"));
            TextView textView9 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_version_name", "id"));
            if (this.b.n.y() == 0) {
                this.w.setVisibility(0);
                if (TextUtils.equals(com.anythink.core.common.f.n.d, this.z)) {
                    ViewGroup.LayoutParams layoutParams = this.w.getLayoutParams();
                    layoutParams.width = i.a(getContext(), 23.0f);
                    layoutParams.height = i.a(getContext(), 23.0f);
                    this.w.setLayoutParams(layoutParams);
                }
                a(this.w, this.b.n.n());
            } else {
                this.w.setVisibility(8);
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) relativeLayout3.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -1;
            relativeLayout3.setLayoutParams(layoutParams2);
            RecycleImageView recycleImageView = new RecycleImageView(getContext());
            recycleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            addView(recycleImageView, 0, new RelativeLayout.LayoutParams(-1, -1));
            RecycleImageView recycleImageView2 = new RecycleImageView(getContext());
            recycleImageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, strY), new AnonymousClass9(strY, recycleImageView2, recycleImageView));
            this.p.add(recycleImageView2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams3.addRule(13);
            addView(recycleImageView2, 1, layoutParams3);
            if (!TextUtils.isEmpty(this.c.z())) {
                ImageView imageView2 = (ImageView) findViewById(i.a(getContext(), "myoffer_banner_self_ad_logo", "id"));
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.z()), new AnonymousClass10(imageView2));
                this.p.add(imageView2);
            }
            if (this.c.O()) {
                if (relativeLayout4 != null) {
                    relativeLayout4.setVisibility(0);
                }
                if (textView6 != null) {
                    textView6.setVisibility(0);
                    textView6.setText(this.c.J());
                    textView6.setOnClickListener(new AnonymousClass11());
                }
                if (textView7 != null) {
                    textView7.setVisibility(0);
                    textView7.setOnClickListener(new AnonymousClass12());
                }
                if (textView8 != null) {
                    textView8.setVisibility(0);
                    textView8.setOnClickListener(new AnonymousClass13());
                }
                if (textView9 != null) {
                    textView9.setVisibility(0);
                    textView9.setText(getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), this.c.K()));
                    textView9.setOnClickListener(new AnonymousClass14());
                    return;
                }
                return;
            }
            return;
        }
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), str2, "layout"), this);
        RoundImageView roundImageView2 = (RoundImageView) findViewById(i.a(getContext(), "myoffer_banner_icon", "id"));
        TextView textView10 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_title", "id"));
        TextView textView11 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_desc", "id"));
        TextView textView12 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_install_btn", "id"));
        this.s = textView12;
        SpreadAnimLayout spreadAnimLayout = (SpreadAnimLayout) findViewById(i.a(getContext(), "myoffer_banner_spread_layout", "id"));
        this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
        RelativeLayout relativeLayout5 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_container", "id"));
        TextView textView13 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_publisher_name", "id"));
        TextView textView14 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_privacy_agreement", "id"));
        TextView textView15 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_permission_manage", "id"));
        TextView textView16 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_version_name", "id"));
        boolean z = this.b.n.y() == 0;
        if (!z) {
            str = com.anythink.expressad.foundation.h.i.g;
            this.w.setVisibility(8);
            String str3 = this.z;
            str3.hashCode();
            switch (str3.hashCode()) {
                case 1507809730:
                    obj = com.anythink.core.common.f.n.b;
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                    b2 = !str3.equals(obj2) ? (byte) -1 : (byte) 0;
                    break;
                case 1507809854:
                    obj = com.anythink.core.common.f.n.b;
                    boolean zEquals = str3.equals(obj);
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                    if (zEquals) {
                        b2 = 1;
                        break;
                    }
                    break;
                case 1622564786:
                    if (str3.equals(com.anythink.core.common.f.n.d)) {
                        obj = com.anythink.core.common.f.n.b;
                        b2 = 2;
                    }
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                default:
                    obj = com.anythink.core.common.f.n.b;
                    b2 = -1;
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                    break;
            }
            switch (b2) {
                case 0:
                    textView2 = textView14;
                    textView3 = textView13;
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) spreadAnimLayout.getLayoutParams();
                    layoutParams4.rightMargin = i.a(getContext(), 10.0f);
                    spreadAnimLayout.setLayoutParams(layoutParams4);
                    break;
                case 1:
                    textView2 = textView14;
                    textView3 = textView13;
                    RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                    layoutParams5.rightMargin = i.a(getContext(), 10.0f);
                    textView10.setLayoutParams(layoutParams5);
                    break;
                case 2:
                    RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) spreadAnimLayout.getLayoutParams();
                    textView2 = textView14;
                    textView3 = textView13;
                    layoutParams6.rightMargin = i.a(getContext(), 20.0f);
                    spreadAnimLayout.setLayoutParams(layoutParams6);
                    break;
                default:
                    textView2 = textView14;
                    textView3 = textView13;
                    break;
            }
        } else {
            CloseImageView closeImageView = this.w;
            str = com.anythink.expressad.foundation.h.i.g;
            closeImageView.setVisibility(0);
            a(this.w, this.b.n.n());
            textView3 = textView13;
            obj = com.anythink.core.common.f.n.b;
            textView = textView15;
            obj2 = com.anythink.core.common.f.n.a;
            textView2 = textView14;
        }
        if (TextUtils.isEmpty(this.c.x())) {
            relativeLayout = relativeLayout5;
            textView4 = textView16;
            com.anythink.basead.ui.d.c.a(roundImageView2);
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
            if (layoutParams7 != null) {
                layoutParams7.leftMargin = 0;
                textView10.setLayoutParams(layoutParams7);
            }
        } else {
            ViewGroup.LayoutParams layoutParams8 = roundImageView2.getLayoutParams();
            roundImageView2.setRadiusInDip(2);
            roundImageView2.setNeedRadiu(true);
            relativeLayout = relativeLayout5;
            textView4 = textView16;
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.x()), layoutParams8.width, layoutParams8.height, new AnonymousClass15(roundImageView2));
        }
        this.p.add(roundImageView2);
        textView10.setText(this.c.v());
        this.p.add(textView10);
        textView12.setText(this.c.A());
        this.p.add(textView12);
        if (textView11 != null) {
            textView11.setText(this.c.w());
            this.p.add(textView11);
        }
        if (TextUtils.isEmpty(this.c.z())) {
            imageView = null;
        } else {
            imageView = (ImageView) findViewById(i.a(getContext(), "myoffer_banner_self_ad_logo", "id"));
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.z()), new AnonymousClass2(imageView));
        }
        this.p.add(imageView);
        if (this.y) {
            roundImageView = (RoundImageView) findViewById(i.a(getContext(), "myoffer_banner_main_image", "id"));
            if (!TextUtils.isEmpty(this.c.y())) {
                roundImageView.getLayoutParams();
                roundImageView.setRadiusInDip(2);
                roundImageView.setNeedRadiu(true);
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.y()), new AnonymousClass3(roundImageView));
                this.p.add(roundImageView);
            }
        } else {
            roundImageView = null;
        }
        this.p.add(roundImageView);
        if (TextUtils.isEmpty(this.c.A())) {
            spreadAnimLayout.setVisibility(8);
            textView12.setVisibility(8);
            String str4 = this.z;
            switch (str4.hashCode()) {
                case -559799608:
                    obj3 = com.anythink.core.common.f.n.c;
                    b3 = !str4.equals(obj3) ? (byte) -1 : (byte) 1;
                    break;
                case 1507809730:
                    if (!str4.equals(obj2)) {
                        obj3 = com.anythink.core.common.f.n.c;
                    } else {
                        obj3 = com.anythink.core.common.f.n.c;
                        b3 = 3;
                    }
                    break;
                case 1507809854:
                    if (!str4.equals(obj)) {
                        obj3 = com.anythink.core.common.f.n.c;
                    } else {
                        obj3 = com.anythink.core.common.f.n.c;
                        b3 = 0;
                    }
                    break;
                case 1622564786:
                    if (!str4.equals(com.anythink.core.common.f.n.d)) {
                        obj3 = com.anythink.core.common.f.n.c;
                    } else {
                        obj3 = com.anythink.core.common.f.n.c;
                        b3 = 2;
                    }
                    break;
                default:
                    obj3 = com.anythink.core.common.f.n.c;
                    break;
            }
            if (b3 != 0) {
                if (b3 != 1) {
                    if (b3 != 2) {
                        RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                        layoutParams9.addRule(11);
                        layoutParams9.rightMargin = i.a(getContext(), z ? 18.0f : 10.0f);
                        textView10.setLayoutParams(layoutParams9);
                        if (textView4 != null) {
                            RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) textView4.getLayoutParams();
                            layoutParams10.rightMargin = i.a(getContext(), 55.0f);
                            textView5 = textView4;
                            textView5.setLayoutParams(layoutParams10);
                        } else {
                            textView5 = textView4;
                        }
                    } else {
                        textView5 = textView4;
                        RelativeLayout.LayoutParams layoutParams11 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                        layoutParams11.rightMargin = i.a(getContext(), 18.0f);
                        textView10.setLayoutParams(layoutParams11);
                        if (textView11 != null) {
                            RelativeLayout.LayoutParams layoutParams12 = (RelativeLayout.LayoutParams) textView11.getLayoutParams();
                            layoutParams12.rightMargin = i.a(getContext(), 114.0f);
                            textView11.setLayoutParams(layoutParams12);
                        }
                        if (relativeLayout != null) {
                            RelativeLayout.LayoutParams layoutParams13 = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                            layoutParams13.rightMargin = i.a(getContext(), 114.0f);
                            relativeLayout2 = relativeLayout;
                            relativeLayout2.setLayoutParams(layoutParams13);
                        }
                    }
                    relativeLayout2 = relativeLayout;
                }
                if (!this.c.O()) {
                    byte b6 = 0;
                    textView11.setVisibility(0);
                    String str5 = this.z;
                    switch (str5.hashCode()) {
                        case -559799608:
                            b6 = !str5.equals(obj3) ? (byte) -1 : (byte) 2;
                            break;
                        case 1507809730:
                            if (!str5.equals(obj2)) {
                            }
                            break;
                        case 1507809854:
                            if (str5.equals(obj)) {
                                b6 = 1;
                                break;
                            }
                            break;
                        case 1622564786:
                            if (str5.equals(com.anythink.core.common.f.n.d)) {
                                b6 = 3;
                                break;
                            }
                            break;
                    }
                    if (b6 != 0) {
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams14 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                    layoutParams14.topMargin = i.a(getContext(), 8.0f);
                    textView10.setLayoutParams(layoutParams14);
                    return;
                }
                textView11.setVisibility(8);
                String str6 = this.z;
                switch (str6.hashCode()) {
                    case -559799608:
                        b4 = !str6.equals(obj3) ? (byte) -1 : (byte) 0;
                        break;
                    case 1507809730:
                        if (str6.equals(obj2)) {
                            b4 = 3;
                            break;
                        }
                        break;
                    case 1507809854:
                        if (str6.equals(obj)) {
                            b4 = 1;
                            break;
                        }
                        break;
                    case 1622564786:
                        if (str6.equals(com.anythink.core.common.f.n.d)) {
                            b4 = 2;
                            break;
                        }
                        break;
                }
                if (b4 == 0 && imageView != null) {
                    RelativeLayout.LayoutParams layoutParams15 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                    layoutParams15.topMargin = i.a(getContext(), 8.0f);
                    imageView.setLayoutParams(layoutParams15);
                }
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(0);
                }
                if (textView3 != null) {
                    TextView textView17 = textView3;
                    textView17.setVisibility(0);
                    textView17.setText(this.c.J());
                    textView17.setOnClickListener(new AnonymousClass4());
                }
                if (textView2 != null) {
                    TextView textView18 = textView2;
                    textView18.setVisibility(0);
                    textView18.setOnClickListener(new AnonymousClass5());
                }
                if (textView != null) {
                    TextView textView19 = textView;
                    textView19.setVisibility(0);
                    textView19.setOnClickListener(new AnonymousClass6());
                }
                if (textView5 != null) {
                    textView5.setVisibility(0);
                    String str7 = this.z;
                    switch (str7.hashCode()) {
                        case -559799608:
                            b5 = !str7.equals(obj3) ? (byte) -1 : (byte) 2;
                            break;
                        case 1507809730:
                            if (str7.equals(obj2)) {
                                b5 = 3;
                                break;
                            }
                            break;
                        case 1507809854:
                            if (str7.equals(obj)) {
                                b5 = 0;
                                break;
                            }
                            break;
                        case 1622564786:
                            if (str7.equals(com.anythink.core.common.f.n.d)) {
                                b5 = 1;
                                break;
                            }
                            break;
                    }
                    textView5.setText((b5 == 0 || b5 == 1) ? getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", str), this.c.K() + "  " + this.c.J()) : getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", str), this.c.K()));
                    textView5.setOnClickListener(new AnonymousClass7());
                    return;
                }
                return;
            }
            relativeLayout2 = relativeLayout;
            textView5 = textView4;
            RelativeLayout.LayoutParams layoutParams16 = (RelativeLayout.LayoutParams) roundImageView2.getLayoutParams();
            layoutParams16.addRule(15);
            layoutParams16.addRule(6, -1);
            roundImageView2.setLayoutParams(layoutParams16);
            if (!this.c.O()) {
            }
        } else {
            spreadAnimLayout.setVisibility(0);
            textView12.setVisibility(0);
            this.q = textView12;
            obj3 = com.anythink.core.common.f.n.c;
        }
        relativeLayout2 = relativeLayout;
        textView5 = textView4;
        if (!this.c.O()) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0435  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x04a5  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0383  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void p() {
        TextView textView;
        TextView textView2;
        RelativeLayout relativeLayout;
        TextView textView3;
        ImageView imageView;
        RoundImageView roundImageView;
        byte b;
        RelativeLayout relativeLayout2;
        TextView textView4;
        byte b2;
        byte b3;
        byte b4;
        RoundImageView roundImageView2 = (RoundImageView) findViewById(i.a(getContext(), "myoffer_banner_icon", "id"));
        TextView textView5 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_title", "id"));
        TextView textView6 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_desc", "id"));
        TextView textView7 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_install_btn", "id"));
        this.s = textView7;
        SpreadAnimLayout spreadAnimLayout = (SpreadAnimLayout) findViewById(i.a(getContext(), "myoffer_banner_spread_layout", "id"));
        this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
        RelativeLayout relativeLayout3 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_container", "id"));
        TextView textView8 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_publisher_name", "id"));
        TextView textView9 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_privacy_agreement", "id"));
        TextView textView10 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_permission_manage", "id"));
        TextView textView11 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_version_name", "id"));
        boolean z = this.b.n.y() == 0;
        if (z) {
            textView = textView9;
            this.w.setVisibility(0);
            a(this.w, this.b.n.n());
        } else {
            textView = textView9;
            this.w.setVisibility(8);
            String str = this.z;
            str.hashCode();
            switch (str) {
                case "320x50":
                    textView2 = textView8;
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) spreadAnimLayout.getLayoutParams();
                    layoutParams.rightMargin = i.a(getContext(), 10.0f);
                    spreadAnimLayout.setLayoutParams(layoutParams);
                    break;
                case "320x90":
                    textView2 = textView8;
                    RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) textView5.getLayoutParams();
                    layoutParams2.rightMargin = i.a(getContext(), 10.0f);
                    textView5.setLayoutParams(layoutParams2);
                    break;
                case "728x90":
                    RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) spreadAnimLayout.getLayoutParams();
                    textView2 = textView8;
                    layoutParams3.rightMargin = i.a(getContext(), 20.0f);
                    spreadAnimLayout.setLayoutParams(layoutParams3);
                    break;
            }
            if (TextUtils.isEmpty(this.c.x())) {
                ViewGroup.LayoutParams layoutParams4 = roundImageView2.getLayoutParams();
                roundImageView2.setRadiusInDip(2);
                roundImageView2.setNeedRadiu(true);
                relativeLayout = relativeLayout3;
                textView3 = textView11;
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.x()), layoutParams4.width, layoutParams4.height, new AnonymousClass15(roundImageView2));
            } else {
                relativeLayout = relativeLayout3;
                textView3 = textView11;
                com.anythink.basead.ui.d.c.a(roundImageView2);
                RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) textView5.getLayoutParams();
                if (layoutParams5 != null) {
                    layoutParams5.leftMargin = 0;
                    textView5.setLayoutParams(layoutParams5);
                }
            }
            this.p.add(roundImageView2);
            textView5.setText(this.c.v());
            this.p.add(textView5);
            textView7.setText(this.c.A());
            this.p.add(textView7);
            if (textView6 != null) {
                textView6.setText(this.c.w());
                this.p.add(textView6);
            }
            if (TextUtils.isEmpty(this.c.z())) {
                imageView = (ImageView) findViewById(i.a(getContext(), "myoffer_banner_self_ad_logo", "id"));
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.z()), new AnonymousClass2(imageView));
            } else {
                imageView = null;
            }
            this.p.add(imageView);
            if (this.y) {
                roundImageView = null;
            } else {
                roundImageView = (RoundImageView) findViewById(i.a(getContext(), "myoffer_banner_main_image", "id"));
                if (!TextUtils.isEmpty(this.c.y())) {
                    roundImageView.getLayoutParams();
                    roundImageView.setRadiusInDip(2);
                    roundImageView.setNeedRadiu(true);
                    com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.y()), new AnonymousClass3(roundImageView));
                    this.p.add(roundImageView);
                }
            }
            this.p.add(roundImageView);
            if (TextUtils.isEmpty(this.c.A())) {
                spreadAnimLayout.setVisibility(0);
                textView7.setVisibility(0);
                this.q = textView7;
            } else {
                spreadAnimLayout.setVisibility(8);
                textView7.setVisibility(8);
                String str2 = this.z;
                switch (str2.hashCode()) {
                    case -559799608:
                        b = !str2.equals(com.anythink.core.common.f.n.c) ? (byte) -1 : (byte) 1;
                        break;
                    case 1507809730:
                        if (str2.equals(com.anythink.core.common.f.n.a)) {
                            b = 3;
                            break;
                        }
                        break;
                    case 1507809854:
                        if (str2.equals(com.anythink.core.common.f.n.b)) {
                            b = 0;
                            break;
                        }
                        break;
                    case 1622564786:
                        if (str2.equals(com.anythink.core.common.f.n.d)) {
                            b = 2;
                            break;
                        }
                        break;
                }
                if (b != 0) {
                    if (b != 1) {
                        b2 = 2;
                        if (b != 2) {
                            RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) textView5.getLayoutParams();
                            layoutParams6.addRule(11);
                            layoutParams6.rightMargin = z ? i.a(getContext(), 18.0f) : i.a(getContext(), 10.0f);
                            textView5.setLayoutParams(layoutParams6);
                            if (textView3 != null) {
                                RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) textView3.getLayoutParams();
                                layoutParams7.rightMargin = i.a(getContext(), 55.0f);
                                textView4 = textView3;
                                textView4.setLayoutParams(layoutParams7);
                            } else {
                                textView4 = textView3;
                            }
                        } else {
                            textView4 = textView3;
                            RelativeLayout.LayoutParams layoutParams8 = (RelativeLayout.LayoutParams) textView5.getLayoutParams();
                            layoutParams8.rightMargin = i.a(getContext(), 18.0f);
                            textView5.setLayoutParams(layoutParams8);
                            if (textView6 != null) {
                                RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) textView6.getLayoutParams();
                                layoutParams9.rightMargin = i.a(getContext(), 114.0f);
                                textView6.setLayoutParams(layoutParams9);
                            }
                            if (relativeLayout != null) {
                                RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                                layoutParams10.rightMargin = i.a(getContext(), 114.0f);
                                relativeLayout2 = relativeLayout;
                                relativeLayout2.setLayoutParams(layoutParams10);
                            }
                        }
                        relativeLayout2 = relativeLayout;
                    }
                    if (this.c.O()) {
                        textView6.setVisibility(0);
                        String str3 = this.z;
                        switch (str3.hashCode()) {
                            case -559799608:
                                b3 = !str3.equals(com.anythink.core.common.f.n.c) ? (byte) -1 : (byte) 2;
                                break;
                            case 1507809730:
                                if (str3.equals(com.anythink.core.common.f.n.a)) {
                                    b3 = 0;
                                    break;
                                }
                                break;
                            case 1507809854:
                                if (str3.equals(com.anythink.core.common.f.n.b)) {
                                    b3 = 1;
                                    break;
                                }
                                break;
                            case 1622564786:
                                if (str3.equals(com.anythink.core.common.f.n.d)) {
                                    b3 = 3;
                                    break;
                                }
                                break;
                        }
                        if (b3 != 0) {
                            return;
                        }
                        RelativeLayout.LayoutParams layoutParams11 = (RelativeLayout.LayoutParams) textView5.getLayoutParams();
                        layoutParams11.topMargin = i.a(getContext(), 8.0f);
                        textView5.setLayoutParams(layoutParams11);
                        return;
                    }
                    textView6.setVisibility(8);
                    String str4 = this.z;
                    switch (str4.hashCode()) {
                        case -559799608:
                            b4 = !str4.equals(com.anythink.core.common.f.n.c) ? (byte) -1 : (byte) 0;
                            break;
                        case 1507809730:
                            if (str4.equals(com.anythink.core.common.f.n.a)) {
                                b4 = 3;
                                break;
                            }
                            break;
                        case 1507809854:
                            if (str4.equals(com.anythink.core.common.f.n.b)) {
                                b4 = 1;
                                break;
                            }
                            break;
                        case 1622564786:
                            if (str4.equals(com.anythink.core.common.f.n.d)) {
                                b4 = 2;
                                break;
                            }
                            break;
                    }
                    if (b4 == 0 && imageView != null) {
                        RelativeLayout.LayoutParams layoutParams12 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                        layoutParams12.topMargin = i.a(getContext(), 8.0f);
                        imageView.setLayoutParams(layoutParams12);
                    }
                    if (relativeLayout2 != null) {
                        relativeLayout2.setVisibility(0);
                    }
                    if (textView2 != null) {
                        TextView textView12 = textView2;
                        textView12.setVisibility(0);
                        textView12.setText(this.c.J());
                        textView12.setOnClickListener(new AnonymousClass4());
                    }
                    if (textView != null) {
                        TextView textView13 = textView;
                        textView13.setVisibility(0);
                        textView13.setOnClickListener(new AnonymousClass5());
                    }
                    if (textView10 != null) {
                        textView10.setVisibility(0);
                        textView10.setOnClickListener(new AnonymousClass6());
                    }
                    if (textView4 != null) {
                        textView4.setVisibility(0);
                        String str5 = this.z;
                        switch (str5.hashCode()) {
                            case -559799608:
                                if (!str5.equals(com.anythink.core.common.f.n.c)) {
                                    b2 = -1;
                                }
                                break;
                            case 1507809730:
                                if (str5.equals(com.anythink.core.common.f.n.a)) {
                                    b2 = 3;
                                    break;
                                }
                                break;
                            case 1507809854:
                                if (str5.equals(com.anythink.core.common.f.n.b)) {
                                    b2 = 0;
                                    break;
                                }
                                break;
                            case 1622564786:
                                if (str5.equals(com.anythink.core.common.f.n.d)) {
                                    b2 = 1;
                                    break;
                                }
                                break;
                        }
                        textView4.setText((b2 == 0 || b2 == 1) ? getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), this.c.K() + "  " + this.c.J()) : getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), this.c.K()));
                        textView4.setOnClickListener(new AnonymousClass7());
                        return;
                    }
                    return;
                }
                relativeLayout2 = relativeLayout;
                textView4 = textView3;
                b2 = 2;
                RelativeLayout.LayoutParams layoutParams13 = (RelativeLayout.LayoutParams) roundImageView2.getLayoutParams();
                layoutParams13.addRule(15);
                layoutParams13.addRule(6, -1);
                roundImageView2.setLayoutParams(layoutParams13);
                if (this.c.O()) {
                }
            }
            relativeLayout2 = relativeLayout;
            textView4 = textView3;
            b2 = 2;
            if (this.c.O()) {
            }
        }
        textView2 = textView8;
        if (TextUtils.isEmpty(this.c.x())) {
        }
        this.p.add(roundImageView2);
        textView5.setText(this.c.v());
        this.p.add(textView5);
        textView7.setText(this.c.A());
        this.p.add(textView7);
        if (textView6 != null) {
        }
        if (TextUtils.isEmpty(this.c.z())) {
        }
        this.p.add(imageView);
        if (this.y) {
        }
        this.p.add(roundImageView);
        if (TextUtils.isEmpty(this.c.A())) {
        }
        relativeLayout2 = relativeLayout;
        textView4 = textView3;
        b2 = 2;
        if (this.c.O()) {
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03e2 A[PHI: r11 r15 r18
      0x03e2: PHI (r11v12 java.lang.Object) = (r11v11 java.lang.Object), (r11v13 java.lang.Object) binds: [B:108:0x03e0, B:104:0x03d1] A[DONT_GENERATE, DONT_INLINE]
      0x03e2: PHI (r15v4 java.lang.Object) = (r15v3 java.lang.Object), (r15v5 java.lang.Object) binds: [B:108:0x03e0, B:104:0x03d1] A[DONT_GENERATE, DONT_INLINE]
      0x03e2: PHI (r18v2 android.widget.TextView) = (r18v1 android.widget.TextView), (r18v3 android.widget.TextView) binds: [B:108:0x03e0, B:104:0x03d1] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x065b  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0784  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x07b2  */
    @Override // com.anythink.basead.ui.BaseATView
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        byte b;
        String str;
        Object obj;
        TextView textView;
        Object obj2;
        byte b2;
        TextView textView2;
        TextView textView3;
        RelativeLayout relativeLayout;
        TextView textView4;
        ImageView imageView;
        RoundImageView roundImageView;
        Object obj3;
        byte b3;
        RelativeLayout relativeLayout2;
        TextView textView5;
        byte b4;
        byte b5;
        String strX = this.b.n.x();
        l lVar = this.c;
        String strY = lVar instanceof aj ? lVar.y() : null;
        switch (strX.hashCode()) {
            case -559799608:
                b = !strX.equals(com.anythink.core.common.f.n.c) ? (byte) -1 : (byte) 1;
                break;
            case 1507809730:
                if (strX.equals(com.anythink.core.common.f.n.a)) {
                    b = 3;
                    break;
                }
                break;
            case 1507809854:
                if (strX.equals(com.anythink.core.common.f.n.b)) {
                    b = 0;
                    break;
                }
                break;
            case 1622564786:
                if (strX.equals(com.anythink.core.common.f.n.d)) {
                    b = 2;
                    break;
                }
                break;
        }
        String str2 = "myoffer_banner_ad_layout_320x50";
        if (b == 0) {
            this.z = com.anythink.core.common.f.n.b;
            if (strY == null) {
                l lVar2 = this.c;
                if (lVar2 instanceof z) {
                    strY = ((z) lVar2).b();
                }
            }
            this.y = true;
            str2 = "myoffer_banner_ad_layout_320x90";
        } else if (b == 1) {
            this.z = com.anythink.core.common.f.n.c;
            if (strY == null) {
                l lVar3 = this.c;
                if (lVar3 instanceof z) {
                    strY = ((z) lVar3).c();
                }
            }
            this.y = true;
            str2 = "myoffer_banner_ad_layout_300x250";
        } else if (b != 2) {
            this.z = com.anythink.core.common.f.n.a;
            if (strY == null) {
                l lVar4 = this.c;
                if (lVar4 instanceof z) {
                    strY = ((z) lVar4).a();
                }
            }
        } else {
            this.z = com.anythink.core.common.f.n.d;
            if (strY == null) {
                l lVar5 = this.c;
                if (lVar5 instanceof z) {
                    strY = ((z) lVar5).e();
                }
            }
            this.y = true;
            str2 = "myoffer_banner_ad_layout_728x90";
        }
        l lVar6 = this.c;
        int i = (!(lVar6 instanceof aj) ? (lVar6 instanceof z) && !TextUtils.isEmpty(strY) && com.anythink.basead.a.b.c.c(strY) : ((aj) lVar6).ai() == 1) ? 2 : 1;
        this.A = i;
        if (1 == i) {
            LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_banner_ad_layout_pure_picture", "layout"), this);
            RelativeLayout relativeLayout3 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_root", "id"));
            this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
            RelativeLayout relativeLayout4 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_container", "id"));
            TextView textView6 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_publisher_name", "id"));
            TextView textView7 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_privacy_agreement", "id"));
            TextView textView8 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_permission_manage", "id"));
            TextView textView9 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_version_name", "id"));
            if (this.b.n.y() == 0) {
                this.w.setVisibility(0);
                if (TextUtils.equals(com.anythink.core.common.f.n.d, this.z)) {
                    ViewGroup.LayoutParams layoutParams = this.w.getLayoutParams();
                    layoutParams.width = i.a(getContext(), 23.0f);
                    layoutParams.height = i.a(getContext(), 23.0f);
                    this.w.setLayoutParams(layoutParams);
                }
                a(this.w, this.b.n.n());
            } else {
                this.w.setVisibility(8);
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) relativeLayout3.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.height = -1;
            relativeLayout3.setLayoutParams(layoutParams2);
            RecycleImageView recycleImageView = new RecycleImageView(getContext());
            recycleImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            addView(recycleImageView, 0, new RelativeLayout.LayoutParams(-1, -1));
            RecycleImageView recycleImageView2 = new RecycleImageView(getContext());
            recycleImageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, strY), new AnonymousClass9(strY, recycleImageView2, recycleImageView));
            this.p.add(recycleImageView2);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams3.addRule(13);
            addView(recycleImageView2, 1, layoutParams3);
            if (!TextUtils.isEmpty(this.c.z())) {
                ImageView imageView2 = (ImageView) findViewById(i.a(getContext(), "myoffer_banner_self_ad_logo", "id"));
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.z()), new AnonymousClass10(imageView2));
                this.p.add(imageView2);
            }
            if (this.c.O()) {
                if (relativeLayout4 != null) {
                    relativeLayout4.setVisibility(0);
                }
                if (textView6 != null) {
                    textView6.setVisibility(0);
                    textView6.setText(this.c.J());
                    textView6.setOnClickListener(new AnonymousClass11());
                }
                if (textView7 != null) {
                    textView7.setVisibility(0);
                    textView7.setOnClickListener(new AnonymousClass12());
                }
                if (textView8 != null) {
                    textView8.setVisibility(0);
                    textView8.setOnClickListener(new AnonymousClass13());
                }
                if (textView9 != null) {
                    textView9.setVisibility(0);
                    textView9.setText(getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), this.c.K()));
                    textView9.setOnClickListener(new AnonymousClass14());
                    return;
                }
                return;
            }
            return;
        }
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), str2, "layout"), this);
        RoundImageView roundImageView2 = (RoundImageView) findViewById(i.a(getContext(), "myoffer_banner_icon", "id"));
        TextView textView10 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_title", "id"));
        TextView textView11 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_desc", "id"));
        TextView textView12 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_ad_install_btn", "id"));
        this.s = textView12;
        SpreadAnimLayout spreadAnimLayout = (SpreadAnimLayout) findViewById(i.a(getContext(), "myoffer_banner_spread_layout", "id"));
        this.w = (CloseImageView) findViewById(i.a(getContext(), "myoffer_banner_close", "id"));
        RelativeLayout relativeLayout5 = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_banner_container", "id"));
        TextView textView13 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_publisher_name", "id"));
        TextView textView14 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_privacy_agreement", "id"));
        TextView textView15 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_permission_manage", "id"));
        TextView textView16 = (TextView) findViewById(i.a(getContext(), "myoffer_banner_version_name", "id"));
        boolean z = this.b.n.y() == 0;
        if (!z) {
            str = com.anythink.expressad.foundation.h.i.g;
            this.w.setVisibility(8);
            String str3 = this.z;
            str3.hashCode();
            switch (str3.hashCode()) {
                case 1507809730:
                    obj = com.anythink.core.common.f.n.b;
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                    b2 = !str3.equals(obj2) ? (byte) -1 : (byte) 0;
                    break;
                case 1507809854:
                    obj = com.anythink.core.common.f.n.b;
                    boolean zEquals = str3.equals(obj);
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                    if (zEquals) {
                        b2 = 1;
                        break;
                    }
                    break;
                case 1622564786:
                    if (str3.equals(com.anythink.core.common.f.n.d)) {
                        obj = com.anythink.core.common.f.n.b;
                        b2 = 2;
                    }
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                default:
                    obj = com.anythink.core.common.f.n.b;
                    b2 = -1;
                    textView = textView15;
                    obj2 = com.anythink.core.common.f.n.a;
                    break;
            }
            switch (b2) {
                case 0:
                    textView2 = textView14;
                    textView3 = textView13;
                    RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) spreadAnimLayout.getLayoutParams();
                    layoutParams4.rightMargin = i.a(getContext(), 10.0f);
                    spreadAnimLayout.setLayoutParams(layoutParams4);
                    break;
                case 1:
                    textView2 = textView14;
                    textView3 = textView13;
                    RelativeLayout.LayoutParams layoutParams5 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                    layoutParams5.rightMargin = i.a(getContext(), 10.0f);
                    textView10.setLayoutParams(layoutParams5);
                    break;
                case 2:
                    RelativeLayout.LayoutParams layoutParams6 = (RelativeLayout.LayoutParams) spreadAnimLayout.getLayoutParams();
                    textView2 = textView14;
                    textView3 = textView13;
                    layoutParams6.rightMargin = i.a(getContext(), 20.0f);
                    spreadAnimLayout.setLayoutParams(layoutParams6);
                    break;
                default:
                    textView2 = textView14;
                    textView3 = textView13;
                    break;
            }
        } else {
            CloseImageView closeImageView = this.w;
            str = com.anythink.expressad.foundation.h.i.g;
            closeImageView.setVisibility(0);
            a(this.w, this.b.n.n());
            textView3 = textView13;
            obj = com.anythink.core.common.f.n.b;
            textView = textView15;
            obj2 = com.anythink.core.common.f.n.a;
            textView2 = textView14;
        }
        if (TextUtils.isEmpty(this.c.x())) {
            relativeLayout = relativeLayout5;
            textView4 = textView16;
            com.anythink.basead.ui.d.c.a(roundImageView2);
            RelativeLayout.LayoutParams layoutParams7 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
            if (layoutParams7 != null) {
                layoutParams7.leftMargin = 0;
                textView10.setLayoutParams(layoutParams7);
            }
        } else {
            ViewGroup.LayoutParams layoutParams8 = roundImageView2.getLayoutParams();
            roundImageView2.setRadiusInDip(2);
            roundImageView2.setNeedRadiu(true);
            relativeLayout = relativeLayout5;
            textView4 = textView16;
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.x()), layoutParams8.width, layoutParams8.height, new AnonymousClass15(roundImageView2));
        }
        this.p.add(roundImageView2);
        textView10.setText(this.c.v());
        this.p.add(textView10);
        textView12.setText(this.c.A());
        this.p.add(textView12);
        if (textView11 != null) {
            textView11.setText(this.c.w());
            this.p.add(textView11);
        }
        if (TextUtils.isEmpty(this.c.z())) {
            imageView = null;
        } else {
            imageView = (ImageView) findViewById(i.a(getContext(), "myoffer_banner_self_ad_logo", "id"));
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.z()), new AnonymousClass2(imageView));
        }
        this.p.add(imageView);
        if (this.y) {
            roundImageView = (RoundImageView) findViewById(i.a(getContext(), "myoffer_banner_main_image", "id"));
            if (!TextUtils.isEmpty(this.c.y())) {
                roundImageView.getLayoutParams();
                roundImageView.setRadiusInDip(2);
                roundImageView.setNeedRadiu(true);
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, this.c.y()), new AnonymousClass3(roundImageView));
                this.p.add(roundImageView);
            }
        } else {
            roundImageView = null;
        }
        this.p.add(roundImageView);
        if (TextUtils.isEmpty(this.c.A())) {
            spreadAnimLayout.setVisibility(8);
            textView12.setVisibility(8);
            String str4 = this.z;
            switch (str4.hashCode()) {
                case -559799608:
                    obj3 = com.anythink.core.common.f.n.c;
                    b3 = !str4.equals(obj3) ? (byte) -1 : (byte) 1;
                    break;
                case 1507809730:
                    if (!str4.equals(obj2)) {
                        obj3 = com.anythink.core.common.f.n.c;
                    } else {
                        obj3 = com.anythink.core.common.f.n.c;
                        b3 = 3;
                    }
                    break;
                case 1507809854:
                    if (!str4.equals(obj)) {
                        obj3 = com.anythink.core.common.f.n.c;
                    } else {
                        obj3 = com.anythink.core.common.f.n.c;
                        b3 = 0;
                    }
                    break;
                case 1622564786:
                    if (!str4.equals(com.anythink.core.common.f.n.d)) {
                        obj3 = com.anythink.core.common.f.n.c;
                    } else {
                        obj3 = com.anythink.core.common.f.n.c;
                        b3 = 2;
                    }
                    break;
                default:
                    obj3 = com.anythink.core.common.f.n.c;
                    break;
            }
            if (b3 != 0) {
                if (b3 != 1) {
                    if (b3 != 2) {
                        RelativeLayout.LayoutParams layoutParams9 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                        layoutParams9.addRule(11);
                        layoutParams9.rightMargin = i.a(getContext(), z ? 18.0f : 10.0f);
                        textView10.setLayoutParams(layoutParams9);
                        if (textView4 != null) {
                            RelativeLayout.LayoutParams layoutParams10 = (RelativeLayout.LayoutParams) textView4.getLayoutParams();
                            layoutParams10.rightMargin = i.a(getContext(), 55.0f);
                            textView5 = textView4;
                            textView5.setLayoutParams(layoutParams10);
                        } else {
                            textView5 = textView4;
                        }
                    } else {
                        textView5 = textView4;
                        RelativeLayout.LayoutParams layoutParams11 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                        layoutParams11.rightMargin = i.a(getContext(), 18.0f);
                        textView10.setLayoutParams(layoutParams11);
                        if (textView11 != null) {
                            RelativeLayout.LayoutParams layoutParams12 = (RelativeLayout.LayoutParams) textView11.getLayoutParams();
                            layoutParams12.rightMargin = i.a(getContext(), 114.0f);
                            textView11.setLayoutParams(layoutParams12);
                        }
                        if (relativeLayout != null) {
                            RelativeLayout.LayoutParams layoutParams13 = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
                            layoutParams13.rightMargin = i.a(getContext(), 114.0f);
                            relativeLayout2 = relativeLayout;
                            relativeLayout2.setLayoutParams(layoutParams13);
                        }
                    }
                    relativeLayout2 = relativeLayout;
                }
                if (!this.c.O()) {
                    byte b6 = 0;
                    textView11.setVisibility(0);
                    String str5 = this.z;
                    switch (str5.hashCode()) {
                        case -559799608:
                            b6 = !str5.equals(obj3) ? (byte) -1 : (byte) 2;
                            break;
                        case 1507809730:
                            if (!str5.equals(obj2)) {
                            }
                            break;
                        case 1507809854:
                            if (str5.equals(obj)) {
                                b6 = 1;
                                break;
                            }
                            break;
                        case 1622564786:
                            if (str5.equals(com.anythink.core.common.f.n.d)) {
                                b6 = 3;
                                break;
                            }
                            break;
                    }
                    if (b6 != 0) {
                        return;
                    }
                    RelativeLayout.LayoutParams layoutParams14 = (RelativeLayout.LayoutParams) textView10.getLayoutParams();
                    layoutParams14.topMargin = i.a(getContext(), 8.0f);
                    textView10.setLayoutParams(layoutParams14);
                    return;
                }
                textView11.setVisibility(8);
                String str6 = this.z;
                switch (str6.hashCode()) {
                    case -559799608:
                        b4 = !str6.equals(obj3) ? (byte) -1 : (byte) 0;
                        break;
                    case 1507809730:
                        if (str6.equals(obj2)) {
                            b4 = 3;
                            break;
                        }
                        break;
                    case 1507809854:
                        if (str6.equals(obj)) {
                            b4 = 1;
                            break;
                        }
                        break;
                    case 1622564786:
                        if (str6.equals(com.anythink.core.common.f.n.d)) {
                            b4 = 2;
                            break;
                        }
                        break;
                }
                if (b4 == 0 && imageView != null) {
                    RelativeLayout.LayoutParams layoutParams15 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
                    layoutParams15.topMargin = i.a(getContext(), 8.0f);
                    imageView.setLayoutParams(layoutParams15);
                }
                if (relativeLayout2 != null) {
                    relativeLayout2.setVisibility(0);
                }
                if (textView3 != null) {
                    TextView textView17 = textView3;
                    textView17.setVisibility(0);
                    textView17.setText(this.c.J());
                    textView17.setOnClickListener(new AnonymousClass4());
                }
                if (textView2 != null) {
                    TextView textView18 = textView2;
                    textView18.setVisibility(0);
                    textView18.setOnClickListener(new AnonymousClass5());
                }
                if (textView != null) {
                    TextView textView19 = textView;
                    textView19.setVisibility(0);
                    textView19.setOnClickListener(new AnonymousClass6());
                }
                if (textView5 != null) {
                    textView5.setVisibility(0);
                    String str7 = this.z;
                    switch (str7.hashCode()) {
                        case -559799608:
                            b5 = !str7.equals(obj3) ? (byte) -1 : (byte) 2;
                            break;
                        case 1507809730:
                            if (str7.equals(obj2)) {
                                b5 = 3;
                                break;
                            }
                            break;
                        case 1507809854:
                            if (str7.equals(obj)) {
                                b5 = 0;
                                break;
                            }
                            break;
                        case 1622564786:
                            if (str7.equals(com.anythink.core.common.f.n.d)) {
                                b5 = 1;
                                break;
                            }
                            break;
                    }
                    textView5.setText((b5 == 0 || b5 == 1) ? getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", str), this.c.K() + "  " + this.c.J()) : getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", str), this.c.K()));
                    textView5.setOnClickListener(new AnonymousClass7());
                    return;
                }
                return;
            }
            relativeLayout2 = relativeLayout;
            textView5 = textView4;
            RelativeLayout.LayoutParams layoutParams16 = (RelativeLayout.LayoutParams) roundImageView2.getLayoutParams();
            layoutParams16.addRule(15);
            layoutParams16.addRule(6, -1);
            roundImageView2.setLayoutParams(layoutParams16);
            if (!this.c.O()) {
            }
        } else {
            spreadAnimLayout.setVisibility(0);
            textView12.setVisibility(0);
            this.q = textView12;
            obj3 = com.anythink.core.common.f.n.c;
        }
        relativeLayout2 = relativeLayout;
        textView5 = textView4;
        if (!this.c.O()) {
        }
    }

    @Override // com.anythink.basead.ui.BaseBannerATView
    public final void c() {
        int size = this.p.size();
        for (int i = 0; i < size; i++) {
            View view = this.p.get(i);
            if (view != null) {
                view.setOnClickListener(this.E);
            }
        }
        setOnClickListener(this.D);
        super.c();
    }
}
