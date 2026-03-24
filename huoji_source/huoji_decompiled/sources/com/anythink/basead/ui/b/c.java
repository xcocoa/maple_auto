package com.anythink.basead.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.GuideToClickView;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.x;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class c extends b {
    public GuideToClickView i;
    public boolean j = false;
    public boolean k = false;

    private void b() {
        GuideToClickView guideToClickView;
        if (this.f == null || (guideToClickView = this.i) == null) {
            return;
        }
        x.a(guideToClickView);
        this.f.addView(this.i, new RelativeLayout.LayoutParams(-1, -1));
    }

    private void c() {
        GuideToClickView guideToClickView = this.i;
        if (guideToClickView != null) {
            guideToClickView.setVisibility(8);
        }
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a() {
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(int i, Map<String, Object> map) {
        if (i == 103) {
            if (this.e != 1 || this.j || !this.k || this.i == null) {
                return;
            }
            b();
            return;
        }
        if (i == 113) {
            this.j = true;
            GuideToClickView guideToClickView = this.i;
            if (guideToClickView != null) {
                guideToClickView.setVisibility(8);
                return;
            }
            return;
        }
        if (i == 116) {
            if (this.e != 3 || com.anythink.basead.a.d.b(this.b)) {
                return;
            }
            b();
            return;
        }
        switch (i) {
            case 106:
                if (this.e == 3 && com.anythink.basead.a.d.b(this.b)) {
                    b();
                    break;
                }
                break;
            case 107:
            case 108:
                this.k = true;
                break;
        }
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(Context context, l lVar, m mVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i, b.a aVar) {
        super.a(context, lVar, mVar, viewGroup, relativeLayout, view, i, aVar);
        GuideToClickView guideToClickView = new GuideToClickView(this.a);
        this.i = guideToClickView;
        guideToClickView.setOnClickListener(new View.OnClickListener() { // from class: com.anythink.basead.ui.b.c.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                b.a aVar2 = c.this.h;
                if (aVar2 != null) {
                    aVar2.a(1, 12);
                }
            }
        });
    }
}
