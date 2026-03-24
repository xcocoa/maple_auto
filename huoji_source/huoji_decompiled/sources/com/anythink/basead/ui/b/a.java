package com.anythink.basead.ui.b;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.anythink.basead.ui.b.b;
import com.anythink.basead.ui.specialnote.BaseSpecialNoteView;
import com.anythink.core.common.f.l;
import com.anythink.core.common.f.m;
import com.anythink.core.common.f.n;
import com.anythink.core.common.o.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class a {
    private int a;
    public ViewGroup b;
    public l c;
    public m d;
    private List<b> e;
    private Map<String, Object> f;

    public a(ViewGroup viewGroup, l lVar, m mVar, int i, b.a aVar) {
        ArrayList arrayList;
        int i2;
        this.a = 0;
        this.b = viewGroup;
        this.c = lVar;
        this.d = mVar;
        this.a = i;
        if (!lVar.P()) {
            switch (this.a) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                    n nVar = this.d.n;
                    int i3 = nVar.ab() || nVar.ac() || nVar.ad() ? 4 : 0;
                    int i4 = this.a;
                    if (i4 == 1 || i4 == 2 || i4 == 3) {
                        if (com.anythink.expressad.shake.a.a().b() && this.d.n.Q() == 1) {
                            i3 |= 1;
                        }
                    }
                    int i5 = this.a;
                    if (i5 == 1 || i5 == 3) {
                        if (this.d.n.o() == 1) {
                            i3 |= 2;
                        }
                    }
                    i = (this.d.n.ao() == 1 ? 1 : 0) == 0 ? i3 : i3 | 8;
                    break;
            }
        }
        Context context = this.b.getContext();
        int i6 = this.a;
        ArrayList arrayList2 = new ArrayList();
        RelativeLayout relativeLayout = (RelativeLayout) viewGroup.findViewById(i.a(context, "myoffer_guide2click_container", "id"));
        View viewFindViewById = viewGroup.findViewById(i.a(context, "myoffer_guide2click_mask", "id"));
        View viewFindViewById2 = viewGroup.findViewById(i.a(viewGroup.getContext(), "myoffer_rl_root", "id"));
        ViewGroup viewGroup2 = ((viewFindViewById2 == null || !(viewFindViewById2 instanceof ViewGroup)) && ((viewFindViewById2 = viewGroup.findViewById(i.a(viewGroup.getContext(), "myoffer_splash_root", "id"))) == null || !(viewFindViewById2 instanceof ViewGroup))) ? viewGroup : (ViewGroup) viewFindViewById2;
        if ((i & 1) == 1) {
            f fVar = new f();
            arrayList = arrayList2;
            i2 = i6;
            fVar.a(viewGroup2.getContext(), lVar, mVar, viewGroup2, relativeLayout, viewFindViewById, i6, aVar);
            arrayList.add(fVar);
        } else {
            arrayList = arrayList2;
            i2 = i6;
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
        this.e = arrayList;
        final g gVarB = b();
        if (gVarB != null) {
            viewGroup.post(new Runnable() { // from class: com.anythink.basead.ui.b.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    BaseSpecialNoteView baseSpecialNoteView;
                    ViewGroup.LayoutParams layoutParamsA = a.this.a();
                    if (gVarB == null || a.this.a() == null || (baseSpecialNoteView = gVarB.i) == null) {
                        return;
                    }
                    baseSpecialNoteView.setLayoutParams(layoutParamsA);
                }
            });
        }
    }

    private g b() {
        List<b> list = this.e;
        if (list == null || list.size() <= 0) {
            return null;
        }
        for (b bVar : this.e) {
            if (bVar instanceof g) {
                return (g) bVar;
            }
        }
        return null;
    }

    private int c() {
        if (this.c.P()) {
            return 0;
        }
        switch (this.a) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                n nVar = this.d.n;
                int i = nVar.ab() || nVar.ac() || nVar.ad() ? 4 : 0;
                int i2 = this.a;
                if (i2 == 1 || i2 == 2 || i2 == 3) {
                    if (com.anythink.expressad.shake.a.a().b() && this.d.n.Q() == 1) {
                        i |= 1;
                    }
                }
                int i3 = this.a;
                if (i3 == 1 || i3 == 3) {
                    if (this.d.n.o() == 1) {
                        i |= 2;
                    }
                }
                return this.d.n.ao() == 1 ? i | 8 : i;
            default:
                return 0;
        }
    }

    private boolean d() {
        n nVar = this.d.n;
        return nVar.ab() || nVar.ac() || nVar.ad();
    }

    private boolean e() {
        return this.d.n.o() == 1;
    }

    private boolean f() {
        return com.anythink.expressad.shake.a.a().b() && this.d.n.Q() == 1;
    }

    private boolean g() {
        return this.d.n.ao() == 1;
    }

    public abstract ViewGroup.LayoutParams a();

    public final void a(final int i) {
        List<b> list = this.e;
        if (list == null || list.size() <= 0) {
            return;
        }
        com.anythink.core.common.o.b.b.a();
        if (!com.anythink.core.common.o.b.b.b()) {
            com.anythink.core.common.b.n.a().b(new Runnable() { // from class: com.anythink.basead.ui.b.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(i);
                }
            });
            return;
        }
        Iterator<b> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().a(i, this.f);
        }
    }

    public final void a(long j) {
        g gVarB = b();
        if (gVarB != null) {
            gVarB.a(j);
        }
    }

    public final void a(Map<String, Object> map) {
        this.f = map;
    }
}
