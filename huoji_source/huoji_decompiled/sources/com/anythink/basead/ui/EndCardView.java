package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.c;
import com.anythink.core.common.o.i;
import com.anythink.core.common.res.b;
import com.anythink.core.common.res.e;
import com.anythink.core.common.ui.component.RoundImageView;

/* JADX INFO: loaded from: classes.dex */
public class EndCardView extends BaseEndCardView {
    private a e;
    private int f;
    private int g;
    private ImageView h;
    private ImageView i;
    private TextView j;
    private Bitmap k;
    private final View.OnClickListener l;

    /* JADX INFO: renamed from: com.anythink.basead.ui.EndCardView$2, reason: invalid class name */
    public class AnonymousClass2 implements b.a {
        public final /* synthetic */ l a;

        public AnonymousClass2(l lVar) {
            this.a = lVar;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
            if (EndCardView.this.e != null) {
                EndCardView.this.e.b();
            }
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.a.y())) {
                EndCardView.this.h.setImageBitmap(bitmap);
                c.a(EndCardView.this.getContext(), bitmap, new c.a() { // from class: com.anythink.basead.ui.EndCardView.2.1
                    @Override // com.anythink.core.common.o.c.a
                    public final void a() {
                        if (EndCardView.this.e != null) {
                            EndCardView.this.e.b();
                        }
                    }

                    @Override // com.anythink.core.common.o.c.a
                    public final void a(Bitmap bitmap2) {
                        EndCardView.this.k = bitmap2;
                        EndCardView.this.setBackgroundDrawable(new BitmapDrawable(EndCardView.this.k));
                        if (EndCardView.this.e != null) {
                            EndCardView.this.e.b();
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.basead.ui.EndCardView$3, reason: invalid class name */
    public class AnonymousClass3 implements b.a {
        public final /* synthetic */ String a;
        public final /* synthetic */ int b;

        public AnonymousClass3(String str, int i) {
            this.a = str;
            this.b = i;
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onFail(String str, String str2) {
        }

        @Override // com.anythink.core.common.res.b.a
        public final void onSuccess(String str, Bitmap bitmap) {
            if (TextUtils.equals(str, this.a)) {
                int i = this.b;
                ViewGroup.LayoutParams layoutParams = EndCardView.this.i.getLayoutParams();
                layoutParams.width = (int) (i * ((bitmap.getWidth() * 1.0f) / bitmap.getHeight()));
                layoutParams.height = i;
                EndCardView.this.i.setLayoutParams(layoutParams);
                EndCardView.this.i.setScaleType(ImageView.ScaleType.FIT_XY);
                EndCardView.this.i.setImageBitmap(bitmap);
            }
        }
    }

    public interface a {
        void a();

        void b();
    }

    public EndCardView(Context context, l lVar, m mVar) {
        super(context, lVar, mVar);
        this.l = new View.OnClickListener() { // from class: com.anythink.basead.ui.EndCardView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                n nVar = EndCardView.this.d;
                if (nVar != null) {
                    if (nVar.D() == 0) {
                        if (EndCardView.this.e != null) {
                            EndCardView.this.e.a();
                        }
                    } else {
                        if (EndCardView.this.j == null || view != EndCardView.this.j || EndCardView.this.j.getVisibility() != 0 || EndCardView.this.e == null) {
                            return;
                        }
                        EndCardView.this.e.a();
                    }
                }
            }
        };
    }

    private void a(l lVar) {
        try {
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, lVar.y()), this.f, this.g, new AnonymousClass2(lVar));
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
    }

    private void b(l lVar) {
        this.i = new RoundImageView(getContext());
        int iA = i.a(getContext(), 12.0f);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iA);
        layoutParams.addRule(11);
        layoutParams.addRule(12);
        addView(this.i, layoutParams);
        String strZ = lVar.z();
        if (TextUtils.isEmpty(strZ)) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = this.i.getLayoutParams();
        com.anythink.core.common.res.b.a(getContext()).a(new e(1, strZ), layoutParams2.width, layoutParams2.height, new AnonymousClass3(strZ, iA));
    }

    private void c() {
        ScanningAnimTextView scanningAnimTextView = new ScanningAnimTextView(getContext());
        this.j = scanningAnimTextView;
        scanningAnimTextView.setText(i.a(getContext(), "myoffer_cta_learn_more", com.anythink.expressad.foundation.h.i.g));
        this.j.setTextColor(Color.parseColor("#ffffffff"));
        this.j.setTextSize(14.0f);
        this.j.setGravity(17);
        this.j.setBackgroundResource(i.a(getContext(), "myoffer_splash_bg_rectangle_btn_cta_asseblem", com.anythink.expressad.foundation.h.i.c));
        this.j.setOnClickListener(this.l);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, i.a(getContext(), 48.0f));
        layoutParams.addRule(12);
        layoutParams.bottomMargin = i.a(getContext(), 96.0f);
        layoutParams.leftMargin = i.a(getContext(), 24.0f);
        layoutParams.rightMargin = i.a(getContext(), 24.0f);
        addView(this.j, layoutParams);
    }

    @Override // com.anythink.basead.ui.BaseEndCardView
    public final void a() {
    }

    @Override // com.anythink.basead.ui.BaseEndCardView
    public final Drawable b() {
        Bitmap bitmap = this.k;
        return (bitmap == null || bitmap.isRecycled()) ? super.b() : new BitmapDrawable(this.k);
    }

    public View getLearnMoreButton() {
        return this.j;
    }

    public void init(boolean z, boolean z3, a aVar) {
        setId(i.a(getContext(), "myoffer_end_card_id", "id"));
        this.e = aVar;
        this.h = new RoundImageView(getContext());
        addView(this.h, new RelativeLayout.LayoutParams(-1, -1));
        if (z) {
            l lVar = this.b;
            this.i = new RoundImageView(getContext());
            int iA = i.a(getContext(), 12.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, iA);
            layoutParams.addRule(11);
            layoutParams.addRule(12);
            addView(this.i, layoutParams);
            String strZ = lVar.z();
            if (!TextUtils.isEmpty(strZ)) {
                ViewGroup.LayoutParams layoutParams2 = this.i.getLayoutParams();
                com.anythink.core.common.res.b.a(getContext()).a(new e(1, strZ), layoutParams2.width, layoutParams2.height, new AnonymousClass3(strZ, iA));
            }
        }
        if (z3) {
            ScanningAnimTextView scanningAnimTextView = new ScanningAnimTextView(getContext());
            this.j = scanningAnimTextView;
            scanningAnimTextView.setText(i.a(getContext(), "myoffer_cta_learn_more", com.anythink.expressad.foundation.h.i.g));
            this.j.setTextColor(Color.parseColor("#ffffffff"));
            this.j.setTextSize(14.0f);
            this.j.setGravity(17);
            this.j.setBackgroundResource(i.a(getContext(), "myoffer_splash_bg_rectangle_btn_cta_asseblem", com.anythink.expressad.foundation.h.i.c));
            this.j.setOnClickListener(this.l);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i.a(getContext(), 48.0f));
            layoutParams3.addRule(12);
            layoutParams3.bottomMargin = i.a(getContext(), 96.0f);
            layoutParams3.leftMargin = i.a(getContext(), 24.0f);
            layoutParams3.rightMargin = i.a(getContext(), 24.0f);
            addView(this.j, layoutParams3);
        }
        setOnClickListener(this.l);
    }

    public void load() {
        l lVar = this.b;
        try {
            com.anythink.core.common.res.b.a(getContext()).a(new e(1, lVar.y()), this.f, this.g, new AnonymousClass2(lVar));
        } catch (Exception e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void setSize(int i, int i2) {
        this.f = i;
        this.g = i2;
    }
}
