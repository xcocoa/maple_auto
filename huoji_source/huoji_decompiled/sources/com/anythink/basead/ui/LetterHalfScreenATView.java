package com.anythink.basead.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.animplayerview.BasePlayerView;
import com.anythink.basead.ui.b.e;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.i;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class LetterHalfScreenATView extends HalfScreenATView {
    public com.anythink.basead.a.c.a ah;
    public int ai;
    public int aj;

    /* JADX INFO: renamed from: com.anythink.basead.ui.LetterHalfScreenATView$2, reason: invalid class name */
    public class AnonymousClass2 implements View.OnClickListener {
        public AnonymousClass2() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            LetterHalfScreenATView.this.a(1, 1);
        }
    }

    public LetterHalfScreenATView(Context context) {
        super(context);
    }

    public LetterHalfScreenATView(Context context, m mVar, l lVar, String str, int i, int i2) {
        super(context, mVar, lVar, str, i, i2);
        if (this.t != null) {
            HashMap map = new HashMap();
            map.put(e.a.a, 1);
            this.t.a(map);
        }
    }

    private void S() {
        this.ah.a(this.c, new AnonymousClass2());
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void F() {
        if (b(this.E)) {
            super.F();
        } else {
            O().setVisibility(8);
        }
    }

    @Override // com.anythink.basead.ui.HalfScreenATView, com.anythink.basead.ui.BaseScreenATView
    public final void J() {
        this.N.setPadding(this.L.getPaddingLeft(), this.L.getPaddingTop(), this.L.getPaddingRight(), this.L.getPaddingBottom());
        super.J();
    }

    @Override // com.anythink.basead.ui.HalfScreenATView
    public final int Q() {
        return 9;
    }

    @Override // com.anythink.basead.ui.HalfScreenATView
    public final void R() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.M.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.K.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) this.L.getLayoutParams();
        int i = this.x;
        int i2 = (i - layoutParams2.leftMargin) - layoutParams2.rightMargin;
        int i3 = this.ai;
        int i4 = i2 - (i3 * 2);
        this.z = i4;
        this.A = i4;
        this.ah.a(i - (i3 * 2));
        int iA = this.ah.a();
        layoutParams2.width = -1;
        layoutParams2.height = -2;
        this.K.setLayoutParams(layoutParams2);
        layoutParams3.width = this.z;
        layoutParams3.height = this.A;
        this.L.setLayoutParams(layoutParams3);
        layoutParams.width = -1;
        layoutParams.height = -2;
        layoutParams.topMargin = this.A;
        layoutParams.bottomMargin = this.ah.b();
        this.M.setLayoutParams(layoutParams);
        PanelView panelView = this.M;
        panelView.setPadding(panelView.getPaddingLeft(), this.M.getPaddingTop(), this.M.getPaddingRight(), (iA - this.ah.b()) + i.a(getContext(), 9.0f));
        if (!b(this.E)) {
            layoutParams3.bottomMargin = this.ah.b();
            layoutParams3.height = (this.A + this.ah.a()) - (this.ah.b() * 2);
            this.L.setLayoutParams(layoutParams3);
            BasePlayerView basePlayerView = this.L;
            basePlayerView.setPadding(basePlayerView.getPaddingLeft(), this.L.getPaddingTop(), this.L.getPaddingRight(), this.ah.a() - (this.ah.b() * 2));
        }
        this.aj = layoutParams3.height;
        this.ah.a(this.K);
    }

    @Override // com.anythink.basead.ui.HalfScreenATView, com.anythink.basead.ui.BaseATView
    public final void a() {
        this.ai = i.a(getContext(), 38.0f);
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_half_screen_letter_vertical", "layout"), this);
        int i = this.ai;
        setPadding(i, 0, i, 0);
        setBackgroundResource(i.a(getContext(), "dailog_background_color", com.anythink.expressad.foundation.h.i.d));
    }

    @Override // com.anythink.basead.ui.HalfScreenATView, com.anythink.basead.ui.BaseScreenATView
    public final void b() {
        n nVar;
        super.b();
        m mVar = this.b;
        if (mVar == null || (nVar = mVar.n) == null || nVar.D() != 0) {
            return;
        }
        this.K.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.LetterHalfScreenATView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LetterHalfScreenATView.this.a(1, 7);
            }
        });
    }

    @Override // com.anythink.basead.ui.HalfScreenATView, com.anythink.basead.ui.BaseScreenATView
    public final boolean b(int i) {
        if (this.c.k()) {
            return false;
        }
        return (TextUtils.isEmpty(this.c.x()) && TextUtils.isEmpty(this.c.v()) && TextUtils.isEmpty(this.c.w())) ? false : true;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void c() {
        super.c();
        com.anythink.basead.a.c.a aVar = new com.anythink.basead.a.c.a(getContext());
        this.ah = aVar;
        aVar.a((RelativeLayout) this.K.getParent(), this.K.getId());
        this.ah.a(this.c, new AnonymousClass2());
    }

    @Override // com.anythink.basead.ui.HalfScreenATView, com.anythink.basead.ui.BaseScreenATView, com.anythink.basead.ui.BaseATView
    public final RelativeLayout.LayoutParams m() {
        int i = (this.aj * 2) / 3;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, i, 0, 0);
        return layoutParams;
    }

    @Override // com.anythink.basead.ui.BaseScreenATView
    public final void u() {
        super.u();
        com.anythink.basead.a.c.a aVar = this.ah;
        if (aVar != null) {
            aVar.c();
        }
    }
}
