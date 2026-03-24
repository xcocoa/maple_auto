package com.anythink.core.common;

import android.content.Context;
import android.os.Handler;
import com.anythink.core.common.f.x;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class m<T extends com.anythink.core.common.f.x> {
    public Context d;
    public final String a = getClass().getSimpleName();
    public ArrayList<T> b = new ArrayList<>();
    public Runnable f = new Runnable() { // from class: com.anythink.core.common.m.1
        @Override // java.lang.Runnable
        public final void run() {
            m.this.a(true);
        }
    };
    public String c = com.anythink.core.common.b.n.a().o();
    public Handler e = com.anythink.core.common.o.b.b.a().a(9);

    public m(Context context) {
        this.d = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(boolean z) {
        if (z) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.b);
            if (arrayList.size() > 0) {
                a(arrayList);
            }
            this.b.clear();
        } else {
            com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.d).b(this.c);
            ArrayList arrayList2 = new ArrayList();
            if (this.b.size() >= aVarB.ac()) {
                for (int iAc = aVarB.ac() - 1; iAc >= 0; iAc--) {
                    arrayList2.add(this.b.get(iAc));
                    this.b.remove(iAc);
                }
                if (arrayList2.size() > 0) {
                    a(arrayList2);
                }
            }
        }
        if (this.b.isEmpty()) {
            this.e.removeCallbacks(this.f);
        }
    }

    public final synchronized void a(T t, boolean z) {
        boolean z3 = true;
        if (z) {
            this.b.add(t);
            a(true);
            return;
        }
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.d).b(this.c);
        if (!this.b.isEmpty()) {
            z3 = false;
        } else if (aVarB.ae() > 0) {
            this.e.removeCallbacks(this.f);
            this.e.postDelayed(this.f, aVarB.ae());
            z3 = false;
        }
        this.b.add(t);
        a(z3);
    }

    public abstract void a(List<T> list);
}
