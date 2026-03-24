package com.anythink.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class AdTextView extends TextView {
    public AdTextView(Context context) {
        super(context);
        a(context);
    }

    public AdTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    public AdTextView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    private void a(Context context) {
        setBackgroundResource(i.a(context, "myoffer_bg_banner_ad_choice", com.anythink.expressad.foundation.h.i.c));
        setTextColor(-1);
        setText(context.getResources().getString(i.a(context, "basead_ad_text", com.anythink.expressad.foundation.h.i.g)));
        setTextSize(8.0f);
        setGravity(17);
        setPadding(i.a(context, 3.0f), 0, i.a(context, 3.0f), 0);
    }
}
