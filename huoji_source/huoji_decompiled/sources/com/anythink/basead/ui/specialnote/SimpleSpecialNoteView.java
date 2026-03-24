package com.anythink.basead.ui.specialnote;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.TextView;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class SimpleSpecialNoteView extends BaseSpecialNoteView {
    public SimpleSpecialNoteView(Context context) {
        super(context);
    }

    public SimpleSpecialNoteView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView
    public final void a() {
        this.n = getContext().getString(i.a(n.a().f(), "myoffer_special_note_delay_click_simple", com.anythink.expressad.foundation.h.i.g));
    }

    @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView
    public final void b() {
        setOrientation(0);
        int iA = i.a(getContext(), 5.0f);
        setPadding(iA, 0, iA, 0);
        setGravity(16);
        setBackgroundColor(Color.parseColor("#80000000"));
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_special_note_simple", "layout"), (ViewGroup) this, true);
        this.l = (TextView) findViewById(i.a(getContext(), "myoffer_special_countdown_text", "id"));
        this.m = (TextView) findViewById(i.a(getContext(), "myoffer_special_cancel_text", "id"));
    }

    @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView
    public final void c() {
        TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, getMeasuredHeight(), 0.0f);
        translateAnimation.setDuration(500L);
        startAnimation(translateAnimation);
        super.c();
    }

    @Override // com.anythink.basead.ui.specialnote.BaseSpecialNoteView
    public final boolean d() {
        return true;
    }
}
