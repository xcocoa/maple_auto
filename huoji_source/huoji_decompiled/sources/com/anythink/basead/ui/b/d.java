package com.anythink.basead.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class d extends b {
    public boolean i = false;
    public boolean j = false;
    public com.anythink.basead.ui.guidetoclickv2.a k;

    @Override // com.anythink.basead.ui.b.b
    public final void a() {
        com.anythink.basead.ui.guidetoclickv2.a aVar = this.k;
        if (aVar != null) {
            aVar.c();
            this.k = null;
        }
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(int i, Map<String, Object> map) {
        int i2;
        int i3;
        switch (i) {
            case 107:
            case 108:
                if (this.e == 1) {
                    a();
                }
                break;
            case 110:
                com.anythink.basead.ui.guidetoclickv2.a aVar = this.k;
                if (aVar != null) {
                    if (this.j || (i2 = this.e) == 1 || i2 == 2) {
                        aVar.a();
                    }
                }
                break;
            case 111:
                com.anythink.basead.ui.guidetoclickv2.a aVar2 = this.k;
                if (aVar2 != null) {
                    if (this.j || (i3 = this.e) == 1 || i3 == 2) {
                        aVar2.b();
                    }
                }
                break;
            case 113:
                this.i = true;
                a();
                break;
            case 114:
                this.j = true;
                com.anythink.basead.ui.guidetoclickv2.a aVar3 = this.k;
                if (aVar3 != null) {
                    aVar3.a();
                }
                break;
        }
    }

    @Override // com.anythink.basead.ui.b.b
    public final void a(Context context, l lVar, m mVar, ViewGroup viewGroup, RelativeLayout relativeLayout, View view, int i, b.a aVar) {
        super.a(context, lVar, mVar, viewGroup, relativeLayout, view, i, aVar);
        this.k = new com.anythink.basead.ui.guidetoclickv2.a(context, lVar, mVar, i, relativeLayout, view, aVar);
    }
}
