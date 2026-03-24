package com.anythink.core.common.f;

import com.anythink.core.common.f.az;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    public List<b> a;
    public b b;
    public boolean c;

    public final b a() {
        List<b> list = this.a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.a.get(0);
    }

    public final b b() {
        List<b> list = this.a;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.a.get(r0.size() - 1);
    }

    public final boolean c() {
        return this.c;
    }

    public final int d() {
        List<b> list = this.a;
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    public final b e() {
        return this.b;
    }

    public final List<az.a> f() {
        List<b> list = this.a;
        if (list == null || list.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = this.a.iterator();
        while (it.hasNext()) {
            av unitGroupInfo = it.next().d().getUnitGroupInfo();
            arrayList.add(new az.a(unitGroupInfo, unitGroupInfo.M()));
        }
        return arrayList;
    }
}
