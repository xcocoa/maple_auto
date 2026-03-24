package com.anythink.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class ShakeTextHintWhiteView extends BaseShakeView {
    public ShakeTextHintWhiteView(Context context) {
        super(context);
    }

    public ShakeTextHintWhiteView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeTextHintWhiteView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @RequiresApi(api = 21)
    public ShakeTextHintWhiteView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // com.anythink.basead.ui.BaseShakeView
    public final ValueAnimator a(int i) {
        return null;
    }

    @Override // com.anythink.basead.ui.BaseShakeView
    public final void a() {
        setOrientation(0);
        setGravity(17);
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_shake_text_hint_white", "layout"), (ViewGroup) this, true);
        int iA = i.a(getContext(), 4.0f);
        setPadding(iA, iA, iA, iA);
        this.a = (ImageView) findViewById(i.a(n.a().f(), "myoffer_shake_text_hint_img", "id"));
    }
}
