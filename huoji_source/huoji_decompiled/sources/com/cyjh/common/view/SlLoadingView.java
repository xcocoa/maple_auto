package com.cyjh.common.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.cyjh.common.R;

/* JADX INFO: loaded from: classes.dex */
public class SlLoadingView extends ImageView {
    public Animation OoooOoO;

    public SlLoadingView(Context context) {
        super(context);
        OooO00o();
    }

    public SlLoadingView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        OooO00o();
    }

    public SlLoadingView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        OooO00o();
    }

    private void OooO00o() {
        this.OoooOoO = AnimationUtils.loadAnimation(getContext(), R.anim.downing_animation);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        setAnimation(this.OoooOoO);
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        clearAnimation();
    }
}
