package com.anythink.basead.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class MuteImageView extends ImageView {
    private boolean a;

    public MuteImageView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
    }

    public void setMute(boolean z) {
        setSelected(z);
    }
}
