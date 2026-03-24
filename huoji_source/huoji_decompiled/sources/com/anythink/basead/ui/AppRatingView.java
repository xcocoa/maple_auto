package com.anythink.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AppRatingView extends LinearLayout {
    private Context a;
    private List<StarLevelView> b;
    private int c;
    private int d;

    public AppRatingView(Context context) {
        this(context, null, 0);
    }

    public AppRatingView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AppRatingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = context;
        setStarSizeInDp(17);
        setStarMargin(8);
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setRating(int i) {
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            StarLevelView starLevelView = this.b.get(i2);
            if (i2 < i) {
                starLevelView.setState(true);
            } else {
                starLevelView.setState(false);
            }
        }
    }

    public void setStarMargin(int i) {
        this.d = i;
    }

    public void setStarNum(int i) {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.clear();
        removeAllViews();
        setOrientation(0);
        for (int i2 = 0; i2 < i; i2++) {
            StarLevelView starLevelView = new StarLevelView(getContext());
            int i3 = this.c;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, i3);
            if (i2 != i - 1) {
                layoutParams.setMargins(0, 0, dip2px(getContext(), this.d), 0);
            }
            starLevelView.setLayoutParams(layoutParams);
            addView(starLevelView);
            this.b.add(starLevelView);
        }
    }

    public void setStarSizeInDp(int i) {
        this.c = dip2px(this.a, i);
    }
}
