package com.anythink.basead.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.anythink.core.common.b.n;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class ShakeBorderThumbView extends BaseShakeView {
    public TextView k;

    public ShakeBorderThumbView(Context context) {
        super(context);
    }

    public ShakeBorderThumbView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ShakeBorderThumbView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @RequiresApi(api = 21)
    public ShakeBorderThumbView(Context context, AttributeSet attributeSet, int i, int i2) {
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
        setBackgroundResource(i.a(n.a().f(), "myoffer_bg_shake_border_thumb", com.anythink.expressad.foundation.h.i.c));
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_shake_border_thumb", "layout"), (ViewGroup) this, true);
        int iA = i.a(getContext(), 10.0f);
        int iA2 = i.a(getContext(), 12.0f);
        int iA3 = i.a(getContext(), 6.0f);
        setPadding(iA, iA3, iA2, iA3);
        this.a = (ImageView) findViewById(i.a(n.a().f(), "myoffer_splash_shake_border_img", "id"));
        this.k = (TextView) findViewById(i.a(n.a().f(), "myoffer_splash_shake_hint_text", "id"));
    }

    @Override // com.anythink.basead.ui.BaseShakeView
    public void setShakeSetting(com.anythink.core.common.f.n nVar) {
        TextView textView;
        super.setShakeSetting(nVar);
        String str = this.h;
        if (str == null || (textView = this.k) == null) {
            return;
        }
        textView.setText(str);
    }
}
