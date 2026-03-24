package com.anythink.core.c.a;

import android.text.TextUtils;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    public com.anythink.core.d.d a;
    public List<a> b;
    public Map<Integer, List<a>> c = new ConcurrentHashMap(3);

    private com.anythink.core.d.d a() {
        return this.a;
    }

    private void a(List<a> list, a aVar) {
        boolean z;
        Iterator<a> it = list.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            } else {
                if (TextUtils.equals(it.next().b(), aVar.b())) {
                    list.set(i, aVar);
                    z = true;
                    break;
                }
                i++;
            }
        }
        if (!z) {
            list.add(0, aVar);
        }
        while (list.size() > this.a.c()) {
            list.remove(list.size() - 1);
        }
    }

    public final List<a> a(int i) {
        return i == -1 ? this.b : this.c.get(Integer.valueOf(i));
    }

    public final void a(int i, List<a> list) {
        if (i == -1) {
            this.b = list;
        } else {
            this.c.put(Integer.valueOf(i), list);
        }
    }

    public final void a(a aVar) {
        if (this.a == null) {
            return;
        }
        List<a> list = this.b;
        if (list != null) {
            a(list, aVar);
        }
        List<a> list2 = this.c.get(Integer.valueOf(aVar.a()));
        if (list2 != null) {
            a(list2, aVar);
        }
    }

    public final void a(com.anythink.core.d.d dVar) {
        this.a = dVar;
    }

    public final d b(int i) {
        List<a> list = i == -1 ? this.b : this.c.get(Integer.valueOf(i));
        if (list == null || list.size() < this.a.d()) {
            return null;
        }
        double d = 0.0d;
        String strD = "";
        for (a aVar : list) {
            double dF = aVar.f();
            if (dF > d) {
                strD = aVar.d();
                d = dF;
            }
        }
        return new d(d, strD);
    }

    public final boolean b(com.anythink.core.d.d dVar) {
        com.anythink.core.d.d dVar2 = this.a;
        return dVar2 != null && dVar2.b() == dVar.b() && this.a.a() == dVar.a() && this.a.c() == dVar.c() && this.a.d() == dVar.d();
    }

    public final void c(int i) {
        List<a> listA = a(i);
        if (this.a == null || listA == null) {
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - (((long) (((this.a.b() * 24) * 60) * 60)) * 1000);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        long timeInMillis = calendar.getTimeInMillis();
        Iterator<a> it = listA.iterator();
        while (it.hasNext()) {
            if (it.next().g() < timeInMillis) {
                it.remove();
            }
        }
    }
}
