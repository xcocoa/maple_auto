package com.cyjh.common.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class GenerateProcessButton extends ProcessButton {
    public GenerateProcessButton(Context context) {
        super(context);
    }

    public GenerateProcessButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GenerateProcessButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // com.cyjh.common.view.ProcessButton
    public void OooO(Canvas canvas) {
        getProgressDrawable().setBounds(0, 0, getMeasuredWidth(), (int) (getMeasuredHeight() * (getProgress() / getMaxProgress())));
        getProgressDrawable().draw(canvas);
    }
}
