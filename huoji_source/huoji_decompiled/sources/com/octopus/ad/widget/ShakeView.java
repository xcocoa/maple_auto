package com.octopus.ad.widget;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.octopus.ad.R;

/* JADX INFO: loaded from: classes2.dex */
public class ShakeView extends LinearLayout {
    public ImageView a;
    public TextView b;
    private boolean c;
    private String d;
    private AnimationDrawable e;

    public ShakeView(Context context) {
        super(context);
        this.c = false;
        init(context);
    }

    public ShakeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = false;
        init(context);
    }

    public ShakeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = false;
        init(context);
    }

    public void init(Context context) {
        if (this.c) {
            return;
        }
        this.c = true;
        ImageView imageView = new ImageView(context);
        this.a = imageView;
        imageView.setBackgroundResource(R.drawable.oct_anim_shake);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        setOrientation(1);
        addView(this.a, layoutParams);
        this.e = (AnimationDrawable) this.a.getBackground();
    }

    public void setTitleText(String str) {
        this.d = str;
        TextView textView = this.b;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void startShake() {
        AnimationDrawable animationDrawable = this.e;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    public void stopShake() {
        AnimationDrawable animationDrawable = this.e;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }
}
