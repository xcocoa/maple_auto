package com.anythink.basead.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.b.b;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.o.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static final int a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 4;
    public static final int e = 8;

    public static final class a {
        public static final String a = "screen_style";
    }

    private static List<b> a(int i, Context context, l lVar, m mVar, ViewGroup viewGroup, int i2, b.a aVar) {
        ViewGroup viewGroup2 = viewGroup;
        ArrayList arrayList = new ArrayList();
        RelativeLayout relativeLayout = (RelativeLayout) viewGroup2.findViewById(i.a(context, "myoffer_guide2click_container", "id"));
        View viewFindViewById = viewGroup2.findViewById(i.a(context, "myoffer_guide2click_mask", "id"));
        View viewFindViewById2 = viewGroup2.findViewById(i.a(viewGroup.getContext(), "myoffer_rl_root", "id"));
        if (viewFindViewById2 == null || !(viewFindViewById2 instanceof ViewGroup)) {
            View viewFindViewById3 = viewGroup2.findViewById(i.a(viewGroup.getContext(), "myoffer_splash_root", "id"));
            if (viewFindViewById3 != null && (viewFindViewById3 instanceof ViewGroup)) {
                viewGroup2 = (ViewGroup) viewFindViewById3;
            }
        } else {
            viewGroup2 = (ViewGroup) viewFindViewById2;
        }
        if ((i & 1) == 1) {
            f fVar = new f();
            fVar.a(viewGroup2.getContext(), lVar, mVar, viewGroup2, relativeLayout, viewFindViewById, i2, aVar);
            arrayList.add(fVar);
        }
        if ((i & 2) == 2) {
            c cVar = new c();
            cVar.a(viewGroup2.getContext(), lVar, mVar, viewGroup2, relativeLayout, viewFindViewById, i2, aVar);
            arrayList.add(cVar);
        }
        if ((i & 4) == 4) {
            g gVar = new g();
            gVar.a(viewGroup2.getContext(), lVar, mVar, viewGroup2, relativeLayout, viewFindViewById, i2, aVar);
            arrayList.add(gVar);
        }
        if (relativeLayout != null && (i & 8) == 8) {
            d dVar = new d();
            dVar.a(viewGroup2.getContext(), lVar, mVar, viewGroup2, relativeLayout, viewFindViewById, i2, aVar);
            arrayList.add(dVar);
        }
        return arrayList;
    }
}
