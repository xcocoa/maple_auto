package com.anythink.expressad.videocommon.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.anythink.expressad.foundation.h.i;

/* JADX INFO: loaded from: classes.dex */
public class StarLevelView extends LinearLayout {
    public StarLevelView(Context context) {
        super(context);
        setOrientation(0);
    }

    public StarLevelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOrientation(0);
    }

    @SuppressLint({"NewApi"})
    public StarLevelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setOrientation(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00d0 A[LOOP:1: B:33:0x00ce->B:34:0x00d0, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void initScore(double d) {
        ImageView imageView;
        LinearLayout.LayoutParams layoutParams;
        int i;
        ImageView imageView2;
        LinearLayout.LayoutParams layoutParams2;
        for (int i2 = 0; i2 < ((int) d); i2++) {
            ImageView imageView3 = new ImageView(getContext());
            imageView3.setImageResource(i.a(getContext(), "anythink_video_common_full_star", i.c));
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
            if (i2 != 0) {
                layoutParams3.setMargins(5, 0, 5, 0);
            }
            addView(imageView3, layoutParams3);
        }
        int i3 = (int) (50.0d - (d * 10.0d));
        if (i3 <= 0) {
            return;
        }
        if (i3 > 1 && i3 < 10) {
            if (i3 <= 0 || i3 >= 5) {
                imageView2 = new ImageView(getContext());
                imageView2.setImageResource(i.a(getContext(), "anythink_video_common_full_star", i.c));
                layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            } else {
                imageView2 = new ImageView(getContext());
                imageView2.setImageResource(i.a(getContext(), "anythink_video_common_full_star", i.c));
                layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
            }
            layoutParams2.setMargins(5, 0, 5, 0);
            addView(imageView2, layoutParams2);
        }
        int i4 = i3 / 10;
        if (i4 > 0) {
            int i5 = i3 % (i4 * 10);
            if (i5 <= 0 || i5 >= 5) {
                if (i5 >= 5 && i5 <= 9) {
                    imageView = new ImageView(getContext());
                    imageView.setImageResource(i.a(getContext(), "anythink_video_common_half_star", i.c));
                    layoutParams = new LinearLayout.LayoutParams(-2, -2);
                }
                for (i = 0; i < i4; i++) {
                    ImageView imageView4 = new ImageView(getContext());
                    imageView4.setImageResource(i.a(getContext(), "anythink_video_common_full_while_star", i.c));
                    LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams4.setMargins(5, 0, 5, 0);
                    addView(imageView4, layoutParams4);
                }
            }
            imageView = new ImageView(getContext());
            imageView.setImageResource(i.a(getContext(), "anythink_video_common_full_while_star", i.c));
            layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(5, 0, 5, 0);
            addView(imageView, layoutParams);
            while (i < i4) {
            }
        }
    }
}
