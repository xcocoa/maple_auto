package com.anythink.basead.ui.guidetoclickv2;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.o.i;

/* JADX INFO: loaded from: classes.dex */
public class HintTextG2CV2View extends BaseG2CV2View {
    public HintTextG2CV2View(Context context) {
        super(context);
    }

    @Override // com.anythink.basead.ui.guidetoclickv2.BaseG2CV2View
    public final void a(int i, int i2) {
        LayoutInflater.from(getContext()).inflate(i.a(getContext(), "myoffer_g2c_v2_hint_text", "layout"), this);
        View viewFindViewById = findViewById(i.a(getContext(), "myoffer_g2c_click_text", "id"));
        View viewFindViewById2 = findViewById(i.a(getContext(), "myoffer_g2c_hint_text", "id"));
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.guidetoclickv2.HintTextG2CV2View.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    b.a aVar = HintTextG2CV2View.this.b;
                    if (aVar != null) {
                        aVar.a(11, 18);
                    }
                }
            });
        }
        if (i != 2) {
            if (i2 == 2) {
                if (viewFindViewById != null) {
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
                    layoutParams.addRule(11, 0);
                    layoutParams.addRule(14);
                    layoutParams.setMargins(0, i.a(getContext(), 12.0f), 0, 0);
                    viewFindViewById.setLayoutParams(layoutParams);
                }
                if (viewFindViewById2 == null || !(viewFindViewById2 instanceof TextView)) {
                    return;
                }
                ((TextView) viewFindViewById2).setGravity(17);
                return;
            }
            return;
        }
        if (viewFindViewById != null) {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams2.addRule(11, 0);
            layoutParams2.addRule(14);
            layoutParams2.setMargins(0, i.a(getContext(), 12.0f), 0, 0);
            viewFindViewById.setLayoutParams(layoutParams2);
        }
        if (viewFindViewById2 != null) {
            RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) viewFindViewById2.getLayoutParams();
            layoutParams3.setMargins(i.a(getContext(), 60.0f), i.a(getContext(), 18.0f), i.a(getContext(), 60.0f), 0);
            viewFindViewById2.setLayoutParams(layoutParams3);
            if (viewFindViewById2 instanceof TextView) {
                TextView textView = (TextView) viewFindViewById2;
                textView.setGravity(17);
                textView.setTextSize(1, 14.0f);
            }
        }
    }
}
