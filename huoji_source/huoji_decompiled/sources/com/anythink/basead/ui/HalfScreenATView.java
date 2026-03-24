package com.anythink.basead.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.basead.a.d;
import com.anythink.basead.ui.animplayerview.BasePlayerView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class HalfScreenATView extends BaseScreenATView {
    public static final String TAG = HalfScreenATView.class.getSimpleName();
    public final int ad;
    public final int ae;
    public final int af;
    public int ag;
    private View ah;
    private com.anythink.basead.ui.d.a ai;

    public HalfScreenATView(Context context) {
        super(context);
        this.ad = 1;
        this.ae = 2;
        this.af = 3;
    }

    public HalfScreenATView(Context context, m mVar, l lVar, String str, int i, int i2) {
        super(context, mVar, lVar, str, i, i2);
        this.ad = 1;
        this.ae = 2;
        this.af = 3;
        setId(i.a(getContext(), "myoffer_half_screen_view_id", "id"));
        if (mVar != null) {
            this.ai = new com.anythink.basead.ui.d.a(lVar, mVar.n);
        }
    }

    private boolean S() {
        return this.c.k() || this.W <= this.aa;
    }

    private boolean T() {
        return !d.a(this.c);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void B() {
        super.C();
        super.c(1);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void G() {
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void J() {
        BaseEndCardView baseEndCardView;
        BasePlayerView basePlayerView;
        if (this.K == null || (baseEndCardView = this.N) == null || baseEndCardView.getParent() != null || (basePlayerView = this.L) == null) {
            return;
        }
        this.K.addView(this.N, 1, basePlayerView.getLayoutParams());
    }

    public int Q() {
        int i = this.ag;
        if (i != 1) {
            return i != 2 ? 4 : 3;
        }
        return 7;
    }

    public void R() {
        int i;
        int i2;
        int i3;
        int iA;
        int i4;
        int iA2;
        RelativeLayout relativeLayout;
        BasePlayerView basePlayerView;
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.K.getLayoutParams();
        int i5 = layoutParams2.leftMargin;
        int i6 = layoutParams2.rightMargin;
        int i7 = layoutParams2.topMargin;
        int i8 = layoutParams2.bottomMargin;
        BasePlayerView basePlayerView2 = this.L;
        RelativeLayout.LayoutParams layoutParams3 = basePlayerView2 != null ? (RelativeLayout.LayoutParams) basePlayerView2.getLayoutParams() : null;
        int iB = i.b(getContext());
        if (iB <= 0) {
            iB = i.a(getContext(), 25.0f);
        }
        int i9 = this.ag;
        if (i9 == 1) {
            if (this.w == 2) {
                i2 = (this.y - i7) - i8;
                i3 = (int) (i2 * 1.75f);
                iA = i.a(getContext(), 120.0f);
                if (i7 < iB) {
                    layoutParams2.topMargin = (int) (iB * 1.1f);
                }
                layoutParams2.width = i3;
                this.K.setLayoutParams(layoutParams2);
            } else if (S()) {
                i3 = (this.x - i5) - i6;
                i2 = (int) (i3 / 0.5714286f);
                iA = i.a(getContext(), 240.0f);
            } else {
                i3 = (this.x - i5) - i6;
                i2 = (int) (i3 / 1.032258f);
                iA = i.a(getContext(), 120.0f);
            }
            this.z = i3;
            this.A = i2;
        } else {
            if (i9 != 2) {
                View viewFindViewById = this.M.findViewById(i.a(getContext(), "myoffer_panel_view_blank", "id"));
                i = viewFindViewById != null ? ((RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams()).topMargin : 0;
                if (this.w == 1) {
                    i3 = (this.x - i5) - i6;
                    i2 = (int) (i3 / 1.032258f);
                    this.z = i3;
                    int i10 = (int) (i3 / 2.0f);
                    this.A = i10;
                    iA = (i2 - i10) + i;
                } else {
                    if (i7 < iB) {
                        i7 = (int) (iB * 1.1f);
                        layoutParams2.topMargin = i7;
                    }
                    i2 = (this.y - i7) - i8;
                    i3 = (int) (i2 * 1.032258f);
                    this.z = i3;
                    int i11 = (int) (i3 / 2.0f);
                    this.A = i11;
                    iA = (i2 - i11) + i;
                    layoutParams2.width = i3;
                    this.K.setLayoutParams(layoutParams2);
                }
            } else {
                if (this.w != 1) {
                    if (i7 < iB) {
                        i7 = (int) (iB * 1.1f);
                        layoutParams2.topMargin = i7;
                    }
                    i2 = (this.y - i7) - i8;
                    i3 = (int) (i2 * 1.6f);
                    if (this.ai != null && (iA2 = this.x - (i.a(getContext(), 116.0f) * 2)) < i3) {
                        i2 = (int) (iA2 / 1.6f);
                        i3 = iA2;
                    }
                    this.A = i2;
                    int i12 = (int) (i2 * 0.56f);
                    this.z = i12;
                    i4 = i3 - i12;
                    layoutParams2.width = i3;
                    this.K.setLayoutParams(layoutParams2);
                    iA = i2;
                    layoutParams2.width = i3;
                    layoutParams2.height = i2;
                    this.K.setLayoutParams(layoutParams2);
                    if (layoutParams3 != null && (basePlayerView = this.L) != null) {
                        layoutParams3.width = this.z;
                        layoutParams3.height = this.A;
                        basePlayerView.setLayoutParams(layoutParams3);
                    }
                    layoutParams.width = i4;
                    layoutParams.height = iA;
                    this.M.setLayoutParams(layoutParams);
                    if ((this.ag != 2 && this.w == 2) || (relativeLayout = (RelativeLayout) findViewById(i.a(getContext(), "myoffer_guide2click_container", "id"))) == null || layoutParams3 == null) {
                        return;
                    }
                    relativeLayout.setLayoutParams(layoutParams3);
                }
                View viewFindViewById2 = this.M.findViewById(i.a(getContext(), "myoffer_panel_view_blank", "id"));
                i = viewFindViewById2 != null ? ((RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams()).topMargin : 0;
                i3 = (this.x - i5) - i6;
                float f = i3;
                int i13 = (int) (f / 0.5714286f);
                if (this.y < (i.a(getContext(), 28.0f) * 2) + i13) {
                    iA = (int) (f / 1.8181819f);
                    this.z = i3;
                    this.A = (i13 - iA) + i;
                } else {
                    this.z = i3;
                    int i14 = (int) (i3 / 0.8f);
                    this.A = i14;
                    iA = (i13 - i14) + i;
                }
                i2 = i13;
            }
        }
        i4 = i3;
        layoutParams2.width = i3;
        layoutParams2.height = i2;
        this.K.setLayoutParams(layoutParams2);
        if (layoutParams3 != null) {
            layoutParams3.width = this.z;
            layoutParams3.height = this.A;
            basePlayerView.setLayoutParams(layoutParams3);
        }
        layoutParams.width = i4;
        layoutParams.height = iA;
        this.M.setLayoutParams(layoutParams);
        if (this.ag != 2) {
        }
        relativeLayout.setLayoutParams(layoutParams3);
    }

    @Override // com.anythink.basead.ui.BaseATView
    public void a() {
        LayoutInflater layoutInflaterFrom;
        Context context;
        String str;
        int i = this.ag;
        if (i == 1) {
            layoutInflaterFrom = LayoutInflater.from(getContext());
            context = getContext();
            str = "myoffer_half_screen_empty_info";
        } else if (i != 2) {
            layoutInflaterFrom = LayoutInflater.from(getContext());
            context = getContext();
            str = "myoffer_half_screen_horizontal";
        } else {
            layoutInflaterFrom = LayoutInflater.from(getContext());
            context = getContext();
            str = "myoffer_half_screen_vertical";
        }
        this.ah = layoutInflaterFrom.inflate(i.a(context, str, "layout"), this);
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public void b() {
        super.b();
        try {
            R();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        com.anythink.basead.ui.d.a aVar = this.ai;
        if (aVar != null) {
            aVar.a(this.E).a(new com.anythink.basead.ui.c.a() { // from class: com.anythink.basead.ui.HalfScreenATView.1
                @Override // com.anythink.basead.ui.c.a
                public final void a(int i, int i2) {
                    HalfScreenATView.this.a(i, i2);
                }
            }).a(getContext(), this.ah);
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public boolean b(int i) {
        return !this.c.k();
    }

    @Override // com.anythink.basead.ui.BaseScreenATView, com.anythink.basead.ui.BaseATView
    public final void d() {
        super.d();
        if ((!d.a(this.c)) || this.c.k()) {
            this.ag = 1;
        } else {
            this.ag = S() ? 2 : 3;
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView, com.anythink.basead.ui.BaseATView
    public RelativeLayout.LayoutParams m() {
        RelativeLayout relativeLayout = this.K;
        if (relativeLayout == null || this.M == null) {
            return super.m();
        }
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) relativeLayout.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
        int i = (layoutParams.height * 2) / 3;
        RelativeLayout relativeLayout2 = this.L;
        if (relativeLayout2 != null || (relativeLayout2 = this.N) != null) {
            i = (((RelativeLayout.LayoutParams) relativeLayout2.getLayoutParams()).height * 2) / 3;
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(11);
        layoutParams3.setMargins(0, i, (this.ag == 2 && this.w == 2) ? layoutParams2.width + 0 : 0, 0);
        return layoutParams3;
    }

    @Override // com.anythink.basead.ui.BaseATView
    public final int n() {
        return 2;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final int r() {
        return this.E;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void v() {
        super.v();
        if (this.c.G() == 1) {
            if (this.c.R() > 0 && this.c.S() > 0) {
                this.W = this.c.R();
                this.aa = this.c.S();
            }
            StringBuilder sb = new StringBuilder("VideoHalfScreen mMaterialWidth: ");
            sb.append(this.W);
            sb.append(", mMaterialHeight: ");
            sb.append(this.aa);
        }
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void x() {
        View cTAButton;
        super.x();
        int iQ = Q();
        this.E = iQ;
        PanelView panelView = this.M;
        if (panelView != null) {
            panelView.setLayoutType(iQ);
            if (this.E == 7 && this.b.n.D() == 0 && (cTAButton = this.M.getCTAButton()) != null) {
                cTAButton.setVisibility(8);
            }
        }
        if (b(this.E)) {
            F();
        } else {
            O().setVisibility(8);
        }
    }
}
