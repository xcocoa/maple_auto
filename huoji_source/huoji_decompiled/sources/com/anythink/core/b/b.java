package com.anythink.core.b;

import android.text.TextUtils;
import com.anythink.core.api.ATBaseAdAdapter;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.aw;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.y;
import com.anythink.core.common.i;
import com.anythink.core.common.o.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class b extends com.anythink.core.common.o.a implements i.b {
    public static final String a = "b";
    public Map<String, com.anythink.core.common.f.h> b = new ConcurrentHashMap(3);
    public com.anythink.core.common.m.b c = new com.anythink.core.common.m.b() { // from class: com.anythink.core.b.b.1
        @Override // java.lang.Runnable
        public final void run() {
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.b.b.1.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.c();
                }
            });
        }
    };
    private String d;
    private i.a e;
    private String f;
    private long g;
    private boolean h;
    private com.anythink.core.common.f.a i;
    private Map<Integer, d> j;
    private long k;

    /* JADX INFO: renamed from: com.anythink.core.b.b$4, reason: invalid class name */
    public class AnonymousClass4 implements Runnable {
        public final /* synthetic */ com.anythink.core.common.f.h a;
        public final /* synthetic */ av b;

        public AnonymousClass4(com.anythink.core.common.f.h hVar, av avVar) {
            this.a = hVar;
            this.b = avVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.i.c.e != null) {
                if (this.a != null) {
                    b.this.i.c.e.a(this.a, ErrorCode.getErrorCode(ErrorCode.adSourceBidError, "", this.b.A()));
                }
                b.this.b.remove(this.b.u());
            }
        }
    }

    /* JADX INFO: renamed from: com.anythink.core.b.b$5, reason: invalid class name */
    public class AnonymousClass5 implements Runnable {
        public final /* synthetic */ com.anythink.core.common.f.h a;
        public final /* synthetic */ av b;

        public AnonymousClass5(com.anythink.core.common.f.h hVar, av avVar) {
            this.a = hVar;
            this.b = avVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (b.this.i.c.e != null) {
                com.anythink.core.common.f.h hVar = this.a;
                if (hVar != null) {
                    v.a(hVar, this.b, 0, false);
                    b.this.i.c.e.b(this.a);
                }
                b.this.b.remove(this.b.u());
            }
        }
    }

    public b(com.anythink.core.common.f.a aVar) {
        this.i = aVar;
        this.d = aVar.e;
        this.f = aVar.d;
        this.g = aVar.g;
        List<av> list = aVar.j;
        int size = list.size();
        List<av> listA = aVar.y.a();
        if (listA.size() > 0) {
            this.i.z = listA.size() + size;
        } else {
            this.i.z = size;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = null;
        ArrayList arrayList4 = null;
        ArrayList arrayList5 = null;
        for (int i = 0; i < size; i++) {
            av avVar = list.get(i);
            if (avVar.m() == 1 || avVar.m() == 3) {
                arrayList.add(avVar);
            } else if (avVar.m() == 2) {
                arrayList3 = arrayList3 == null ? new ArrayList(size) : arrayList3;
                arrayList3.add(avVar);
            } else if (avVar.m() == 5) {
                arrayList4 = arrayList4 == null ? new ArrayList(size) : arrayList4;
                arrayList4.add(avVar);
            } else if (avVar.m() == 6) {
                arrayList5 = arrayList5 == null ? new ArrayList(size) : arrayList5;
                arrayList5.add(avVar);
            } else if (avVar.m() == 7) {
                arrayList2.add(avVar);
            }
        }
        this.j = new HashMap(5);
        if (arrayList.size() > 0 || arrayList2.size() > 0) {
            this.j.put(1, new c(aVar.a(arrayList, arrayList2), list));
        }
        if (arrayList3 != null && arrayList3.size() > 0) {
            this.j.put(2, new a(aVar.a(arrayList3)));
        }
        if (arrayList4 != null && arrayList4.size() > 0) {
            this.j.put(5, new h(aVar.b(arrayList4)));
        }
        if (arrayList5 == null || arrayList5.size() <= 0) {
            return;
        }
        this.j.put(6, new g(aVar.c(arrayList5)));
    }

    public static /* synthetic */ void a(b bVar, av avVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (avVar.m() == 7 || aTBaseAdAdapter == null) {
            return;
        }
        try {
            com.anythink.core.common.f.a aVar = bVar.i;
            if (aVar.c.e != null) {
                com.anythink.core.common.f.h hVarV = aVar.s.V();
                v.a(hVarV, avVar, 0, false);
                hVarV.g(aTBaseAdAdapter.getInternalNetworkPlacementId());
                bVar.b.put(avVar.u(), hVarV);
                hVarV.f(0.0d);
                hVarV.c(0.0d);
                hVarV.d(0.0d);
                bVar.i.c.e.a(hVarV);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void a(av avVar) {
        com.anythink.core.common.f.h hVar = this.b.get(avVar.u());
        if (hVar != null) {
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass4(hVar, avVar));
        }
    }

    private void a(av avVar, ATBaseAdAdapter aTBaseAdAdapter) {
        if (avVar.m() == 7 || aTBaseAdAdapter == null) {
            return;
        }
        try {
            com.anythink.core.common.f.a aVar = this.i;
            if (aVar.c.e != null) {
                com.anythink.core.common.f.h hVarV = aVar.s.V();
                v.a(hVarV, avVar, 0, false);
                hVarV.g(aTBaseAdAdapter.getInternalNetworkPlacementId());
                this.b.put(avVar.u(), hVarV);
                hVarV.f(0.0d);
                hVarV.c(0.0d);
                hVarV.d(0.0d);
                this.i.c.e.a(hVarV);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00e7 A[Catch: all -> 0x013e, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:8:0x0016, B:10:0x0020, B:13:0x0031, B:16:0x0039, B:20:0x0043, B:24:0x0057, B:26:0x0076, B:27:0x0082, B:28:0x0085, B:32:0x008d, B:45:0x0107, B:36:0x00ca, B:38:0x00d9, B:40:0x00e3, B:42:0x00ea, B:44:0x00fb, B:41:0x00e7, B:46:0x010a, B:47:0x010d, B:49:0x0113, B:50:0x011b, B:52:0x0132, B:54:0x0139), top: B:63:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00fb A[Catch: all -> 0x013e, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:8:0x0016, B:10:0x0020, B:13:0x0031, B:16:0x0039, B:20:0x0043, B:24:0x0057, B:26:0x0076, B:27:0x0082, B:28:0x0085, B:32:0x008d, B:45:0x0107, B:36:0x00ca, B:38:0x00d9, B:40:0x00e3, B:42:0x00ea, B:44:0x00fb, B:41:0x00e7, B:46:0x010a, B:47:0x010d, B:49:0x0113, B:50:0x011b, B:52:0x0132, B:54:0x0139), top: B:63:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0107 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized void a(Integer num, List<av> list, List<av> list2) {
        boolean z;
        com.anythink.core.common.f.h hVar;
        d dVar = this.j.get(num);
        if (dVar != null && dVar.c()) {
            this.j.remove(num);
        }
        if (this.j.size() == 0) {
            a();
            com.anythink.core.common.m.d.a().b(this.c);
            z = true;
        } else {
            z = false;
        }
        int size = list != null ? list.size() : 0;
        int size2 = list2 != null ? list2.size() : 0;
        if (size > 0 || size2 > 0) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            if (size > 0) {
                for (int i = 0; i < size; i++) {
                    av avVar = list.get(i);
                    a(this.d, avVar, true);
                    arrayList.add(avVar);
                    arrayList3.add(avVar);
                    com.anythink.core.common.f.h hVar2 = this.b.get(avVar.u());
                    if (hVar2 != null) {
                        com.anythink.core.common.o.b.b.a().a(new AnonymousClass5(hVar2, avVar));
                    }
                }
                list.clear();
            }
            if (size2 > 0) {
                for (int i2 = 0; i2 < size2; i2++) {
                    av avVar2 = list2.get(i2);
                    if (avVar2 == null) {
                        try {
                            com.anythink.core.common.n.e.a("Bid Fail AdSource Object is null, currentSize:" + list2.size() + "\n" + com.anythink.core.common.o.i.a(new Throwable().getStackTrace()), "Bidding inner error", n.a().q());
                        } catch (Throwable unused) {
                            a(this.d, avVar2, false);
                            if (com.anythink.core.common.o.h.a(avVar2) > 0.0d) {
                                arrayList2.add(avVar2);
                                arrayList3.add(avVar2);
                                hVar = this.b.get(avVar2.u());
                                if (hVar == null) {
                                }
                            }
                        }
                    } else {
                        a(this.d, avVar2, false);
                        if (com.anythink.core.common.o.h.a(avVar2) > 0.0d || TextUtils.isEmpty(avVar2.z())) {
                            arrayList2.add(avVar2);
                        } else {
                            arrayList.add(avVar2);
                        }
                        arrayList3.add(avVar2);
                        hVar = this.b.get(avVar2.u());
                        if (hVar == null) {
                            com.anythink.core.common.o.b.b.a().a(new AnonymousClass4(hVar, avVar2));
                        }
                    }
                }
                list2.clear();
            }
            if (arrayList.size() > 1) {
                Collections.sort(arrayList, new Comparator<av>() { // from class: com.anythink.core.b.b.3
                    private static int a(av avVar3, av avVar4) {
                        double dA = com.anythink.core.common.o.h.a(avVar3);
                        double dA2 = com.anythink.core.common.o.h.a(avVar4);
                        if (dA > dA2) {
                            return -1;
                        }
                        return dA == dA2 ? 0 : 1;
                    }

                    @Override // java.util.Comparator
                    public final /* synthetic */ int compare(av avVar3, av avVar4) {
                        double dA = com.anythink.core.common.o.h.a(avVar3);
                        double dA2 = com.anythink.core.common.o.h.a(avVar4);
                        if (dA > dA2) {
                            return -1;
                        }
                        return dA == dA2 ? 0 : 1;
                    }
                });
            }
            com.anythink.core.common.f.h hVarV = this.i.s.V();
            long j = this.k;
            com.anythink.core.common.f.a aVar = this.i;
            com.anythink.core.b.d.b.a(hVarV, arrayList3, j, aVar.t, aVar.f);
            i.a aVar2 = this.e;
            if (aVar2 != null) {
                aVar2.a(this.f, arrayList, arrayList2, z);
            }
            if (z) {
                this.e = null;
            }
        }
    }

    private void a(String str, av avVar, boolean z) {
        com.anythink.core.common.f.b bVar;
        int iD;
        if (avVar.n() == 2) {
            aw awVarA = com.anythink.core.common.a.a().a(str, avVar);
            q qVarM = avVar.M();
            if (awVarA != null) {
                com.anythink.core.common.f.f fVarA = awVarA.a((q) null);
                com.anythink.core.common.f.b bVarB = fVarA.b();
                iD = fVarA.d();
                bVar = bVarB;
            } else {
                bVar = null;
                iD = 0;
            }
            StringBuilder sb = new StringBuilder("CacehMotify: Bidding Offer Cache exist, need to compare with cache status:");
            sb.append(bVar != null && iD >= avVar.an());
            sb.append(", current cache size:");
            sb.append(iD);
            sb.append("\n");
            sb.append(avVar.toString());
            if (bVar != null && iD >= avVar.an()) {
                try {
                    double dA = com.anythink.core.common.o.h.a(avVar);
                    double dA2 = com.anythink.core.common.o.h.a(bVar.d().getUnitGroupInfo());
                    if (dA > dA2) {
                        avVar.a(avVar, 2, avVar.p(), 1);
                        return;
                    }
                    try {
                        av unitGroupInfo = bVar.d().getUnitGroupInfo();
                        String str2 = unitGroupInfo.M() != null ? unitGroupInfo.M().token : "";
                        if (qVarM != null && !TextUtils.equals(qVarM.token, str2)) {
                            try {
                                com.anythink.core.b.d.b.a(qVarM, new y(2, avVar, this.i.s, dA2), true);
                            } catch (Throwable th) {
                                th = th;
                                try {
                                    th.printStackTrace();
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    avVar.a(bVar.d().getUnitGroupInfo(), 1, avVar.p(), z ? 1 : 0);
                } catch (Exception unused2) {
                }
            }
        }
    }

    private boolean a(Integer num) {
        d dVar = this.j.get(num);
        if (dVar != null && dVar.c()) {
            this.j.remove(num);
        }
        if (this.j.size() != 0) {
            return false;
        }
        a();
        com.anythink.core.common.m.d.a().b(this.c);
        return true;
    }

    private void b(av avVar) {
        com.anythink.core.common.f.h hVar = this.b.get(avVar.u());
        if (hVar != null) {
            com.anythink.core.common.o.b.b.a().a(new AnonymousClass5(hVar, avVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(Integer num, List<av> list, List<av> list2) {
        a(num, list, list2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c() {
        try {
            i.a aVar = this.e;
            if (aVar != null) {
                aVar.a(this.f);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void d() {
        long j = this.i.i;
        if (j <= 0) {
            j = com.anythink.expressad.exoplayer.i.a.f;
        }
        com.anythink.core.common.m.d.a().a(this.c, j, false);
    }

    @Override // com.anythink.core.common.i.b
    public final void a(i.a aVar) {
        this.e = aVar;
        super.a(this.g);
        long j = this.i.i;
        if (j <= 0) {
            j = com.anythink.expressad.exoplayer.i.a.f;
        }
        com.anythink.core.common.m.d.a().a(this.c, j, false);
        this.k = System.currentTimeMillis();
        for (Map.Entry entry : new HashMap(this.j).entrySet()) {
            final Integer num = (Integer) entry.getKey();
            final d dVar = (d) entry.getValue();
            com.anythink.core.common.o.b.b.a().a(new Runnable() { // from class: com.anythink.core.b.b.2
                @Override // java.lang.Runnable
                public final void run() {
                    d dVar2 = dVar;
                    if (dVar2 != null) {
                        dVar2.a(b.this.h);
                        dVar.a(new com.anythink.core.b.b.b() { // from class: com.anythink.core.b.b.2.1
                            @Override // com.anythink.core.b.b.b
                            public final void a(av avVar, ATBaseAdAdapter aTBaseAdAdapter) {
                                b.a(b.this, avVar, aTBaseAdAdapter);
                            }

                            @Override // com.anythink.core.b.b.b
                            public final void a(List<av> list, List<av> list2) {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                b.this.b(num, list, list2);
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // com.anythink.core.common.i.b
    public final void a(boolean z) {
        this.h = z;
    }

    @Override // com.anythink.core.common.o.a
    public final synchronized void b() {
        Iterator it = new HashMap(this.j).entrySet().iterator();
        while (it.hasNext()) {
            d dVar = (d) ((Map.Entry) it.next()).getValue();
            if (dVar != null) {
                dVar.a();
            }
        }
    }
}
