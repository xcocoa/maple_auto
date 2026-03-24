package com.anythink.basead.ui;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class ClickToReLoadView extends LinearLayout {
    private ImageView a;
    private TextView b;
    private a c;
    private int d;

    /* JADX INFO: renamed from: com.anythink.basead.ui.ClickToReLoadView$1, reason: invalid class name */
    public class AnonymousClass1 implements View.OnClickListener {
        public long a;

        public AnonymousClass1() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (jCurrentTimeMillis - this.a > 1000) {
                this.a = jCurrentTimeMillis;
                if (ClickToReLoadView.this.c != null) {
                    ClickToReLoadView.this.c.a();
                }
            }
        }
    }

    public interface a {
        void a();
    }

    public ClickToReLoadView(Context context) {
        super(context);
        setOrientation(1);
        setGravity(17);
        this.d = i.a(context, 10.0f);
        ImageView imageView = new ImageView(context);
        this.a = imageView;
        imageView.setImageResource(i.a(context, "myoffer_webview_reload_icon", com.anythink.expressad.foundation.h.i.c));
        int iA = i.a(context, 30.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iA, iA);
        layoutParams.gravity = 17;
        layoutParams.bottomMargin = this.d;
        TextView textView = new TextView(context);
        this.b = textView;
        textView.setText(getResources().getText(i.a(context, "myoffer_webview_reload", com.anythink.expressad.foundation.h.i.g)));
        this.b.setTextColor(getResources().getColor(i.a(context, "color_reload_button", com.anythink.expressad.foundation.h.i.d)));
        this.b.setBackgroundResource(i.a(context, "myoffer_webview_bg_reload_button", com.anythink.expressad.foundation.h.i.c));
        int iA2 = i.a(context, 9.0f);
        int iA3 = i.a(context, 5.0f);
        this.b.setPadding(iA2, iA3, iA2, iA3);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        layoutParams2.topMargin = this.d;
        addView(this.a, layoutParams);
        addView(this.b, layoutParams2);
        this.b.setOnClickListener(new AnonymousClass1());
    }

    private void a() {
        this.b.setOnClickListener(new AnonymousClass1());
    }

    private void a(Context context) {
        setOrientation(1);
        setGravity(17);
        this.d = i.a(context, 10.0f);
        ImageView imageView = new ImageView(context);
        this.a = imageView;
        imageView.setImageResource(i.a(context, "myoffer_webview_reload_icon", com.anythink.expressad.foundation.h.i.c));
        int iA = i.a(context, 30.0f);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(iA, iA);
        layoutParams.gravity = 17;
        layoutParams.bottomMargin = this.d;
        TextView textView = new TextView(context);
        this.b = textView;
        textView.setText(getResources().getText(i.a(context, "myoffer_webview_reload", com.anythink.expressad.foundation.h.i.g)));
        this.b.setTextColor(getResources().getColor(i.a(context, "color_reload_button", com.anythink.expressad.foundation.h.i.d)));
        this.b.setBackgroundResource(i.a(context, "myoffer_webview_bg_reload_button", com.anythink.expressad.foundation.h.i.c));
        int iA2 = i.a(context, 9.0f);
        int iA3 = i.a(context, 5.0f);
        this.b.setPadding(iA2, iA3, iA2, iA3);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        layoutParams2.topMargin = this.d;
        addView(this.a, layoutParams);
        addView(this.b, layoutParams2);
    }

    private void b() {
        try {
            this.a.setVisibility(8);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.b.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.topMargin = 0;
                this.b.setLayoutParams(layoutParams);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (getHeight() < i.a(getContext(), 100.0f)) {
            try {
                this.a.setVisibility(8);
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.b.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.topMargin = 0;
                    this.b.setLayoutParams(layoutParams);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void setListener(a aVar) {
        this.c = aVar;
    }
}
