package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes2.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class VisibilityAwareImageButton extends ImageButton {
    private int OoooOoO;

    public VisibilityAwareImageButton(Context context) {
        this(context, null);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.OoooOoO = getVisibility();
    }

    public final void OooO0OO(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.OoooOoO = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.OoooOoO;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        OooO0OO(i, true);
    }
}
