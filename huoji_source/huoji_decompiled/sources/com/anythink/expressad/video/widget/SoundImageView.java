package com.anythink.expressad.video.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.anythink.expressad.foundation.h.i;

/* JADX INFO: loaded from: classes.dex */
public class SoundImageView extends ImageView {
    private boolean a;

    public SoundImageView(Context context) {
        super(context);
        this.a = true;
    }

    public SoundImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = true;
    }

    public SoundImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
    }

    public boolean getStatus() {
        return this.a;
    }

    public void setSoundStatus(boolean z) {
        Context context;
        String str;
        this.a = z;
        if (z) {
            context = getContext();
            str = "anythink_reward_sound_open";
        } else {
            context = getContext();
            str = "anythink_reward_sound_close";
        }
        setImageResource(i.a(context, str, i.c));
    }
}
