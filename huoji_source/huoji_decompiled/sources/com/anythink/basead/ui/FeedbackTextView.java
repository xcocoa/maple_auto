package com.anythink.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class FeedbackTextView extends AutoResizeTextView {
    public FeedbackTextView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackgroundResource(i.a(context, "myoffer_bg_feedback_textview", com.anythink.expressad.foundation.h.i.c));
    }

    private void a(Context context) {
        setBackgroundResource(i.a(context, "myoffer_bg_feedback_textview", com.anythink.expressad.foundation.h.i.c));
    }
}
