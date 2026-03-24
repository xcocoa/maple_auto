package com.anythink.core.common.p;

import android.content.Context;
import com.anythink.core.common.f.aq;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.az;
import com.anythink.core.common.f.p;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.y;
import com.anythink.core.common.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    public static final String a = com.anythink.core.common.g.class.getSimpleName();
    public final int b;
    public int c;
    public int d;
    public long e;
    public az o;
    public aq p;
    public i q;
    public p r;
    public p s;
    private List<av> t;
    public volatile int k = 0;
    public volatile int l = 0;
    public volatile int m = 0;
    public volatile int n = 0;
    public List<av> f = Collections.synchronizedList(new ArrayList(5));
    public List<av> g = Collections.synchronizedList(new ArrayList(5));
    public List<av> h = Collections.synchronizedList(new ArrayList(2));
    public List<f> i = Collections.synchronizedList(new ArrayList(2));
    public List<av> j = Collections.synchronizedList(new ArrayList(2));

    public g(h hVar) {
        this.c = 1;
        this.f.addAll(hVar.d);
        this.j.addAll(hVar.f);
        this.q = hVar.j;
        this.r = hVar.l;
        this.s = hVar.m;
        this.b = hVar.c.h();
        this.c = hVar.c.e();
        this.d = hVar.c.f();
        this.e = hVar.c.j();
        List<av> list = hVar.e;
        if (list != null) {
            this.h.addAll(list);
        }
        this.t = Collections.synchronizedList(new ArrayList(3));
        this.o = hVar.i;
        this.p = hVar.k;
    }

    private double A() {
        return a(true);
    }

    public static av a(Map<String, e> map) {
        av avVar;
        Iterator<Map.Entry<String, e>> it = map.entrySet().iterator();
        av avVar2 = null;
        if (it != null) {
            while (it.hasNext()) {
                e value = it.next().getValue();
                if (value != null && !value.i && (avVar = value.c) != null && (avVar2 == null || com.anythink.core.common.o.h.a(avVar) > com.anythink.core.common.o.h.a(avVar2))) {
                    avVar2 = avVar;
                }
            }
        }
        return avVar2;
    }

    public static void a(Context context, String str) {
        x.a(context).a(str);
    }

    public static void a(Context context, String str, String str2, av avVar, av avVar2) {
        az.a aVar;
        az.a aVar2 = null;
        if (avVar != null) {
            az.a aVar3 = new az.a(avVar, avVar.M());
            aVar = null;
            aVar2 = aVar3;
        } else {
            aVar = avVar2 != null ? new az.a(avVar2, avVar2.M()) : null;
        }
        x.a(context).a(str, str2, aVar2, aVar);
    }

    public static void a(av avVar, com.anythink.core.common.f.h hVar) {
        if (avVar != null && avVar.k() && avVar.K() == 2) {
            a(avVar, hVar.V(), true);
        }
    }

    private static void a(av avVar, com.anythink.core.common.f.h hVar, boolean z) {
        q qVarM = avVar.M();
        if (qVarM != null) {
            com.anythink.core.b.d.b.a(qVarM, new y(2, avVar, hVar), z);
        }
    }

    public static void a(String str) {
        com.anythink.core.common.d.a().b(str);
    }

    private void a(List<av> list, List<av> list2) {
        int iAf;
        int size = list2.size();
        int size2 = this.t.size();
        for (int i = 0; i < size; i++) {
            av avVar = list2.get(i);
            if (avVar.k() && (iAf = avVar.af()) > 0 && iAf <= size2 && com.anythink.core.common.o.h.a(avVar) < com.anythink.core.common.o.h.a(this.t.get(iAf - 1))) {
                list.add(avVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(av avVar, j jVar) {
        boolean z = avVar.Y() == 1;
        if (z) {
            int iM = avVar.m();
            if (iM == 1 || iM == 3) {
                if (jVar.f) {
                    return false;
                }
                jVar.f = true;
            } else if (iM != 6) {
                if (iM == 7) {
                }
            } else {
                if (jVar.g) {
                    return false;
                }
                jVar.g = true;
            }
        }
        return z;
    }

    public static boolean a(String str, av avVar, com.anythink.core.common.f.h hVar) {
        boolean z = false;
        try {
            if (avVar.k()) {
                q qVarM = avVar.M();
                com.anythink.core.b.f.a().a(str, qVarM);
                if (qVarM != null && qVarM.a()) {
                    z = true;
                }
                if (z && qVarM != null) {
                    com.anythink.core.b.d.b.a(qVarM, new y(1, avVar, hVar), true);
                }
            }
        } catch (Throwable unused) {
        }
        return z;
    }

    public static String b(List<av> list) {
        String str = "";
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                str = str + ",";
            }
            StringBuilder sb = new StringBuilder();
            sb.append(list.get(i).d());
            str = str + sb.toString();
        }
        return str;
    }

    public static double h(av avVar) {
        q qVarM;
        double dA = com.anythink.core.common.o.h.a(avVar);
        return (avVar.aa() && dA == 10000.0d && (qVarM = avVar.M()) != null) ? qVarM.o : dA;
    }

    private List<av> w() {
        return this.f;
    }

    private List<av> x() {
        return this.g;
    }

    private List<av> y() {
        return this.h;
    }

    private double z() {
        return a(false);
    }

    public final double a(boolean z) {
        synchronized (this.t) {
            int size = this.t.size();
            if (size == 0) {
                return 0.0d;
            }
            int i = this.b - 1;
            int i2 = size - 1;
            if (z && i2 < i) {
                return 0.0d;
            }
            return com.anythink.core.common.o.h.a(this.t.get(Math.min(i, i2)));
        }
    }

    public final long a(boolean z, long j) {
        if (this.h.size() <= 0) {
            return -1L;
        }
        if (this.f.size() == 0 && z) {
            return 0L;
        }
        return j;
    }

    public final i a() {
        return this.q;
    }

    public final void a(int i) {
        if (this.c == 2 && i == 1) {
            this.n--;
        }
    }

    public final void a(int i, int i2) {
        this.k += i;
        if (i2 != 2) {
            this.l += i;
        } else {
            this.m += i;
        }
    }

    public final void a(av avVar) {
        this.g.add(avVar);
    }

    public final void a(av avVar, int i) {
        synchronized (this.i) {
            Iterator<f> it = this.i.iterator();
            int i2 = 0;
            while (it.hasNext() && com.anythink.core.common.o.h.a(it.next().a) > com.anythink.core.common.o.h.a(avVar)) {
                i2++;
            }
            this.i.add(i2, new f(avVar, i));
        }
    }

    public final void a(com.anythink.core.common.f.h hVar) {
        ArrayList arrayList = new ArrayList(5);
        synchronized (this.t) {
            a(arrayList, this.t);
        }
        synchronized (this.g) {
            a(arrayList, this.g);
        }
        Iterator<av> it = arrayList.iterator();
        while (it.hasNext()) {
            a(it.next(), hVar, false);
        }
    }

    public final void a(List<av> list) {
        this.g.addAll(list);
    }

    public final av b(boolean z) {
        av avVarA;
        if (!z || (avVarA = this.r.a()) == null) {
            return null;
        }
        if (!avVarA.k()) {
            new StringBuilder("tryToSendWinNotice(), do not send win, the unitGroupInfo of the max price is not a bidding ad source -- ").append(avVarA.toString());
            return null;
        }
        if (avVarA.ak() == 1) {
            return null;
        }
        double dA = com.anythink.core.common.o.h.a(avVarA);
        synchronized (this.g) {
            for (av avVar : this.g) {
                if (com.anythink.core.common.o.h.a(avVar) > dA) {
                    new StringBuilder("tryToSendWinNotice(), do not send win, waiting for -- ").append(avVar.toString());
                    return null;
                }
            }
            synchronized (this.i) {
                Iterator<f> it = this.i.iterator();
                while (it.hasNext()) {
                    av avVar2 = it.next().a;
                    if (com.anythink.core.common.o.h.a(avVar2) > dA) {
                        new StringBuilder("tryToSendWinNotice(), do not send win, waiting for -- ").append(avVar2.toString());
                        return null;
                    }
                }
                new StringBuilder("tryToSendWinNotice(), need to send win notice: ").append(avVarA.toString());
                return avVarA;
            }
        }
    }

    public final p b() {
        return this.r;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<av> b(int i) {
        StringBuilder sb;
        List<av> list = i != 2 ? this.f : this.h;
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            av avVar = list.get(0);
            if (i != 2) {
                boolean z = com.anythink.core.common.o.h.a(avVar) > a(true);
                int i2 = this.c;
                if (i2 == 1) {
                    boolean z3 = this.l < this.d;
                    if (z3 && z) {
                        arrayList.add(avVar);
                    } else {
                        StringBuilder sb2 = new StringBuilder("getNextRequestList, isLessThenMaxRequestNum: ");
                        sb2.append(z3);
                        sb2.append(", isExceedCachePrice: ");
                        sb2.append(z);
                    }
                } else if (i2 == 2) {
                    if (this.n == 0 && z) {
                        double dA = com.anythink.core.common.o.h.a(avVar);
                        int size = list.size();
                        for (int i3 = 0; i3 < size; i3++) {
                            av avVar2 = list.get(i3);
                            if (com.anythink.core.common.o.h.a(avVar2) == dA) {
                                arrayList.add(avVar2);
                            }
                        }
                        this.n = arrayList.size();
                        sb = new StringBuilder("getNextRequestList: same price, need request num: ");
                    } else {
                        sb = new StringBuilder("getNextRequestList: The number of ad sources with the same price that did not return results: ");
                    }
                    sb.append(this.n);
                }
                if (arrayList.size() > 0) {
                    list.removeAll(arrayList);
                }
            }
        }
        return arrayList;
    }

    public final void b(av avVar) {
        this.g.remove(avVar);
    }

    public final synchronized void b(av avVar, int i) {
        List<av> list = i != 2 ? this.f : this.h;
        synchronized (list) {
            com.anythink.core.common.o.h.a(list, avVar);
        }
    }

    public final void b(com.anythink.core.common.f.h hVar) {
        av avVar;
        synchronized (this.f) {
            for (av avVar2 : this.f) {
                if (avVar2 != null && avVar2.k()) {
                    a(avVar2, hVar);
                }
            }
            this.f.clear();
        }
        synchronized (this.i) {
            for (f fVar : this.i) {
                if (fVar != null && (avVar = fVar.a) != null && avVar.k()) {
                    a(fVar.a, hVar);
                }
            }
            this.i.clear();
        }
        synchronized (this.h) {
            this.h.clear();
        }
    }

    public final int c() {
        return this.f.size();
    }

    public final void c(av avVar) {
        i iVar = this.q;
        if (iVar != null) {
            iVar.a(avVar);
        }
    }

    public final av d() {
        if (this.f.size() > 0) {
            return this.f.get(0);
        }
        return null;
    }

    public final void d(av avVar) {
        q qVarM;
        if (avVar == null || !avVar.k() || (qVarM = avVar.M()) == null) {
            return;
        }
        qVarM.a(this.r);
    }

    public final int e() {
        return this.g.size();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e(av avVar) {
        p pVar = this.r;
        boolean z = false;
        if (pVar != null && avVar != null) {
            av avVarA = pVar.a();
            if (avVarA == null) {
                z = true;
                if (z) {
                    this.r.a(avVar);
                }
            } else {
                double dA = com.anythink.core.common.o.h.a(avVar);
                double dA2 = com.anythink.core.common.o.h.a(avVarA);
                if (dA > dA2 || (dA == dA2 && avVar.am() < avVarA.am())) {
                }
                if (z) {
                }
            }
        }
        return z;
    }

    public final int f() {
        return this.h.size();
    }

    public final void f(av avVar) {
        List<av> list;
        synchronized (this.t) {
            if (this.t.size() == 0) {
                list = this.t;
            } else {
                double dA = com.anythink.core.common.o.h.a(avVar);
                int i = 0;
                while (true) {
                    if (i >= this.t.size()) {
                        break;
                    }
                    if (dA > com.anythink.core.common.o.h.a(this.t.get(i))) {
                        this.t.add(i, avVar);
                        break;
                    } else {
                        if (i == this.t.size() - 1) {
                            list = this.t;
                            break;
                        }
                        i++;
                    }
                }
            }
            list.add(avVar);
        }
    }

    public final av g() {
        return this.h.remove(0);
    }

    public final boolean g(av avVar) {
        double dA;
        double dA2 = com.anythink.core.common.o.h.a(avVar);
        double dA3 = a(true);
        synchronized (this.g) {
            Iterator<av> it = this.g.iterator();
            while (true) {
                if (!it.hasNext()) {
                    dA = 0.0d;
                    break;
                }
                av next = it.next();
                dA = com.anythink.core.common.o.h.a(next);
                if (next.k() && dA > com.anythink.core.common.o.h.a(avVar)) {
                    break;
                }
            }
        }
        return dA2 > Math.max(dA3, dA);
    }

    public final boolean h() {
        return this.h.size() == 0 && this.f.size() == 0;
    }

    public final void i() {
        this.h.clear();
    }

    public final av j() {
        av avVar;
        f fVar;
        synchronized (this.i) {
            avVar = (this.i.size() <= 0 || (fVar = this.i.get(0)) == null) ? null : fVar.a;
        }
        return avVar;
    }

    public final int k() {
        return this.i.size();
    }

    public final List<f> l() {
        return this.i;
    }

    public final boolean m() {
        List<av> list = this.j;
        return list == null || list.size() == 0;
    }

    public final List<av> n() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.addAll(this.j);
        this.j.clear();
        return arrayList;
    }

    public final int o() {
        return this.k;
    }

    public final int p() {
        return this.l;
    }

    public final int q() {
        return this.m;
    }

    public final az r() {
        return this.o;
    }

    public final aq s() {
        return this.p;
    }

    public final p t() {
        return this.s;
    }

    public final List<av> u() {
        List<av> listB;
        int i = this.c;
        if (i == 1) {
            listB = new ArrayList<>();
            int iMin = Math.min(this.d, this.f.size());
            for (int i2 = 0; i2 < iMin; i2++) {
                listB.add(this.f.get(i2));
            }
        } else {
            listB = i == 2 ? b(1) : null;
        }
        StringBuilder sb = new StringBuilder("startToRequestMediationAd: mRequestNumType: ");
        sb.append(this.c);
        sb.append(", needRequestNum: ");
        sb.append(listB != null ? listB.size() : 0);
        sb.append(", validCacheNum: ");
        sb.append(this.b);
        sb.append(", mWaitingFillTime: ");
        sb.append(this.e);
        if (listB.size() > 0) {
            this.f.removeAll(listB);
        }
        return listB;
    }

    public final boolean v() {
        return this.f.size() == 0 && this.h.size() == 0 && this.i.size() == 0 && this.g.size() == 0;
    }
}
