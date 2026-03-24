package com.anythink.basead.ui.guidetoclickv2;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.basead.ui.b.b;

/* JADX INFO: loaded from: classes.dex */
public class FingerG2CV2View extends BaseG2CV2View {
    public GuideToClickView c;
    public int d;

    public FingerG2CV2View(Context context) {
        super(context);
        this.d = 501;
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void a(int i, int i2) {
        setGravity(17);
        GuideToClickView guideToClickView = new GuideToClickView(getContext());
        this.c = guideToClickView;
        guideToClickView.setFingerViewMode(this.d);
        addView(this.c, -2, -2);
        setClipChildren(false);
        if (this.b != null) {
            setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.guidetoclickv2.FingerG2CV2View.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.a aVar = FingerG2CV2View.this.b;
                    if (aVar != null) {
                        aVar.a(11, 20);
                    }
                }
            });
        }
    }

    public void setFingerViewMode(int i) {
        if (i == 503) {
            setBackgroundColor(Color.parseColor("#66000000"));
        }
        this.d = i;
        GuideToClickView guideToClickView = this.c;
        if (guideToClickView != null) {
            guideToClickView.setFingerViewMode(i);
        }
    }
}
