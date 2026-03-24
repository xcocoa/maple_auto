package com.anythink.expressad.video.dynview.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.anythink.core.common.o.n;
import com.anythink.expressad.foundation.d.c;
import com.anythink.expressad.video.dynview.f.b;
import com.anythink.expressad.video.dynview.f.h;
import com.anythink.expressad.video.module.AnythinkBaseView;
import com.anythink.expressad.widget.FeedBackButton;
import java.util.HashMap;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AnyThinkOrderCampView extends AnythinkBaseView {
    private AnyThinkOrderCampView n;
    private List<c> o;
    private int p;
    private int q;
    private int r;
    private int s;
    private String t;
    private FeedBackButton u;
    private ImageView v;
    private boolean w;
    private com.anythink.expressad.video.dynview.f.c x;
    private b y;
    private boolean z;

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.widget.AnyThinkOrderCampView$3, reason: invalid class name */
    public class AnonymousClass3 implements com.anythink.expressad.foundation.f.a {
        public AnonymousClass3() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void a() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void b() {
        }

        @Override // com.anythink.expressad.foundation.f.a
        public final void c() {
        }
    }

    /* JADX INFO: renamed from: com.anythink.expressad.video.dynview.widget.AnyThinkOrderCampView$4, reason: invalid class name */
    public class AnonymousClass4 implements View.OnClickListener {
        public final /* synthetic */ String a;

        public AnonymousClass4(String str) {
            this.a = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            n.a(this.a);
        }
    }

    public AnyThinkOrderCampView(Context context) {
        super(context);
        this.w = false;
        this.x = new com.anythink.expressad.video.dynview.f.c() { // from class: com.anythink.expressad.video.dynview.widget.AnyThinkOrderCampView.1
            @Override // com.anythink.expressad.video.dynview.f.c
            public final void a() {
                AnyThinkOrderCampView.a(AnyThinkOrderCampView.this);
            }

            @Override // com.anythink.expressad.video.dynview.f.c
            public final void a(c cVar, int i) {
                if (cVar != null) {
                    try {
                        AnyThinkOrderCampView.this.setCampaign(cVar);
                        AnyThinkOrderCampView.a(AnyThinkOrderCampView.this, cVar, i);
                    } catch (Exception e) {
                        e.getMessage();
                    }
                }
            }
        };
        this.z = false;
    }

    public AnyThinkOrderCampView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w = false;
        this.x = new com.anythink.expressad.video.dynview.f.c() { // from class: com.anythink.expressad.video.dynview.widget.AnyThinkOrderCampView.1
            @Override // com.anythink.expressad.video.dynview.f.c
            public final void a() {
                AnyThinkOrderCampView.a(AnyThinkOrderCampView.this);
            }

            @Override // com.anythink.expressad.video.dynview.f.c
            public final void a(c cVar, int i) {
                if (cVar != null) {
                    try {
                        AnyThinkOrderCampView.this.setCampaign(cVar);
                        AnyThinkOrderCampView.a(AnyThinkOrderCampView.this, cVar, i);
                    } catch (Exception e) {
                        e.getMessage();
                    }
                }
            }
        };
        this.z = false;
    }

    private void a() {
        com.anythink.expressad.video.module.a.a aVar = this.e;
        if (aVar != null) {
            aVar.a(104, "");
        }
    }

    private void a(c cVar, int i, int i2) {
        JSONObject jSONObject;
        JSONException e;
        if (cVar != null && cVar.j()) {
            try {
                c.C0131c c0131cM = cVar.M();
                if (c0131cM != null) {
                    new StringBuilder().append(c0131cM.b());
                }
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.anythink.expressad.foundation.g.a.ce, a(i));
                jSONObject.put("camp_position", i2);
            } catch (JSONException e3) {
                e = e3;
                e.printStackTrace();
            }
        } catch (JSONException e4) {
            jSONObject = null;
            e = e4;
        }
        com.anythink.expressad.video.module.a.a aVar = this.e;
        if (aVar != null) {
            aVar.a(105, jSONObject);
        }
    }

    public static /* synthetic */ void a(AnyThinkOrderCampView anyThinkOrderCampView) {
        com.anythink.expressad.video.module.a.a aVar = anyThinkOrderCampView.e;
        if (aVar != null) {
            aVar.a(104, "");
        }
    }

    public static /* synthetic */ void a(AnyThinkOrderCampView anyThinkOrderCampView, c cVar, int i) {
        JSONObject jSONObject;
        JSONException e;
        if (cVar != null && cVar.j()) {
            try {
                c.C0131c c0131cM = cVar.M();
                if (c0131cM != null) {
                    new StringBuilder().append(c0131cM.b());
                }
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
        try {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(com.anythink.expressad.foundation.g.a.ce, anyThinkOrderCampView.a(0));
                jSONObject.put("camp_position", i);
            } catch (JSONException e3) {
                e = e3;
                e.printStackTrace();
            }
        } catch (JSONException e4) {
            jSONObject = null;
            e = e4;
        }
        com.anythink.expressad.video.module.a.a aVar = anyThinkOrderCampView.e;
        if (aVar != null) {
            aVar.a(105, jSONObject);
        }
    }

    private void b() {
        ScaleAnimation scaleAnimation = new ScaleAnimation(0.0f, 1.0f, 0.0f, 1.0f, 2, 0.5f, 2, 0.5f);
        scaleAnimation.setDuration(500L);
        this.n.startAnimation(scaleAnimation);
    }

    private void e() {
        FeedBackButton feedBackButton = this.u;
        if (feedBackButton == null) {
            return;
        }
        List<c> list = this.o;
        if (list == null) {
            feedBackButton.setVisibility(8);
            return;
        }
        if (list.get(0) == null) {
            this.u.setVisibility(8);
            return;
        }
        if (!com.anythink.expressad.foundation.f.b.a().b()) {
            this.u.setVisibility(8);
            return;
        }
        this.t = this.o.get(0).K();
        this.b = this.o.get(0);
        com.anythink.expressad.foundation.f.b.a().a(this.t + "_2", new AnonymousClass3());
        com.anythink.expressad.foundation.f.b.a().a(this.t + "_2", this.b);
        com.anythink.expressad.foundation.f.b.a().a(this.t + "_2", this.u);
    }

    private void f() {
        if (this.v == null) {
            return;
        }
        com.anythink.expressad.foundation.b.a.c().f();
        com.anythink.expressad.d.b.a();
        com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
        if (aVarB == null) {
            this.v.setVisibility(8);
            return;
        }
        String strJ = aVarB.J();
        if (TextUtils.isEmpty(strJ)) {
            this.v.setVisibility(8);
        }
        this.v.setOnClickListener(new AnonymousClass4(strJ));
    }

    public void createView(final ViewGroup viewGroup) {
        if (this.o == null) {
            b bVar = this.y;
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        HashMap map = new HashMap();
        map.put(com.anythink.expressad.video.dynview.a.a.E, this.x);
        new com.anythink.expressad.video.dynview.j.c();
        com.anythink.expressad.video.dynview.c cVarB = com.anythink.expressad.video.dynview.j.c.b(com.anythink.core.common.b.n.a().f(), this.o);
        com.anythink.expressad.video.dynview.b.a();
        com.anythink.expressad.video.dynview.b.a(cVarB, new h() { // from class: com.anythink.expressad.video.dynview.widget.AnyThinkOrderCampView.2
            @Override // com.anythink.expressad.video.dynview.f.h
            public final void a(com.anythink.expressad.video.dynview.a aVar) {
                try {
                    AnyThinkOrderCampView.this.n.addView(aVar.a());
                    AnyThinkOrderCampView.this.w = aVar.c();
                    viewGroup.removeAllViews();
                    viewGroup.addView(AnyThinkOrderCampView.this.n);
                    AnyThinkOrderCampView.this.setViewStatus();
                    if (AnyThinkOrderCampView.this.y != null) {
                        AnyThinkOrderCampView.this.y.a();
                    }
                } catch (Exception e) {
                    e.getMessage();
                }
            }

            @Override // com.anythink.expressad.video.dynview.f.h
            public final void a(com.anythink.expressad.video.dynview.c.b bVar2) {
                try {
                    if (AnyThinkOrderCampView.this.y != null) {
                        AnyThinkOrderCampView.this.y.b();
                    }
                } catch (Exception e) {
                    e.getMessage();
                }
            }
        }, map);
    }

    @Override // com.anythink.expressad.video.module.AnythinkBaseView
    public void init(Context context) {
        this.n = this;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        JSONObject jSONObject;
        JSONException e;
        super.onAttachedToWindow();
        if (this.o == null) {
            return;
        }
        for (int i = 0; i < this.o.size(); i++) {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("camp_position", i);
                } catch (JSONException e2) {
                    e = e2;
                    e.printStackTrace();
                }
            } catch (JSONException e3) {
                jSONObject = null;
                e = e3;
            }
            com.anythink.expressad.video.module.a.a aVar = this.e;
            if (aVar != null) {
                aVar.a(110, jSONObject);
            }
        }
    }

    public void setCampOrderViewBuildCallback(b bVar) {
        this.y = bVar;
    }

    public void setCampaignExes(List<c> list) {
        this.o = list;
    }

    public void setNotchPadding(int i, int i2, int i3, int i4) {
        this.p = i;
        this.q = i2;
        this.r = i3;
        this.s = i4;
        setViewStatus();
    }

    public void setRewarded(boolean z) {
        this.z = z;
    }

    public void setViewStatus() {
        AnyThinkOrderCampView anyThinkOrderCampView = this.n;
        if (anyThinkOrderCampView == null || !this.z) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) anyThinkOrderCampView.findViewById(filterFindViewId(this.w, "anythink_native_order_camp_controller"));
        this.u = (FeedBackButton) this.n.findViewById(filterFindViewId(this.w, "anythink_native_order_camp_feed_btn"));
        this.v = (ImageView) this.n.findViewById(filterFindViewId(this.w, "anythink_iv_link"));
        if (relativeLayout != null) {
            relativeLayout.setPadding(this.p, this.r, this.q, this.s);
        }
        FeedBackButton feedBackButton = this.u;
        if (feedBackButton != null && feedBackButton != null) {
            try {
                List<c> list = this.o;
                if (list == null) {
                    feedBackButton.setVisibility(8);
                } else if (list.get(0) != null && com.anythink.expressad.foundation.f.b.a().b()) {
                    this.t = this.o.get(0).K();
                    this.b = this.o.get(0);
                    com.anythink.expressad.foundation.f.b.a().a(this.t + "_2", new AnonymousClass3());
                    com.anythink.expressad.foundation.f.b.a().a(this.t + "_2", this.b);
                    com.anythink.expressad.foundation.f.b.a().a(this.t + "_2", this.u);
                } else {
                    FeedBackButton feedBackButton2 = this.u;
                    feedBackButton2.setVisibility(8);
                }
            } catch (Exception e) {
                e.getMessage();
            }
        }
        ImageView imageView = this.v;
        if (imageView == null || imageView == null) {
            return;
        }
        try {
            com.anythink.expressad.foundation.b.a.c().f();
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.d.a aVarB = com.anythink.expressad.d.b.b();
            if (aVarB == null) {
                this.v.setVisibility(8);
                return;
            }
            String strJ = aVarB.J();
            if (TextUtils.isEmpty(strJ)) {
                this.v.setVisibility(8);
            }
            this.v.setOnClickListener(new AnonymousClass4(strJ));
        } catch (Exception e2) {
            e2.getMessage();
        }
    }

    public void startAlphaAnimation() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(500L);
        this.n.startAnimation(alphaAnimation);
    }

    public void startTranslateAnimation() {
        TranslateAnimation translateAnimation = new TranslateAnimation(2, 1.0f, 2, 0.0f, 2, 0.0f, 2, 0.0f);
        translateAnimation.setDuration(500L);
        this.n.startAnimation(translateAnimation);
    }
}
