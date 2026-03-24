package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.anythink.basead.a.d;
import com.anythink.basead.ui.BaseShakeView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.i;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PanelView extends RelativeLayout {
    public static final int TYPE_FULL_SCREEN_BANNER = 0;
    public static final int TYPE_FULL_SCREEN_EMPTY_INFO = 8;
    public static final int TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_LANDSCAPE = 6;
    public static final int TYPE_FULL_SCREEN_ENDCARD_HORIZONTAL_PORTRAIT = 1;
    public static final int TYPE_FULL_SCREEN_ENDCARD_VERTICAL_LANDSCAPE = 2;
    public static final int TYPE_FULL_SCREEN_ENDCARD_VERTICAL_PORTRAIT = 5;
    public static final int TYPE_HALF_SCREEN_EMPTY_INFO = 7;
    public static final int TYPE_HALF_SCREEN_HORIZONTAL = 4;
    public static final int TYPE_HALF_SCREEN_VERTICAL = 3;
    public static final int TYPE_LETTER = 9;
    private View a;
    private ImageView b;
    private ImageView c;
    private TextView d;
    private TextView e;
    private Button f;
    private BaseShakeView g;
    private a h;
    private int i;
    private n j;
    private m k;
    private l l;
    private int m;
    private ViewGroup n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private boolean s;
    private boolean t;
    private boolean u;
    private List<View> v;
    private com.anythink.basead.ui.d.a w;
    private final View.OnClickListener x;

    /* JADX INFO: renamed from: com.anythink.basead.ui.PanelView$1, reason: invalid class name */
    public class AnonymousClass1 implements com.anythink.basead.ui.c.a {
        public AnonymousClass1() {
        }

        @Override // com.anythink.basead.ui.c.a
        public final void a(int i, int i2) {
            if (PanelView.this.h != null) {
                PanelView.this.h.a(i, i2);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.PanelView$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {
        public final /* synthetic */ String a;

        public AnonymousClass2(String str) {
            this.a = str;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.a)) {
                PanelView.this.b.setImageBitmap(bitmap);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.PanelView$3, reason: invalid class name */
    public class AnonymousClass3 implements b.a {
        public final /* synthetic */ String a;
        public final /* synthetic */ ViewGroup.LayoutParams b;

        public AnonymousClass3(String str, ViewGroup.LayoutParams layoutParams) {
            this.a = str;
            this.b = layoutParams;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
            PanelView.this.c.setVisibility(8);
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.a)) {
                PanelView.this.c.setImageBitmap(bitmap);
                ViewGroup.LayoutParams layoutParams = this.b;
                int i = layoutParams.height;
                layoutParams.width = (int) (i * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                layoutParams.height = i;
                PanelView.this.c.setLayoutParams(this.b);
                PanelView.this.c.setScaleType(ImageView.ScaleType.FIT_XY);
                PanelView.this.c.setImageBitmap(bitmap);
                PanelView.this.c.setVisibility(0);
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.PanelView$8, reason: invalid class name */
    public class AnonymousClass8 implements BaseShakeView.a {
        public AnonymousClass8() {
        }

        @Override // com.anythink.basead.ui.BaseShakeView.a
        public final boolean a() {
            return PanelView.this.h.a();
        }
    }

    public interface a {
        void a(int i, int i2);

        boolean a();
    }

    public PanelView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.m = 0;
        this.s = false;
        this.t = false;
        this.u = false;
        this.x = new View.OnClickListener() { // from class: com.anythink.basead.ui.PanelView.9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (PanelView.this.j != null) {
                    if (PanelView.this.j.D() == 1) {
                        if ((view == PanelView.this.f || (PanelView.this.g != null && view == PanelView.this.g)) && PanelView.this.h != null) {
                            PanelView.this.h.a(1, view == PanelView.this.f ? 1 : 11);
                            return;
                        }
                        return;
                    }
                    if (PanelView.this.h != null) {
                        if (view == PanelView.this.f) {
                            PanelView.this.h.a(1, 1);
                        } else if (PanelView.this.g == null || view != PanelView.this.g) {
                            PanelView.this.h.a(1, 2);
                        } else {
                            PanelView.this.h.a(1, 11);
                        }
                    }
                }
            }
        };
    }

    private void a(l lVar) {
        if (this.b != null) {
            String strX = lVar.x();
            if (!TextUtils.isEmpty(strX)) {
                ViewGroup.LayoutParams layoutParams = this.b.getLayoutParams();
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, strX), layoutParams.width, layoutParams.height, new AnonymousClass2(strX));
            }
            if (TextUtils.isEmpty(lVar.x())) {
                this.b.setVisibility(8);
            }
        }
        if (this.c != null) {
            String strZ = lVar.z();
            if (TextUtils.isEmpty(strZ)) {
                this.c.setVisibility(8);
            } else {
                ViewGroup.LayoutParams layoutParams2 = this.c.getLayoutParams();
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, strZ), layoutParams2.width, layoutParams2.height, new AnonymousClass3(strZ, layoutParams2));
            }
        }
        if (this.e != null) {
            if (TextUtils.isEmpty(lVar.w())) {
                this.e.setVisibility(8);
            } else {
                this.e.setText(lVar.w());
            }
        }
        if (this.d != null) {
            if (TextUtils.isEmpty(lVar.v())) {
                this.d.setVisibility(8);
            } else {
                this.d.setText(lVar.v());
            }
        }
        if (this.f != null) {
            if (TextUtils.isEmpty(lVar.A())) {
                this.f.setText(d.a(getContext(), this.l));
            } else {
                this.f.setText(lVar.A());
            }
        }
        b(lVar);
    }

    private boolean a() {
        return this.s && !this.t;
    }

    private void b() {
        d();
        l lVar = this.l;
        if (this.b != null) {
            String strX = lVar.x();
            if (!TextUtils.isEmpty(strX)) {
                ViewGroup.LayoutParams layoutParams = this.b.getLayoutParams();
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, strX), layoutParams.width, layoutParams.height, new AnonymousClass2(strX));
            }
            if (TextUtils.isEmpty(lVar.x())) {
                this.b.setVisibility(8);
            }
        }
        if (this.c != null) {
            String strZ = lVar.z();
            if (TextUtils.isEmpty(strZ)) {
                this.c.setVisibility(8);
            } else {
                ViewGroup.LayoutParams layoutParams2 = this.c.getLayoutParams();
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, strZ), layoutParams2.width, layoutParams2.height, new AnonymousClass3(strZ, layoutParams2));
            }
        }
        if (this.e != null) {
            if (TextUtils.isEmpty(lVar.w())) {
                this.e.setVisibility(8);
            } else {
                this.e.setText(lVar.w());
            }
        }
        if (this.d != null) {
            if (TextUtils.isEmpty(lVar.v())) {
                this.d.setVisibility(8);
            } else {
                this.d.setText(lVar.v());
            }
        }
        if (this.f != null) {
            if (TextUtils.isEmpty(lVar.A())) {
                this.f.setText(d.a(getContext(), this.l));
            } else {
                this.f.setText(lVar.A());
            }
        }
        b(lVar);
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setOnClickListener(this.x);
            this.v.add(this.b);
        }
        TextView textView = this.d;
        if (textView != null) {
            textView.setOnClickListener(this.x);
            this.v.add(this.d);
        }
        TextView textView2 = this.e;
        if (textView2 != null) {
            textView2.setOnClickListener(this.x);
            this.v.add(this.e);
        }
        Button button = this.f;
        if (button != null) {
            button.setOnClickListener(this.x);
            this.v.add(this.f);
        }
        ImageView imageView2 = this.c;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this.x);
            this.v.add(this.c);
        }
        BaseShakeView baseShakeView = this.g;
        if (baseShakeView != null && this.u) {
            baseShakeView.setOnClickListener(this.x);
            this.g.setOnShakeListener(new AnonymousClass8(), this.j);
        }
        View viewFindViewById = this.a.findViewById(i.a(getContext(), "myoffer_panel_view_blank", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.x);
            this.v.add(viewFindViewById);
        } else {
            this.a.setOnClickListener(this.x);
            this.v.add(this.a);
        }
        ImageView imageView3 = this.b;
        if (imageView3 instanceof RoundImageView) {
            ((RoundImageView) imageView3).setNeedRadiu(true);
            int i = this.m;
            if (i == 2 || i == 6) {
                ((RoundImageView) this.b).setRadiusInDip(8);
            } else {
                ((RoundImageView) this.b).setRadiusInDip(12);
            }
            this.b.invalidate();
        }
        com.anythink.basead.ui.d.a aVar = this.w;
        if (aVar != null) {
            aVar.a(this.m).a(new AnonymousClass1()).a(getContext(), this.a);
        }
    }

    private void b(final l lVar) {
        if (this.n == null) {
            return;
        }
        if (!a()) {
            ViewGroup viewGroup = this.n;
            if (viewGroup != null) {
                viewGroup.setVisibility(8);
            }
            TextView textView = this.o;
            if (textView != null) {
                textView.setVisibility(8);
            }
            TextView textView2 = this.p;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
            TextView textView3 = this.r;
            if (textView3 != null) {
                textView3.setVisibility(8);
            }
            TextView textView4 = this.q;
            if (textView4 != null) {
                textView4.setVisibility(8);
            }
            try {
                View viewFindViewById = findViewById(i.a(getContext(), "myoffer_four_element_container_bg", "id"));
                if (viewFindViewById != null) {
                    viewFindViewById.setBackgroundDrawable(null);
                    return;
                }
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        this.o.setText(getContext().getResources().getString(i.a(getContext(), "myoffer_panel_version", com.anythink.expressad.foundation.h.i.g), lVar.K()));
        this.p.setText(lVar.J());
        this.r.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.PanelView.4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.anythink.core.common.o.n.a(com.anythink.core.common.b.n.a().f(), lVar.L());
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.PanelView.5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                com.anythink.core.common.o.n.a(com.anythink.core.common.b.n.a().f(), lVar.M());
            }
        });
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.PanelView.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.PanelView.7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        ViewGroup viewGroup2 = this.n;
        if (viewGroup2 != null) {
            viewGroup2.setVisibility(0);
        }
        TextView textView5 = this.o;
        if (textView5 != null) {
            textView5.setVisibility(0);
        }
        TextView textView6 = this.p;
        if (textView6 != null) {
            textView6.setVisibility(0);
        }
        TextView textView7 = this.r;
        if (textView7 != null) {
            textView7.setVisibility(0);
        }
        TextView textView8 = this.q;
        if (textView8 != null) {
            textView8.setVisibility(0);
        }
    }

    private void c() {
        RoundImageView roundImageView;
        int i;
        ImageView imageView = this.b;
        if (imageView instanceof RoundImageView) {
            ((RoundImageView) imageView).setNeedRadiu(true);
            int i2 = this.m;
            if (i2 == 2 || i2 == 6) {
                roundImageView = (RoundImageView) this.b;
                i = 8;
            } else {
                roundImageView = (RoundImageView) this.b;
                i = 12;
            }
            roundImageView.setRadiusInDip(i);
            this.b.invalidate();
        }
    }

    private void d() {
        this.v.clear();
        this.b = (ImageView) this.a.findViewById(i.a(getContext(), "myoffer_iv_banner_icon", "id"));
        this.d = (TextView) this.a.findViewById(i.a(getContext(), "myoffer_tv_banner_title", "id"));
        this.e = (TextView) this.a.findViewById(i.a(getContext(), "myoffer_tv_banner_desc", "id"));
        this.f = (Button) this.a.findViewById(i.a(getContext(), "myoffer_btn_banner_cta", "id"));
        this.c = (ImageView) this.a.findViewById(i.a(getContext(), "myoffer_ad_logo", "id"));
        this.n = (ViewGroup) this.a.findViewById(i.a(getContext(), "myoffer_four_element_container", "id"));
        this.o = (TextView) this.a.findViewById(i.a(getContext(), "myoffer_version_name", "id"));
        this.p = (TextView) this.a.findViewById(i.a(getContext(), "myoffer_publisher_name", "id"));
        this.q = (TextView) this.a.findViewById(i.a(getContext(), "myoffer_permission_manage", "id"));
        this.r = (TextView) this.a.findViewById(i.a(getContext(), "myoffer_privacy_agreement", "id"));
        try {
            BaseShakeView baseShakeView = (BaseShakeView) this.a.findViewById(i.a(getContext(), "myoffer_shake_hint_text", "id"));
            this.g = baseShakeView;
            baseShakeView.setShakeSetting(this.k.n);
        } catch (Throwable unused) {
        }
        e();
    }

    private void e() {
        BaseShakeView baseShakeView;
        if (!this.u || (baseShakeView = this.g) == null || this.m == 8) {
            return;
        }
        baseShakeView.setVisibility(0);
    }

    private void f() {
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setOnClickListener(this.x);
            this.v.add(this.b);
        }
        TextView textView = this.d;
        if (textView != null) {
            textView.setOnClickListener(this.x);
            this.v.add(this.d);
        }
        TextView textView2 = this.e;
        if (textView2 != null) {
            textView2.setOnClickListener(this.x);
            this.v.add(this.e);
        }
        Button button = this.f;
        if (button != null) {
            button.setOnClickListener(this.x);
            this.v.add(this.f);
        }
        ImageView imageView2 = this.c;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this.x);
            this.v.add(this.c);
        }
        BaseShakeView baseShakeView = this.g;
        if (baseShakeView != null && this.u) {
            baseShakeView.setOnClickListener(this.x);
            this.g.setOnShakeListener(new AnonymousClass8(), this.j);
        }
        View viewFindViewById = this.a.findViewById(i.a(getContext(), "myoffer_panel_view_blank", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.x);
            this.v.add(viewFindViewById);
        } else {
            this.a.setOnClickListener(this.x);
            this.v.add(this.a);
        }
    }

    public View getCTAButton() {
        return this.f;
    }

    public List<View> getClickViews() {
        return this.v;
    }

    public View getShakeView() {
        return this.g;
    }

    public void init(l lVar, m mVar, int i, boolean z, a aVar) {
        this.h = aVar;
        this.i = i;
        this.l = lVar;
        this.k = mVar;
        this.j = mVar.n;
        this.u = z;
        this.s = lVar.O();
        this.t = this.j.u() == 1;
        this.v = new ArrayList();
        this.w = new com.anythink.basead.ui.d.a(lVar, this.j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0088, code lost:
    
        if (android.text.TextUtils.isEmpty(r9.l.x()) != false) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
    
        r10 = android.view.LayoutInflater.from(getContext());
        r0 = com.anythink.core.common.o.i.a(getContext(), "myoffer_panel_view_horizontal_without_icon", "layout");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x009b, code lost:
    
        r10 = android.view.LayoutInflater.from(getContext());
        r0 = getContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b6, code lost:
    
        if (android.text.TextUtils.isEmpty(r9.l.x()) != false) goto L18;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x000b. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setLayoutType(int i) {
        LayoutInflater layoutInflaterFrom;
        Context context;
        int iA;
        this.m = i;
        String str = "myoffer_panel_view_horizontal";
        switch (i) {
            case 1:
                if (!TextUtils.isEmpty(this.l.x())) {
                    layoutInflaterFrom = LayoutInflater.from(getContext());
                    context = getContext();
                    str = "myoffer_panel_view_endcard_horizontal_portrait";
                    iA = i.a(context, str, "layout");
                }
                layoutInflaterFrom = LayoutInflater.from(getContext());
                iA = i.a(getContext(), "myoffer_panel_view_endcard_portrait_without_icon", "layout");
                break;
            case 2:
            case 6:
                if (TextUtils.isEmpty(this.l.x())) {
                    layoutInflaterFrom = LayoutInflater.from(getContext());
                    context = getContext();
                    str = "myoffer_panel_view_endcard_landscape_without_icon";
                } else {
                    layoutInflaterFrom = LayoutInflater.from(getContext());
                    context = getContext();
                    str = "myoffer_panel_view_endcard_landscape";
                }
                iA = i.a(context, str, "layout");
                break;
            case 3:
                if (this.i != 1) {
                    if (TextUtils.isEmpty(this.l.x())) {
                        layoutInflaterFrom = LayoutInflater.from(getContext());
                        context = getContext();
                        str = "myoffer_panel_view_vertical_without_icon";
                    } else {
                        layoutInflaterFrom = LayoutInflater.from(getContext());
                        context = getContext();
                        str = "myoffer_panel_view_vertical";
                    }
                    iA = i.a(context, str, "layout");
                }
                break;
            case 4:
                break;
            case 5:
                if (!TextUtils.isEmpty(this.l.x())) {
                    layoutInflaterFrom = LayoutInflater.from(getContext());
                    context = getContext();
                    str = "myoffer_panel_view_endcard_vertical_portrait";
                    iA = i.a(context, str, "layout");
                }
                layoutInflaterFrom = LayoutInflater.from(getContext());
                iA = i.a(getContext(), "myoffer_panel_view_endcard_portrait_without_icon", "layout");
                break;
            case 7:
                layoutInflaterFrom = LayoutInflater.from(getContext());
                context = getContext();
                str = "myoffer_panel_view_empty_info";
                iA = i.a(context, str, "layout");
                break;
            case 8:
                layoutInflaterFrom = LayoutInflater.from(getContext());
                context = getContext();
                str = "myoffer_panel_view_full_screen_empty_info";
                iA = i.a(context, str, "layout");
                break;
            case 9:
                layoutInflaterFrom = LayoutInflater.from(getContext());
                context = getContext();
                str = "myoffer_panel_view_letter";
                iA = i.a(context, str, "layout");
                break;
            default:
                if (TextUtils.isEmpty(this.l.x())) {
                    layoutInflaterFrom = LayoutInflater.from(getContext());
                    context = getContext();
                    str = "myoffer_panel_view_bottom_banner_without_icon";
                } else {
                    layoutInflaterFrom = LayoutInflater.from(getContext());
                    context = getContext();
                    str = "myoffer_panel_view_bottom_banner";
                }
                iA = i.a(context, str, "layout");
                break;
        }
        this.a = layoutInflaterFrom.inflate(iA, (ViewGroup) this, true);
        d();
        l lVar = this.l;
        if (this.b != null) {
            String strX = lVar.x();
            if (!TextUtils.isEmpty(strX)) {
                ViewGroup.LayoutParams layoutParams = this.b.getLayoutParams();
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, strX), layoutParams.width, layoutParams.height, new AnonymousClass2(strX));
            }
            if (TextUtils.isEmpty(lVar.x())) {
                this.b.setVisibility(8);
            }
        }
        if (this.c != null) {
            String strZ = lVar.z();
            if (TextUtils.isEmpty(strZ)) {
                this.c.setVisibility(8);
            } else {
                ViewGroup.LayoutParams layoutParams2 = this.c.getLayoutParams();
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, strZ), layoutParams2.width, layoutParams2.height, new AnonymousClass3(strZ, layoutParams2));
            }
        }
        if (this.e != null) {
            if (TextUtils.isEmpty(lVar.w())) {
                this.e.setVisibility(8);
            } else {
                this.e.setText(lVar.w());
            }
        }
        if (this.d != null) {
            if (TextUtils.isEmpty(lVar.v())) {
                this.d.setVisibility(8);
            } else {
                this.d.setText(lVar.v());
            }
        }
        if (this.f != null) {
            if (TextUtils.isEmpty(lVar.A())) {
                this.f.setText(d.a(getContext(), this.l));
            } else {
                this.f.setText(lVar.A());
            }
        }
        b(lVar);
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setOnClickListener(this.x);
            this.v.add(this.b);
        }
        TextView textView = this.d;
        if (textView != null) {
            textView.setOnClickListener(this.x);
            this.v.add(this.d);
        }
        TextView textView2 = this.e;
        if (textView2 != null) {
            textView2.setOnClickListener(this.x);
            this.v.add(this.e);
        }
        Button button = this.f;
        if (button != null) {
            button.setOnClickListener(this.x);
            this.v.add(this.f);
        }
        ImageView imageView2 = this.c;
        if (imageView2 != null) {
            imageView2.setOnClickListener(this.x);
            this.v.add(this.c);
        }
        BaseShakeView baseShakeView = this.g;
        if (baseShakeView != null && this.u) {
            baseShakeView.setOnClickListener(this.x);
            this.g.setOnShakeListener(new AnonymousClass8(), this.j);
        }
        View viewFindViewById = this.a.findViewById(i.a(getContext(), "myoffer_panel_view_blank", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(this.x);
            this.v.add(viewFindViewById);
        } else {
            this.a.setOnClickListener(this.x);
            this.v.add(this.a);
        }
        ImageView imageView3 = this.b;
        if (imageView3 instanceof RoundImageView) {
            ((RoundImageView) imageView3).setNeedRadiu(true);
            int i2 = this.m;
            if (i2 == 2 || i2 == 6) {
                ((RoundImageView) this.b).setRadiusInDip(8);
            } else {
                ((RoundImageView) this.b).setRadiusInDip(12);
            }
            this.b.invalidate();
        }
        com.anythink.basead.ui.d.a aVar = this.w;
        if (aVar != null) {
            aVar.a(this.m).a(new AnonymousClass1()).a(getContext(), this.a);
        }
    }
}
