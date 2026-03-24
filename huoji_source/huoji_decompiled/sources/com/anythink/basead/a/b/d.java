package com.anythink.basead.a.b;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static final String a = "d";
    private static volatile d b;
    private List<a> c = new CopyOnWriteArrayList();

    public interface a {
        void a(String str, int i);

        void a(String str, com.anythink.basead.c.e eVar);
    }

    private d() {
    }

    public static d a() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    public final synchronized void a(a aVar) {
        this.c.add(aVar);
    }

    public final void a(String str, int i) {
        List<a> list = this.c;
        if (list != null) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(str, i);
            }
        }
    }

    public final void a(String str, com.anythink.basead.c.e eVar) {
        List<a> list = this.c;
        if (list != null) {
            Iterator<a> it = list.iterator();
            while (it.hasNext()) {
                it.next().a(str, eVar);
            }
        }
    }

    public final synchronized void b(a aVar) {
        int size = this.c.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                i = -1;
                break;
            } else if (aVar == this.c.get(i)) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            this.c.remove(i);
        }
    }
}
