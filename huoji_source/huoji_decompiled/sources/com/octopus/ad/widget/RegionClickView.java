package com.octopus.ad.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.octopus.ad.internal.utilities.ViewUtil;

/* JADX INFO: loaded from: classes2.dex */
public class RegionClickView extends LinearLayout {
    private boolean a;
    private GradientDrawable b;
    private TextView c;

    public RegionClickView(Context context) {
        super(context);
        this.a = false;
        init(context);
    }

    public RegionClickView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
        init(context);
    }

    public RegionClickView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = false;
        init(context);
    }

    private void a(Context context, int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.b = gradientDrawable;
        gradientDrawable.setColor(Color.parseColor("#80000000"));
        if (i == 1) {
            this.b.setStroke(1, Color.parseColor("#E8E8E8"));
        }
        this.b.setCornerRadius(ViewUtil.dip2px(context, 30.0f));
        setBackgroundDrawable(this.b);
    }

    public void init(Context context) {
        if (this.a) {
            return;
        }
        this.a = true;
        a(context, 1);
        TextView textView = new TextView(context);
        this.c = textView;
        textView.setLines(1);
        this.c.setTextSize(2, 14.0f);
        this.c.setTextColor(Color.parseColor("#949494"));
        this.c.setText("点击跳转详情页或第三方应用     >");
        this.c.setGravity(17);
        setGravity(17);
        setOrientation(1);
        addView(this.c);
    }

    public void setBackGroundAlpha(double d) {
        GradientDrawable gradientDrawable = this.b;
        if (gradientDrawable == null || d <= 0.0d) {
            return;
        }
        gradientDrawable.setAlpha((int) (d * 255.0d));
    }

    public void setBackgroundColor(String str) {
        GradientDrawable gradientDrawable = this.b;
        if (gradientDrawable == null || str == null) {
            return;
        }
        try {
            gradientDrawable.setColor(Color.parseColor(str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setRegionalClickViewBean() {
        setTitle("点击跳转详情页或第三方应用     >");
        setTitleColor("#FFFFFF");
        setTitleSize(14.0f);
        setBackGroundAlpha(0.7d);
        setBackgroundColor("#80000000");
    }

    public void setTitle(String str) {
        TextView textView = this.c;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setText(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setTitleColor(String str) {
        TextView textView = this.c;
        if (textView == null || str == null) {
            return;
        }
        try {
            textView.setTextColor(Color.parseColor(str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setTitleSize(float f) {
        TextView textView = this.c;
        if (textView == null || f <= 0.0f) {
            return;
        }
        textView.setTextSize(2, f);
    }
}
