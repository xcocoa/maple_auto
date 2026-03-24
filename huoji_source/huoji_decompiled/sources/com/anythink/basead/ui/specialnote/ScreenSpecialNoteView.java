package com.anythink.basead.ui.specialnote;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class ScreenSpecialNoteView extends BaseSpecialNoteView {
    public ScreenSpecialNoteView(Context context) {
        super(context);
    }

    public ScreenSpecialNoteView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView
    public final void b() {
        setOrientation(0);
        setPadding(i.a(getContext(), 10.0f), 0, i.a(getContext(), 12.0f), 0);
        setGravity(16);
        setBackgroundResource(i.a(n.a().f(), "myoffer_bg_shake_border_thumb", com.anythink.expressad.foundation.h.i.c));
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_special_note", "layout"), (ViewGroup) this, true);
        this.l = (TextView) findViewById(i.a(getContext(), "myoffer_special_countdown_text", "id"));
        this.m = (TextView) findViewById(i.a(getContext(), "myoffer_special_cancel_text", "id"));
    }

    @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView
    public final void c() {
        TranslateAnimation translateAnimation = new TranslateAnimation(getMeasuredWidth(), 0.0f, 0.0f, 0.0f);
        translateAnimation.setDuration(500L);
        startAnimation(translateAnimation);
        super.c();
    }

    @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView
    public final boolean d() {
        return false;
    }
}
