package com.anythink.expressad.videocommon.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import com.anythink.expressad.foundation.h.s;
import com.anythink.expressad.foundation.h.t;
import com.anythink.expressad.foundation.h.w;
import com.anythink.expressad.videocommon.b.j;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class n {
    private static final String c = "UnitCacheCtroller";
    private com.anythink.expressad.videocommon.d.c f;
    private ConcurrentHashMap<String, com.anythink.expressad.videocommon.d.c> g;
    private ExecutorService k;
    private String m;
    private com.anythink.expressad.videocommon.e.d n;
    private int p;
    private com.anythink.expressad.d.c q;
    private List<com.anythink.expressad.foundation.d.c> d = new ArrayList();
    private boolean e = true;
    private f h = new f() { // from class: com.anythink.expressad.videocommon.b.n.1
        @Override // com.anythink.expressad.videocommon.b.f
        public final void a(long j, int i) {
            if (i == 5 || i == 4) {
                n.a(n.this);
                n.this.a();
            }
            if (i == 2) {
                n.a(n.this);
            }
        }
    };
    private CopyOnWriteArrayList<Map<String, c>> i = new CopyOnWriteArrayList<>();
    private long l = com.anythink.expressad.d.a.b.P;
    private int o = 2;
    public com.anythink.expressad.d.c a = null;
    public com.anythink.expressad.d.c b = null;
    private Context j = com.anythink.core.common.b.n.a().f();

    public n(com.anythink.expressad.foundation.d.c cVar, ExecutorService executorService, String str, int i) {
        this.p = 1;
        List<com.anythink.expressad.foundation.d.c> list = this.d;
        if (list != null && cVar != null) {
            list.add(cVar);
        }
        this.k = executorService;
        this.m = str;
        this.p = i;
        c(this.d);
    }

    public n(List<com.anythink.expressad.foundation.d.c> list, ExecutorService executorService, String str, int i) {
        this.p = 1;
        List<com.anythink.expressad.foundation.d.c> list2 = this.d;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        this.k = executorService;
        this.m = str;
        this.p = i;
        c(this.d);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x000f A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0011 A[Catch: all -> 0x000b, TRY_ENTER, TryCatch #0 {, blocks: (B:6:0x0006, B:13:0x0011, B:15:0x0019, B:17:0x0021), top: B:22:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized void a(c cVar) {
        com.anythink.expressad.foundation.d.c cVarN = null;
        if (cVar != null) {
            cVarN = cVar.n();
            if (cVarN != null) {
                return;
            }
            if (cVarN.w() == 94 || cVarN.w() == 287) {
                cVar.a(c(cVar));
            }
            return;
        }
        if (cVarN != null) {
        }
    }

    private boolean a(com.anythink.expressad.foundation.d.c cVar, String str) {
        if (!TextUtils.isEmpty(cVar.ar()) || TextUtils.isEmpty(str)) {
            return true;
        }
        return l.a().d(this.m + "_" + cVar.Z() + "_" + str);
    }

    private static boolean a(c cVar, int i) {
        long jP = cVar.p();
        long jF = cVar.f();
        if (TextUtils.isEmpty(cVar.a())) {
            return true;
        }
        if (i == 0) {
            if (cVar.n() == null || TextUtils.isEmpty(cVar.n().S())) {
                return false;
            }
            a(cVar);
            return true;
        }
        if (jF <= 0 || jP * 100 < jF * ((long) i)) {
            return false;
        }
        a(cVar);
        return true;
    }

    public static /* synthetic */ boolean a(n nVar) {
        nVar.e = true;
        return true;
    }

    private static boolean a(String str, com.anythink.expressad.foundation.d.c cVar) {
        try {
            if (cVar.aB() != null && cVar.aB().size() > 0 && cVar.aB().contains(2)) {
                return true;
            }
            if ((!cVar.j() || t.f(str)) && !w.a(str)) {
                return b(str, cVar);
            }
            return true;
        } catch (Throwable th) {
            th.getMessage();
            return false;
        }
    }

    private static boolean a(CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList) {
        try {
            for (Map<String, c> map : copyOnWriteArrayList) {
                if (map != null) {
                    Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        if (it.next().getValue().k() == 1) {
                            return true;
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            if (!com.anythink.expressad.a.a) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private int b(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar != null) {
            return cVar.ao() != -1 ? cVar.ao() : d(cVar);
        }
        return -1;
    }

    private static synchronized String b(c cVar) {
        return c(cVar);
    }

    private static boolean b(com.anythink.expressad.foundation.d.c cVar, String str) {
        if (cVar.j()) {
            return true;
        }
        if ((cVar.aB() == null || cVar.aB().size() <= 0 || !cVar.aB().contains(1)) && !TextUtils.isEmpty(str) && cVar.av() == 0) {
            new StringBuilder("check template download state:").append(i.a().c(str));
            if (i.a().c(str) == null) {
                return false;
            }
        }
        return true;
    }

    private static boolean b(c cVar, int i) {
        return a(cVar, i);
    }

    private static boolean b(String str, com.anythink.expressad.foundation.d.c cVar) {
        if (cVar.H() || TextUtils.isEmpty(str)) {
            return true;
        }
        if (cVar.av() != 1 || c(cVar)) {
            return (cVar.aB() != null && cVar.aB().size() > 0 && cVar.aB().contains(2)) || w.b(i.a().c(str)) || w.b(j.a.a.b(str));
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(List<com.anythink.expressad.foundation.d.c> list) {
        Bitmap bitmapA;
        Bitmap bitmapA2;
        Iterator<com.anythink.expressad.foundation.d.c> it = list.iterator();
        boolean z = true;
        while (it.hasNext()) {
            com.anythink.expressad.foundation.d.c next = it.next();
            String strI = next.I();
            String strS = next.S();
            String strBe = next.be();
            String strBd = next.bd();
            String strE = (next == null || next.M() == null) ? "" : next.M().e();
            next.M();
            if (!z || TextUtils.isEmpty(strE) || strE.contains(com.anythink.expressad.foundation.d.c.d) || b(next, strE)) {
                boolean z3 = !next.j() || t.f(strI);
                if (!z || !z3 || b(strI, next)) {
                    if (!z || w.a(strS)) {
                        if (z && !TextUtils.isEmpty(strBe) && ((bitmapA2 = com.anythink.expressad.foundation.g.d.a.a(s.a(strBe))) == null || bitmapA2.isRecycled())) {
                            z = false;
                        }
                        if (!z || TextUtils.isEmpty(strBd) || ((bitmapA = com.anythink.expressad.foundation.g.d.a.a(s.a(strBd))) != null && !bitmapA.isRecycled())) {
                        }
                    } else {
                        a.a();
                        String strA = a.a(strS);
                        if (w.a(strA) || new File(strA).length() <= 0) {
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }

    private static synchronized String c(c cVar) {
        if (cVar == null) {
            return "";
        }
        String strS = cVar.n().S();
        try {
            if (cVar.k() == 5) {
                String strE = cVar.e();
                if (!w.a(strE)) {
                    if (new File(strE).length() > 0) {
                        strS = strE;
                    }
                }
            }
        } catch (Throwable th) {
            th.getMessage();
        }
        return strS;
    }

    /* JADX WARN: Removed duplicated region for block: B:99:0x0095 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c(List<com.anythink.expressad.foundation.d.c> list) {
        StringBuilder sb;
        String strS;
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList;
        boolean z;
        if (list == null || list.size() == 0) {
            return;
        }
        f();
        e();
        int i = this.p;
        if (i == 1) {
            try {
                if (!TextUtils.isEmpty(this.m)) {
                    com.anythink.expressad.d.b.a();
                    com.anythink.expressad.d.c cVarC = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), this.m);
                    this.a = cVarC;
                    if (cVarC == null) {
                        this.a = com.anythink.expressad.d.c.c(this.m);
                    }
                    com.anythink.expressad.d.c cVar = this.a;
                    if (cVar != null) {
                        this.l = cVar.i();
                        this.o = this.a.m();
                    }
                }
            } catch (Exception unused) {
                return;
            }
        } else if (i == 287) {
            try {
                com.anythink.expressad.videocommon.e.a aVarB = com.anythink.expressad.videocommon.e.c.a().b();
                if (aVarB == null) {
                    com.anythink.expressad.videocommon.e.c.a();
                    com.anythink.expressad.videocommon.e.c.c();
                }
                if (aVarB != null) {
                    this.l = aVarB.e();
                }
                if (!TextUtils.isEmpty(this.m)) {
                    this.n = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.m);
                }
                com.anythink.expressad.videocommon.e.d dVar = this.n;
                if (dVar != null) {
                    this.o = dVar.F();
                }
            } catch (Exception unused2) {
                return;
            }
        } else if (i == 298) {
            com.anythink.expressad.d.b.a();
            com.anythink.expressad.d.c cVarD = com.anythink.expressad.d.b.d(com.anythink.expressad.foundation.b.a.c().f(), this.m);
            this.b = cVarD;
            if (cVarD == null) {
                com.anythink.expressad.d.b.a();
                this.b = com.anythink.expressad.d.b.b(com.anythink.expressad.foundation.b.a.c().f(), this.m);
            }
            com.anythink.expressad.d.c cVar2 = this.b;
            if (cVar2 != null) {
                this.l = cVar2.i();
                this.o = this.b.m();
            }
        } else if (i != 94) {
            if (i == 95) {
                try {
                    if (!TextUtils.isEmpty(this.m)) {
                        com.anythink.expressad.d.b.a();
                        com.anythink.expressad.d.c cVarC2 = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), this.m);
                        if (cVarC2 == null) {
                            cVarC2 = com.anythink.expressad.d.c.d(this.m);
                        }
                        if (cVarC2 != null) {
                            this.l = cVarC2.i();
                            this.o = cVarC2.m();
                        }
                    }
                } catch (Exception unused3) {
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.anythink.expressad.foundation.d.c cVar3 = list.get(i2);
            if (cVar3 != null) {
                int i3 = this.p;
                if (i3 == 94 || i3 == 287) {
                    sb = new StringBuilder();
                    sb.append(cVar3.Z());
                    sb.append(cVar3.aZ());
                    strS = cVar3.S();
                } else {
                    sb = new StringBuilder();
                    sb.append(cVar3.aZ());
                    sb.append(cVar3.S());
                    strS = cVar3.B();
                }
                sb.append(strS);
                String string = sb.toString();
                if ((c(cVar3) || !TextUtils.isEmpty(cVar3.S())) && (copyOnWriteArrayList = this.i) != null) {
                    synchronized (copyOnWriteArrayList) {
                        int i4 = 0;
                        while (true) {
                            try {
                                if (i4 >= this.i.size()) {
                                    z = false;
                                    break;
                                }
                                Map<String, c> map = this.i.get(i4);
                                if (map != null && map.containsKey(string)) {
                                    c cVar4 = map.get(string);
                                    cVar4.a(cVar3);
                                    cVar4.a(this.o);
                                    cVar4.a(false);
                                    map.remove(string);
                                    map.put(string, cVar4);
                                    this.i.set(i4, map);
                                    z = true;
                                    break;
                                }
                                i4++;
                            } catch (Throwable unused4) {
                            }
                        }
                        if (!z) {
                            c cVar5 = new c(this.j, cVar3, this.k, this.m);
                            cVar5.a(this.o);
                            cVar5.e(this.p);
                            HashMap map2 = new HashMap();
                            map2.put(string, cVar5);
                            this.i.add(map2);
                        }
                    }
                }
            }
        }
        List<com.anythink.expressad.foundation.d.c> list2 = this.d;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        this.d.clear();
    }

    private static boolean c(com.anythink.expressad.foundation.d.c cVar) {
        if (cVar == null) {
            return false;
        }
        try {
            return cVar.J() == 2;
        } catch (Throwable th) {
            if (!com.anythink.expressad.a.a) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    private int d(com.anythink.expressad.foundation.d.c cVar) {
        try {
            if (cVar.w() == 298) {
                if (this.b == null) {
                    com.anythink.expressad.d.b.a();
                    this.b = com.anythink.expressad.d.b.a(com.anythink.expressad.foundation.b.a.c().f(), this.m);
                }
                return this.b.f();
            }
            if (cVar.w() == 42) {
                return h();
            }
            if (this.n == null) {
                this.n = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.m, false);
            }
            return this.n.v();
        } catch (Throwable th) {
            th.getMessage();
            return 100;
        }
    }

    private void e() {
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int i = 0;
                    while (i < this.i.size()) {
                        Map<String, c> map = this.i.get(i);
                        Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            c value = it.next().getValue();
                            if (value != null) {
                                if (jCurrentTimeMillis - value.c() > this.l * 1000 && value.k() == 1) {
                                    value.j();
                                    value.a(this.o);
                                    this.i.remove(map);
                                    i--;
                                }
                                if (value.k() != 1 && value.k() != 5 && value.k() != 0) {
                                    this.i.remove(map);
                                    i--;
                                }
                            }
                        }
                        i++;
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void f() {
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    int i = 0;
                    while (i < this.i.size()) {
                        Map<String, c> map = this.i.get(i);
                        Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            c value = it.next().getValue();
                            if (value != null && value.n() != null && value.b() && value.d()) {
                                value.o();
                                this.i.remove(map);
                                i--;
                            }
                        }
                        i++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static boolean g() {
        return true;
    }

    private int h() {
        try {
            com.anythink.expressad.d.c cVar = this.a;
            if (cVar != null) {
                return cVar.f();
            }
            return 100;
        } catch (Exception unused) {
            return 100;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:166:0x0148 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x010c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final c a(int i, boolean z) {
        int iK;
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList;
        int i2;
        StringBuilder sb = new StringBuilder("isReady unitID ");
        sb.append(this.m);
        sb.append(" ad_type ");
        sb.append(this.p);
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList2 = this.i;
        if (copyOnWriteArrayList2 == null) {
            return null;
        }
        synchronized (copyOnWriteArrayList2) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i3 = 0;
                while (i3 < this.i.size()) {
                    Map<String, c> map = this.i.get(i3);
                    Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                    while (it.hasNext()) {
                        c value = it.next().getValue();
                        if (value != null && value.n() != null) {
                            com.anythink.expressad.foundation.d.c cVarN = value.n();
                            if ((!z || cVarN.A()) && (z || !cVarN.A())) {
                                String strI = cVarN.I();
                                String strS = cVarN.S();
                                String strE = "";
                                if (cVarN != null && cVarN.M() != null) {
                                    strE = cVarN.M().e();
                                }
                                cVarN.M();
                                if (this.p != 94 && i != 287) {
                                    boolean zIsEmpty = TextUtils.isEmpty(value.m());
                                    iK = value.k();
                                    if (this.p != 298) {
                                    }
                                    if (iK == 5) {
                                    }
                                } else if (TextUtils.isEmpty(strE) || strE.contains(com.anythink.expressad.foundation.d.c.d) || b(cVarN, strE)) {
                                    if (b(strI, cVarN)) {
                                        if (value.b()) {
                                            value.o();
                                        } else {
                                            if (w.a(strS)) {
                                                return value;
                                            }
                                            if (a(value, b(cVarN))) {
                                                return value;
                                            }
                                        }
                                    }
                                    boolean zIsEmpty2 = TextUtils.isEmpty(value.m());
                                    iK = value.k();
                                    if (this.p != 298 && a(value, b(cVarN))) {
                                        return value;
                                    }
                                    if (iK == 5) {
                                        long jC = value.c();
                                        if (value.k() == 1) {
                                            i2 = iK;
                                            if (jCurrentTimeMillis - jC > this.l * 1000) {
                                                value.j();
                                                this.i.remove(map);
                                                i3--;
                                                int i4 = this.p;
                                                if (i4 != 1 && i4 != 94) {
                                                }
                                            }
                                        } else {
                                            i2 = iK;
                                        }
                                        if (this.p == 95) {
                                            if (!value.b()) {
                                                new StringBuilder("==========isready ad_type is :").append(this.p);
                                                return value;
                                            }
                                            value.o();
                                            copyOnWriteArrayList = this.i;
                                        } else if (i2 == 4 || i2 == 2) {
                                            copyOnWriteArrayList = this.i;
                                        } else {
                                            if (i2 == 1) {
                                                if (value.b()) {
                                                    continue;
                                                } else if (!com.anythink.expressad.a.p && a(value, b(cVarN)) && a(strI, cVarN)) {
                                                    new StringBuilder("isready  IS_DOWANLOAD_FINSH_PLAY is :").append(com.anythink.expressad.a.p);
                                                    return value;
                                                }
                                            }
                                            int i5 = this.p;
                                            if (i5 == 94 || i5 == 287) {
                                                if (a(value, b(cVarN)) && a(strI, cVarN)) {
                                                    return value;
                                                }
                                            }
                                        }
                                        copyOnWriteArrayList.remove(map);
                                        i3--;
                                    } else if (value.b()) {
                                        value.o();
                                        copyOnWriteArrayList = this.i;
                                        copyOnWriteArrayList.remove(map);
                                        i3--;
                                    } else {
                                        if (zIsEmpty2) {
                                            if (a(strI, cVarN)) {
                                                return value;
                                            }
                                            return null;
                                        }
                                        value.l();
                                        if (this.p == 95) {
                                            StringBuilder sb2 = new StringBuilder("isready ==========done but isEffectivePath:");
                                            sb2.append(zIsEmpty2);
                                            sb2.append(" is feed");
                                            sb2.append(this.p);
                                            return value;
                                        }
                                    }
                                }
                            } else {
                                StringBuilder sb3 = new StringBuilder("UnitCache isReady ==== isBidCampaign = ");
                                sb3.append(z);
                                sb3.append(" campaign.isBidCampaign() = ");
                                sb3.append(cVarN.A());
                            }
                        }
                    }
                    i3++;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }

    public final c a(String str) {
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList == null) {
            return null;
        }
        synchronized (copyOnWriteArrayList) {
            try {
            } catch (Throwable unused) {
            }
            for (Map<String, c> map : this.i) {
                if (map != null && map.containsKey(str)) {
                    return map.get(str);
                }
                return null;
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0114 A[Catch: all -> 0x01c4, Exception -> 0x01c6, TryCatch #1 {Exception -> 0x01c6, blocks: (B:5:0x000e, B:6:0x0013, B:8:0x001b, B:9:0x002b, B:11:0x0031, B:13:0x003f, B:16:0x0047, B:17:0x0050, B:19:0x0056, B:22:0x0060, B:24:0x006a, B:26:0x0074, B:28:0x0082, B:33:0x0096, B:38:0x00a4, B:36:0x009e, B:39:0x00bc, B:41:0x00c8, B:43:0x00ce, B:44:0x00d6, B:46:0x00df, B:48:0x00e7, B:50:0x00ed, B:52:0x00f3, B:54:0x00f9, B:55:0x00fe, B:57:0x0104, B:58:0x0109, B:61:0x0114, B:63:0x0123, B:65:0x0129, B:67:0x0137, B:68:0x013c, B:74:0x0146, B:76:0x0151, B:78:0x015f, B:103:0x01ae, B:87:0x0171, B:89:0x0177, B:91:0x017b, B:93:0x0185, B:95:0x018b, B:96:0x0197, B:97:0x019b, B:99:0x01a5, B:102:0x01ac), top: B:117:0x000e, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x019b A[Catch: all -> 0x01c4, Exception -> 0x01c6, TryCatch #1 {Exception -> 0x01c6, blocks: (B:5:0x000e, B:6:0x0013, B:8:0x001b, B:9:0x002b, B:11:0x0031, B:13:0x003f, B:16:0x0047, B:17:0x0050, B:19:0x0056, B:22:0x0060, B:24:0x006a, B:26:0x0074, B:28:0x0082, B:33:0x0096, B:38:0x00a4, B:36:0x009e, B:39:0x00bc, B:41:0x00c8, B:43:0x00ce, B:44:0x00d6, B:46:0x00df, B:48:0x00e7, B:50:0x00ed, B:52:0x00f3, B:54:0x00f9, B:55:0x00fe, B:57:0x0104, B:58:0x0109, B:61:0x0114, B:63:0x0123, B:65:0x0129, B:67:0x0137, B:68:0x013c, B:74:0x0146, B:76:0x0151, B:78:0x015f, B:103:0x01ae, B:87:0x0171, B:89:0x0177, B:91:0x017b, B:93:0x0185, B:95:0x018b, B:96:0x0197, B:97:0x019b, B:99:0x01a5, B:102:0x01ac), top: B:117:0x000e, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<c> a(boolean z, List<com.anythink.expressad.foundation.d.c> list) {
        long j;
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList;
        boolean z3 = z;
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList2 = this.i;
        if (copyOnWriteArrayList2 != null) {
            synchronized (copyOnWriteArrayList2) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    int i = 0;
                    while (i < this.i.size()) {
                        Map<String, c> map = this.i.get(i);
                        Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            c value = it.next().getValue();
                            if (value == null || value.n() == null) {
                                j = jCurrentTimeMillis;
                                z3 = z;
                                jCurrentTimeMillis = j;
                            } else {
                                com.anythink.expressad.foundation.d.c cVarN = value.n();
                                boolean z4 = false;
                                for (com.anythink.expressad.foundation.d.c cVar : list) {
                                    if (cVarN != null && cVar != null && !TextUtils.isEmpty(cVarN.Z()) && !TextUtils.isEmpty(cVar.Z()) && cVarN.aZ().equals(cVar.aZ()) && cVarN.Z().equals(cVar.Z())) {
                                        z4 = true;
                                    }
                                }
                                if (z4) {
                                    if ((!z3 || cVarN.A()) && (z3 || !cVarN.A())) {
                                        String strI = cVarN.I();
                                        String strS = cVarN.S();
                                        String strE = "";
                                        if (cVarN != null && cVarN.M() != null) {
                                            strE = cVarN.M().e();
                                        }
                                        cVarN.M();
                                        if (TextUtils.isEmpty(strE) || strE.contains(com.anythink.expressad.foundation.d.c.d) || b(cVarN, strE)) {
                                            if (!b(strI, cVarN)) {
                                                boolean zIsEmpty = TextUtils.isEmpty(value.m());
                                                int iK = value.k();
                                                if (iK != 5) {
                                                    long jC = value.c();
                                                    if (value.k() == 1) {
                                                        j = jCurrentTimeMillis;
                                                        if (jCurrentTimeMillis - jC > this.l * 1000) {
                                                            value.j();
                                                            copyOnWriteArrayList = this.i;
                                                        }
                                                        copyOnWriteArrayList.remove(map);
                                                        i--;
                                                        z3 = z;
                                                        jCurrentTimeMillis = j;
                                                    } else {
                                                        j = jCurrentTimeMillis;
                                                    }
                                                    if (iK != 4 && iK != 2) {
                                                        if (iK != 1) {
                                                            if (a(value, b(cVarN)) && a(strI, cVarN)) {
                                                                arrayList.add(value);
                                                            }
                                                            z3 = z;
                                                            jCurrentTimeMillis = j;
                                                        } else {
                                                            if (!value.b()) {
                                                                if (!com.anythink.expressad.a.p && a(value, b(cVarN)) && a(strI, cVarN)) {
                                                                    new StringBuilder("isready  IS_DOWANLOAD_FINSH_PLAY is :").append(com.anythink.expressad.a.p);
                                                                }
                                                                arrayList.add(value);
                                                            }
                                                            z3 = z;
                                                            jCurrentTimeMillis = j;
                                                        }
                                                    }
                                                    copyOnWriteArrayList = this.i;
                                                    copyOnWriteArrayList.remove(map);
                                                    i--;
                                                    z3 = z;
                                                    jCurrentTimeMillis = j;
                                                } else if (value.b()) {
                                                    value.o();
                                                    this.i.remove(map);
                                                    i--;
                                                } else if (zIsEmpty) {
                                                    if (!a(strI, cVarN)) {
                                                        return null;
                                                    }
                                                    arrayList.add(value);
                                                } else {
                                                    value.l();
                                                }
                                            } else if (value.b()) {
                                                value.o();
                                            } else if (w.a(strS) || a(value, b(cVarN))) {
                                                arrayList.add(value);
                                            }
                                        }
                                    } else {
                                        StringBuilder sb = new StringBuilder("UnitCache isReady ==== isBidCampaign = ");
                                        sb.append(z3);
                                        sb.append(" campaign.isBidCampaign() = ");
                                        sb.append(cVarN.A());
                                    }
                                }
                                j = jCurrentTimeMillis;
                                z3 = z;
                                jCurrentTimeMillis = j;
                            }
                        }
                        i++;
                        z3 = z;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b4 A[Catch: all -> 0x0198, TryCatch #0 {, blocks: (B:5:0x000a, B:7:0x0013, B:8:0x0015, B:9:0x001b, B:11:0x0021, B:13:0x0029, B:14:0x0031, B:16:0x0037, B:18:0x0045, B:20:0x004b, B:22:0x0051, B:23:0x0053, B:25:0x006b, B:27:0x006f, B:28:0x0077, B:29:0x007b, B:35:0x008f, B:37:0x0093, B:38:0x00a6, B:40:0x00aa, B:42:0x00b0, B:44:0x00b4, B:46:0x00b8, B:47:0x00cb, B:49:0x00cf, B:61:0x00fd, B:63:0x0102, B:65:0x0108, B:67:0x012f, B:69:0x0133, B:72:0x013b, B:73:0x0142, B:75:0x0146, B:77:0x014c, B:80:0x015c, B:88:0x016e, B:90:0x0172, B:92:0x017d, B:95:0x0183, B:96:0x0188, B:101:0x0192, B:50:0x00d4, B:52:0x00d8, B:56:0x00ed, B:57:0x00f3, B:59:0x00f7, B:102:0x0196), top: B:108:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        int iX;
        com.anythink.expressad.videocommon.d.c cVar;
        int i;
        e();
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList != null) {
            synchronized (copyOnWriteArrayList) {
                if (!a(this.i)) {
                    this.e = true;
                }
                for (Map<String, c> map : this.i) {
                    if (map != null) {
                        Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            c value = it.next().getValue();
                            if (value != null && !value.b()) {
                                if (this.p == 95) {
                                    this.e = true;
                                }
                                int iK = value.k();
                                final com.anythink.expressad.foundation.d.c cVarN = value.n();
                                value.a(new com.anythink.expressad.videocommon.d.c() { // from class: com.anythink.expressad.videocommon.b.n.2
                                    @Override // com.anythink.expressad.videocommon.d.c
                                    public final void a(String str) {
                                        com.anythink.expressad.videocommon.d.c cVar2;
                                        if (n.this.f != null) {
                                            n.this.f.a(str);
                                        }
                                        if (n.this.g == null || n.this.g.size() <= 0 || cVarN == null || (cVar2 = (com.anythink.expressad.videocommon.d.c) n.this.g.get(cVarN.Z())) == null) {
                                            return;
                                        }
                                        cVar2.a(str);
                                    }

                                    @Override // com.anythink.expressad.videocommon.d.c
                                    public final void a(String str, String str2) {
                                        com.anythink.expressad.videocommon.d.c cVar2;
                                        com.anythink.expressad.foundation.d.c cVar3 = cVarN;
                                        if (cVar3 == null || cVar3.aB() == null || cVarN.aB().size() <= 0 || !cVarN.aB().contains(0)) {
                                            if (n.this.f != null) {
                                                n.this.f.a(str, str2);
                                            }
                                            if (n.this.g == null || n.this.g.size() <= 0 || cVarN == null || (cVar2 = (com.anythink.expressad.videocommon.d.c) n.this.g.get(cVarN.Z())) == null) {
                                                return;
                                            }
                                            cVar2.a(str, str2);
                                        }
                                    }
                                });
                                int iB = b(cVarN);
                                if (this.p == 1) {
                                    if (this.a == null) {
                                        this.a = com.anythink.expressad.d.c.c(this.m);
                                    }
                                    iB = h();
                                }
                                value.d(iB);
                                int i2 = this.p;
                                if (i2 == 94 || i2 == 287 || i2 == 95) {
                                    if (this.n == null) {
                                        this.n = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), this.m, this.p == 287);
                                    }
                                    com.anythink.expressad.videocommon.e.d dVar = this.n;
                                    iX = dVar != null ? dVar.x() : 0;
                                } else if (i2 != 298) {
                                    iX = 0;
                                    if (this.p == 1) {
                                        if (this.a == null) {
                                            com.anythink.expressad.d.b.a();
                                            this.a = com.anythink.expressad.d.b.a(com.anythink.expressad.foundation.b.a.c().f(), this.m);
                                        }
                                        com.anythink.expressad.d.c cVar2 = this.a;
                                        if (cVar2 != null) {
                                            iX = cVar2.g();
                                        }
                                    }
                                } else {
                                    if (this.b == null) {
                                        com.anythink.expressad.d.b.a();
                                        this.b = com.anythink.expressad.d.b.a(com.anythink.expressad.foundation.b.a.c().f(), this.m);
                                    }
                                    com.anythink.expressad.d.c cVar3 = this.b;
                                    if (cVar3 != null) {
                                        iX = cVar3.g();
                                    }
                                    if (this.p == 1) {
                                    }
                                }
                                value.b(iX);
                                int iAC = cVarN != null ? cVarN.aC() : 1;
                                value.c(iAC);
                                StringBuilder sb = new StringBuilder("ready_rate : ");
                                sb.append(iB);
                                sb.append(" cd_rate : ");
                                sb.append(iX);
                                sb.append(" videoCtnType : ");
                                sb.append(iAC);
                                if (a(value, b(cVarN))) {
                                    com.anythink.expressad.videocommon.d.c cVar4 = this.f;
                                    if (cVar4 != null && ((i = this.p) == 297 || i == 298)) {
                                        cVar4.a(cVarN.S());
                                    }
                                    ConcurrentHashMap<String, com.anythink.expressad.videocommon.d.c> concurrentHashMap = this.g;
                                    if (concurrentHashMap != null && concurrentHashMap.size() > 0 && (cVar = this.g.get(cVarN.Z())) != null && cVarN != null) {
                                        cVar.a(cVarN.S());
                                    }
                                }
                                if (iK != 1 && iK != 5 && iK != 4 && (iK == 2 || this.e)) {
                                    value.a(this.h);
                                    if (a(value, iB)) {
                                        int i3 = this.p;
                                        if (i3 == 94 || i3 == 287) {
                                        }
                                    } else {
                                        int i4 = this.p;
                                        if (i4 == 1 || i4 == 95 || i4 == 298) {
                                            this.e = false;
                                        }
                                    }
                                    value.h();
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public final void a(com.anythink.expressad.foundation.d.c cVar) {
        List<com.anythink.expressad.foundation.d.c> list = this.d;
        if (list != null && cVar != null) {
            list.add(cVar);
        }
        c(this.d);
    }

    public final void a(com.anythink.expressad.videocommon.d.c cVar) {
        this.f = cVar;
    }

    public final void a(String str, com.anythink.expressad.videocommon.d.c cVar) {
        if (this.g == null) {
            this.g = new ConcurrentHashMap<>();
        }
        this.g.put(str, cVar);
    }

    public final void a(List<com.anythink.expressad.foundation.d.c> list) {
        List<com.anythink.expressad.foundation.d.c> list2 = this.d;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        c(this.d);
    }

    public final c b(int i, boolean z) {
        try {
            return a(i, z);
        } catch (Throwable th) {
            th.getMessage();
            return null;
        }
    }

    public final void b() {
        int iK;
        try {
            CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList = this.i;
            if (copyOnWriteArrayList != null) {
                synchronized (copyOnWriteArrayList) {
                    for (Map<String, c> map : this.i) {
                        if (map != null) {
                            Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                            while (it.hasNext()) {
                                c value = it.next().getValue();
                                if (value != null && (iK = value.k()) != 1 && iK != 5) {
                                    if (com.anythink.expressad.foundation.h.k.a() != 9 && this.o == 2) {
                                        return;
                                    }
                                    if (iK == 2 || iK == 0) {
                                        value.h();
                                        return;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    public final void b(String str) {
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList;
        try {
            synchronized (this.i) {
                if (!TextUtils.isEmpty(str) && (copyOnWriteArrayList = this.i) != null && copyOnWriteArrayList.size() > 0) {
                    for (Map<String, c> map : this.i) {
                        if (map != null) {
                            for (Map.Entry<String, c> entry : map.entrySet()) {
                                if (entry != null && TextUtils.equals(entry.getKey(), str)) {
                                    this.i.remove(map);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
    }

    public final void c() {
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    for (Map<String, c> map : this.i) {
                        if (map != null) {
                            Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                            while (it.hasNext()) {
                                c value = it.next().getValue();
                                if (value != null && value.k() == 1) {
                                    value.j();
                                    this.i.remove(map);
                                    return;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public final void d() {
        CopyOnWriteArrayList<Map<String, c>> copyOnWriteArrayList = this.i;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    for (Map<String, c> map : this.i) {
                        if (map == null) {
                            return;
                        }
                        Iterator<Map.Entry<String, c>> it = map.entrySet().iterator();
                        while (it.hasNext()) {
                            c value = it.next().getValue();
                            if (value != null) {
                                value.o();
                            }
                        }
                    }
                    this.i.clear();
                }
            } catch (Throwable unused) {
            }
        }
        List<com.anythink.expressad.foundation.d.c> list = this.d;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.d.clear();
    }
}
