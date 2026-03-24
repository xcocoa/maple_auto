package com.anythink.expressad.foundation.f.a;

import android.app.Activity;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.anythink.core.common.b.n;
import com.anythink.expressad.d.a;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.foundation.h.i;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.widget.FeedBackButton;
import com.anythink.expressad.widget.FeedbackRadioGroup;
import com.anythink.expressad.widget.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static int n = -1;
    private static String s;
    private String a;
    private c b;
    private FeedBackButton c;
    private int d;
    private int e;
    private String j;
    private String k;
    private com.anythink.expressad.widget.a.c p;
    private List<C0132a> q;
    private int f = -1;
    private int g = -1;
    private int h = -1;
    private int i = -1;
    private float l = 1.0f;
    private int m = t.b(n.a().f(), 20.0f);
    private int o = n;
    private b r = new b() { // from class: com.anythink.expressad.foundation.f.a.a.1
        @Override // com.anythink.expressad.widget.a.b
        public final void a() {
            a.a(a.this);
        }

        @Override // com.anythink.expressad.widget.a.b
        public final void b() {
            a.b(a.this);
        }

        @Override // com.anythink.expressad.widget.a.b
        public final void c() {
            a.c(a.this);
        }
    };

    /* JADX INFO: renamed from: com.anythink.expressad.foundation.f.a.a$a, reason: collision with other inner class name */
    public static class C0132a implements b {
        private com.anythink.expressad.foundation.f.a a;
        private String b;

        public C0132a(String str, com.anythink.expressad.foundation.f.a aVar) {
            this.a = aVar;
            this.b = str;
        }

        @Override // com.anythink.expressad.widget.a.b
        public final void a() {
            com.anythink.expressad.foundation.f.b.c = false;
            com.anythink.expressad.foundation.f.a aVar = this.a;
            if (aVar != null) {
                String unused = a.s;
                aVar.c();
            }
        }

        public final void a(boolean z) {
            com.anythink.expressad.foundation.f.b.c = true;
            com.anythink.expressad.foundation.f.a aVar = this.a;
            if (aVar == null || !z) {
                return;
            }
            aVar.a();
        }

        @Override // com.anythink.expressad.widget.a.b
        public final void b() {
            com.anythink.expressad.foundation.f.b.c = false;
            com.anythink.expressad.foundation.f.a aVar = this.a;
            if (aVar != null) {
                aVar.b();
            }
        }

        @Override // com.anythink.expressad.widget.a.b
        public final void c() {
        }
    }

    public a(String str) {
        this.q = new ArrayList();
        this.a = str;
        if (this.q == null) {
            this.q = new ArrayList();
        }
        g();
        n();
        h();
    }

    private static FeedbackRadioGroup a(a.b bVar) {
        JSONArray jSONArrayD = bVar.d();
        Context contextF = n.a().f();
        if (jSONArrayD == null || jSONArrayD.length() <= 0 || contextF == null) {
            return null;
        }
        FeedbackRadioGroup feedbackRadioGroup = new FeedbackRadioGroup(contextF);
        feedbackRadioGroup.setOrientation(0);
        return feedbackRadioGroup;
    }

    private void a(RadioButton radioButton) {
        radioButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.anythink.expressad.foundation.f.a.a.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    String unused = a.s = (String) compoundButton.getText();
                }
                if (a.this.p != null) {
                    a.this.p.a(!TextUtils.isEmpty(a.s));
                }
            }
        });
    }

    public static /* synthetic */ void a(a aVar) {
        List<C0132a> list = aVar.q;
        if (list != null) {
            for (C0132a c0132a : list) {
                if (c0132a != null) {
                    c0132a.a();
                }
            }
        }
        s = "";
    }

    private void a(FeedbackRadioGroup feedbackRadioGroup, a.b bVar) {
        ColorStateList colorStateList;
        JSONArray jSONArrayD = bVar.d();
        Context contextF = n.a().f();
        if (jSONArrayD == null || jSONArrayD.length() <= 0 || contextF == null) {
            return;
        }
        int iA = i.a(contextF, "anythink_cm_feedback_choice_btn_bg", i.c);
        Resources resourcesA = i.a(contextF);
        int iA2 = i.a(contextF, "anythink_cm_feedback_rb_text_color_color_list", i.d);
        if (resourcesA != null) {
            try {
                colorStateList = resourcesA.getColorStateList(iA2);
            } catch (Exception e) {
                e.printStackTrace();
                colorStateList = null;
            }
        } else {
            colorStateList = null;
        }
        int iB = t.b(contextF, 14.0f);
        int iB2 = t.b(contextF, 7.0f);
        int iB3 = t.b(contextF, 6.0f);
        for (int i = 0; i < jSONArrayD.length(); i++) {
            String strOptString = jSONArrayD.optString(i);
            RadioButton radioButton = new RadioButton(contextF);
            radioButton.setButtonDrawable((Drawable) null);
            radioButton.setBackgroundResource(iA);
            radioButton.setText(strOptString);
            if (colorStateList != null) {
                radioButton.setTextColor(colorStateList);
            }
            radioButton.setPadding(iB, iB2, iB, iB2);
            RadioGroup.LayoutParams layoutParams = new RadioGroup.LayoutParams(-2, -2);
            int i2 = iB3 / 4;
            layoutParams.setMargins(iB3, i2, iB3, i2);
            a(radioButton);
            feedbackRadioGroup.addView(radioButton, layoutParams);
        }
    }

    private void a(boolean z) {
        List<C0132a> list = this.q;
        if (list != null) {
            for (C0132a c0132a : list) {
                if (c0132a != null) {
                    c0132a.a(z);
                }
            }
        }
    }

    private void b(C0132a c0132a) {
        List<C0132a> list = this.q;
        if (list != null) {
            list.remove(c0132a);
        }
    }

    public static /* synthetic */ void b(a aVar) {
        List<C0132a> list = aVar.q;
        if (list != null) {
            for (C0132a c0132a : list) {
                if (c0132a != null) {
                    c0132a.b();
                }
            }
        }
        s = "";
    }

    public static /* synthetic */ void c(a aVar) {
        List<C0132a> list = aVar.q;
        if (list != null) {
            Iterator<C0132a> it = list.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    private void g() {
        if (this.r == null) {
            this.r = new b() { // from class: com.anythink.expressad.foundation.f.a.a.2
                @Override // com.anythink.expressad.widget.a.b
                public final void a() {
                    a.a(a.this);
                }

                @Override // com.anythink.expressad.widget.a.b
                public final void b() {
                    a.b(a.this);
                }

                @Override // com.anythink.expressad.widget.a.b
                public final void c() {
                    a.c(a.this);
                }
            };
        }
    }

    private void h() {
        try {
            com.anythink.expressad.foundation.f.b.a();
            if (com.anythink.expressad.foundation.f.b.a(n.a().f()) != null) {
                com.anythink.expressad.d.b.a();
                com.anythink.expressad.foundation.b.a.c().f();
                com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
                if (aVarB == null) {
                    com.anythink.expressad.d.b.a();
                    aVarB = com.anythink.expressad.d.b.c();
                }
                a.b bVarL = aVarB.L();
                if (bVarL == null) {
                    return;
                }
                g();
                com.anythink.expressad.foundation.f.b.a();
                this.p = new com.anythink.expressad.widget.a.c(com.anythink.expressad.foundation.f.b.a(n.a().f()), this.r);
                FeedbackRadioGroup feedbackRadioGroupA = a(bVarL);
                this.p.c(bVarL.c());
                this.p.b(bVarL.b());
                this.p.a(bVarL.a());
                this.p.a(feedbackRadioGroupA);
                this.p.a(!TextUtils.isEmpty(s));
                a(feedbackRadioGroupA, bVarL);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void i() {
        List<C0132a> list = this.q;
        if (list != null) {
            for (C0132a c0132a : list) {
                if (c0132a != null) {
                    c0132a.b();
                }
            }
        }
        s = "";
    }

    private void j() {
        List<C0132a> list = this.q;
        if (list != null) {
            for (C0132a c0132a : list) {
                if (c0132a != null) {
                    c0132a.a();
                }
            }
        }
        s = "";
    }

    private void k() {
        List<C0132a> list = this.q;
        if (list != null) {
            Iterator<C0132a> it = list.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
    }

    private String l() {
        return this.a;
    }

    private void m() {
        FeedBackButton feedBackButton = this.c;
        if (feedBackButton != null) {
            int i = this.f;
            if (i >= 0) {
                feedBackButton.setX(i);
            }
            int i2 = this.g;
            if (i2 >= 0) {
                this.c.setY(i2);
            }
            float f = this.l;
            if (f >= 0.0f) {
                this.c.setAlpha(f);
                this.c.setEnabled(this.l != 0.0f);
            }
            ViewGroup.LayoutParams layoutParams = this.c.getLayoutParams();
            int i3 = this.h;
            if (i3 > 0) {
                this.c.setWidth(i3);
                if (layoutParams != null) {
                    layoutParams.width = this.h;
                }
            }
            int i4 = this.i;
            if (i4 > 0) {
                this.c.setHeight(i4);
                if (layoutParams != null) {
                    layoutParams.height = this.i;
                }
            }
            if (layoutParams != null) {
                this.c.setLayoutParams(layoutParams);
            }
            try {
                if (!TextUtils.isEmpty(this.j)) {
                    this.c.setTextColor(Color.parseColor(this.j));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            GradientDrawable gradientDrawable = new GradientDrawable();
            int i5 = this.m;
            if (i5 > 0) {
                gradientDrawable.setCornerRadius(i5);
            }
            gradientDrawable.setColor(Color.parseColor(!TextUtils.isEmpty(this.k) ? this.k : FeedBackButton.FEEDBACK_BTN_BACKGROUND_COLOR_STR));
            try {
                this.c.setBackgroundDrawable(gradientDrawable);
            } catch (Throwable unused) {
            }
        }
    }

    private void n() {
        Context contextF = n.a().f();
        if (contextF != null) {
            try {
                FeedBackButton feedBackButton = new FeedBackButton(contextF);
                this.c = feedBackButton;
                int i = 8;
                if (this.o != 8) {
                    i = 0;
                }
                feedBackButton.setVisibility(i);
                this.c.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.foundation.f.a.a.4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        a.this.a();
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private int o() {
        return this.d;
    }

    private int p() {
        return this.e;
    }

    public final void a() {
        com.anythink.expressad.foundation.f.b.a();
        Activity activityA = com.anythink.expressad.foundation.f.b.a(n.a().f());
        com.anythink.expressad.widget.a.c cVar = this.p;
        if (cVar == null || cVar.getContext() != activityA) {
            h();
        }
        Context contextF = n.a().f();
        FeedBackButton feedBackButton = this.c;
        if (feedBackButton != null) {
            contextF = feedBackButton.getContext();
        }
        com.anythink.expressad.foundation.f.b.a();
        boolean zA = com.anythink.expressad.foundation.f.b.a(contextF, this.p);
        List<C0132a> list = this.q;
        if (list != null) {
            for (C0132a c0132a : list) {
                if (c0132a != null) {
                    c0132a.a(zA);
                }
            }
        }
    }

    public final void a(int i) {
        this.o = i;
        FeedBackButton feedBackButton = this.c;
        if (feedBackButton != null) {
            feedBackButton.setVisibility(i);
        }
    }

    public final void a(int i, int i2, int i3, int i4, int i5, float f, String str, String str2) {
        this.f = i;
        this.g = i2;
        this.h = i3;
        this.i = i4;
        this.j = str;
        this.k = str2;
        this.l = f;
        this.m = i5;
        m();
    }

    public final void a(c cVar) {
        this.b = cVar;
    }

    public final void a(C0132a c0132a) {
        if (this.q == null) {
            this.q = new ArrayList();
        }
        this.q.add(c0132a);
    }

    public final void a(FeedBackButton feedBackButton) {
        FeedBackButton feedBackButton2 = this.c;
        if (feedBackButton2 != null) {
            feedBackButton2.setVisibility(8);
        }
        if (feedBackButton != null) {
            feedBackButton.setAlpha(this.l);
            feedBackButton.setEnabled(this.l != 0.0f);
            feedBackButton.setVisibility(this.o != 8 ? 0 : 8);
            this.c = feedBackButton;
            c cVar = this.b;
            if (cVar != null && !cVar.j()) {
                m();
            }
            feedBackButton.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.expressad.foundation.f.a.a.5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    a.this.a();
                }
            });
        }
    }

    public final void b() {
        com.anythink.expressad.widget.a.c cVar = this.p;
        if (cVar == null || !cVar.isShowing()) {
            return;
        }
        this.p.cancel();
    }

    public final void b(int i) {
        this.d = i;
    }

    public final FeedBackButton c() {
        if (this.c == null) {
            n();
        }
        return this.c;
    }

    public final void c(int i) {
        this.e = i;
    }

    public final void d() {
        FeedBackButton feedBackButton = this.c;
        if (feedBackButton != null) {
            feedBackButton.setOnClickListener(null);
            this.c.setVisibility(8);
            ViewGroup viewGroup = (ViewGroup) this.c.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.c);
            }
        }
        com.anythink.expressad.widget.a.c cVar = this.p;
        if (cVar != null) {
            cVar.a((b) null);
        }
        this.p = null;
        this.q = null;
        this.c = null;
        this.r = null;
    }

    public final c e() {
        return this.b;
    }
}
