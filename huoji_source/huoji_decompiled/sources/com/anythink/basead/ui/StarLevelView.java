package com.anythink.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class StarLevelView extends ImageView {
    public Context a;

    public StarLevelView(Context context) {
        this(context, null);
        this.a = context;
    }

    public StarLevelView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        this.a = context;
    }

    public StarLevelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = context;
    }

    public void setState(boolean z) {
        Context context;
        String str;
        if (z) {
            context = getContext();
            str = "myoffer_splash_star";
        } else {
            context = getContext();
            str = "myoffer_splash_star_gray";
        }
        setImageResource(i.a(context, str, com.anythink.expressad.foundation.h.i.c));
    }
}
