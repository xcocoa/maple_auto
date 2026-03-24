package com.anythink.basead.ui;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class ShakeThumbView extends BaseShakeView {
    private ImageView k;
    private TextView l;

    public ShakeThumbView(Context context) {
        super(context);
    }

    public ShakeThumbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeThumbView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @RequiresApi(api = 21)
    public ShakeThumbView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    private void a(View view) {
        int iA = i.a(getContext(), 88.0f);
        int color = Color.parseColor("#99000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(iA);
        view.setBackgroundDrawable(gradientDrawable);
    }

    @Override // com.anythink.basead.ui.BaseShakeView
    public final void a() {
        setOrientation(1);
        setGravity(1);
        this.k = new ImageView(getContext());
        this.k.setLayoutParams(new LinearLayout.LayoutParams(i.a(getContext(), 90.0f), i.a(getContext(), 90.0f)));
        ImageView imageView = this.k;
        int iA = i.a(getContext(), 88.0f);
        int color = Color.parseColor("#99000000");
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(color);
        gradientDrawable.setCornerRadius(iA);
        imageView.setBackgroundDrawable(gradientDrawable);
        this.a = new ImageView(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i.a(getContext(), 40.0f), i.a(getContext(), 40.0f));
        layoutParams.gravity = 49;
        layoutParams.topMargin = i.a(getContext(), 12.0f);
        this.a.setLayoutParams(layoutParams);
        this.l = new TextView(getContext());
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        this.l.setMaxWidth(i.a(getContext(), 62.0f));
        this.l.setMaxLines(1);
        this.l.setEllipsize(TextUtils.TruncateAt.END);
        layoutParams2.gravity = 81;
        layoutParams2.bottomMargin = i.a(getContext(), 14.0f);
        this.l.setLayoutParams(layoutParams2);
        this.l.setText(i.a(n.a().f(), "myoffer_shake_simple_title", com.anythink.expressad.foundation.h.i.g));
        this.l.setTextSize(1, 10.0f);
        this.l.setTextColor(-1);
        FrameLayout frameLayout = new FrameLayout(getContext());
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        frameLayout.addView(this.k);
        frameLayout.addView(this.a);
        frameLayout.addView(this.l);
        addView(frameLayout);
    }

    @Override // com.anythink.basead.ui.BaseShakeView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // com.anythink.basead.ui.BaseShakeView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        try {
            this.a.setOnClickListener(onClickListener);
            this.k.setOnClickListener(onClickListener);
        } catch (Throwable unused) {
        }
    }

    @Override // com.anythink.basead.ui.BaseShakeView
    public void setShakeSetting(com.anythink.core.common.f.n nVar) {
        TextView textView;
        super.setShakeSetting(nVar);
        String str = this.g;
        if (str == null || (textView = this.l) == null) {
            return;
        }
        textView.setText(str);
    }
}
