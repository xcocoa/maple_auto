package com.anythink.expressad.videocommon.b;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class e {
    private static final String a = "DownLoadManager";
    private static e b;
    private ThreadPoolExecutor c;
    private boolean d = false;
    private ConcurrentHashMap<String, n> e = new ConcurrentHashMap<>();
    private Map<String, List<Map<String, c>>> f;
    private Map<String, List<com.anythink.expressad.foundation.d.c>> g;
    private Map<String, List<c>> h;

    private e() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 15, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadPoolExecutor.DiscardPolicy());
        this.c = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public static e a() {
        if (b == null) {
            synchronized (e.class) {
                if (b == null) {
                    b = new e();
                }
            }
        }
        return b;
    }

    private n a(String str, com.anythink.expressad.foundation.d.c cVar, int i, com.anythink.expressad.videocommon.d.c cVar2) {
        if (TextUtils.isEmpty(str) || cVar == null) {
            return null;
        }
        if (!this.e.containsKey(str)) {
            n nVar = new n(cVar, this.c, str, i);
            if (cVar2 != null) {
                nVar.a(cVar2);
            }
            this.e.put(str, nVar);
            return nVar;
        }
        n nVar2 = this.e.get(str);
        if (i == 94 || i == 287) {
            nVar2.a(cVar.Z(), cVar2);
        } else {
            nVar2.a(cVar2);
        }
        nVar2.a(cVar);
        return nVar2;
    }

    private static void a(n nVar, String str) {
        try {
            com.anythink.expressad.videocommon.e.d dVarA = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), str);
            if (dVarA == null) {
                return;
            }
            if (dVarA.F() == 2) {
                nVar.c();
            } else {
                nVar.a();
            }
        } catch (Exception e) {
            e.getMessage();
            try {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                com.anythink.expressad.d.b.a();
                com.anythink.expressad.d.c cVarC = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), str);
                if (cVarC == null) {
                    cVarC = com.anythink.expressad.d.c.d(str);
                }
                if (cVarC.m() == 2) {
                    nVar.c();
                } else {
                    nVar.a();
                }
            } catch (Exception e2) {
                e2.getMessage();
            }
        }
    }

    private c b(int i, String str, boolean z) {
        n nVarC = c(str);
        if (nVarC != null) {
            return nVarC.b(i, z);
        }
        return null;
    }

    private void b(String str, String str2) {
        n nVarC = c(str);
        if (nVarC != null) {
            try {
                nVarC.b(str2);
            } catch (Exception unused) {
            }
        }
    }

    private void d() {
        ConcurrentHashMap<String, n> concurrentHashMap = this.e;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, n>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                n value = it.next().getValue();
                if (value != null) {
                    value.b();
                }
            }
        }
    }

    private List<Map<String, c>> e(String str) {
        Map<String, List<Map<String, c>>> map = this.f;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.f.get(str);
    }

    private void f(String str) {
        n nVarC = c(str);
        if (nVarC != null) {
            nVarC.d();
        }
    }

    public final c a(String str, String str2) {
        n nVarC = c(str);
        if (nVarC != null) {
            return nVarC.a(str2);
        }
        return null;
    }

    public final n a(String str, List<com.anythink.expressad.foundation.d.c> list, int i, com.anythink.expressad.videocommon.d.c cVar) {
        if (TextUtils.isEmpty(str) || list == null || list.size() == 0) {
            return null;
        }
        if (!this.e.containsKey(str)) {
            n nVar = new n(list, this.c, str, i);
            if (cVar != null) {
                nVar.a(cVar);
            }
            this.e.put(str, nVar);
            return nVar;
        }
        n nVar2 = this.e.get(str);
        if (i == 94 || i == 287) {
            nVar2.a(list.get(0).Z(), cVar);
        } else {
            nVar2.a(cVar);
        }
        nVar2.a(list);
        return nVar2;
    }

    public final List<com.anythink.expressad.foundation.d.c> a(String str) {
        Map<String, List<com.anythink.expressad.foundation.d.c>> map = this.g;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.g.get(str);
    }

    public final void a(boolean z) {
        if (!z) {
            this.d = false;
        } else if (this.d) {
            return;
        }
        ConcurrentHashMap<String, n> concurrentHashMap = this.e;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, n>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().a();
            }
        }
    }

    public final boolean a(int i, String str, boolean z) {
        try {
            n nVarC = c(str);
            if (nVarC != null) {
                return nVarC.a(i, z) != null;
            }
            return false;
        } catch (Exception e) {
            if (!com.anythink.expressad.a.a) {
                return false;
            }
            e.printStackTrace();
            return false;
        }
    }

    public final boolean a(String str, boolean z, int i, boolean z3, int i2, List<com.anythink.expressad.foundation.d.c> list) {
        return b(str, z, i, z3, i2, list);
    }

    public final List<c> b(String str) {
        Map<String, List<c>> map = this.h;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.h.get(str);
    }

    public final void b() {
        this.d = false;
        ConcurrentHashMap<String, n> concurrentHashMap = this.e;
        if (concurrentHashMap != null) {
            Iterator<Map.Entry<String, n>> it = concurrentHashMap.entrySet().iterator();
            while (it.hasNext()) {
                n value = it.next().getValue();
                if (value != null) {
                    value.c();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(String str, boolean z, int i, boolean z3, int i2, List<com.anythink.expressad.foundation.d.c> list) {
        n nVarC;
        com.anythink.expressad.foundation.d.c cVar;
        boolean z4 = false;
        if (list != null) {
            try {
                if (list.size() != 0 && (nVarC = c(str)) != null) {
                    List<c> listA = nVarC.a(z, list);
                    if (listA != null && listA.size() != 0) {
                        if (z3) {
                            boolean z5 = list.size() > 0 && (cVar = list.get(0)) != null && cVar.aB() != null && cVar.aB().size() > 0 && cVar.aB().contains(0);
                            try {
                                if (i2 == 0) {
                                    ArrayList arrayList = new ArrayList();
                                    for (c cVar2 : listA) {
                                        for (com.anythink.expressad.foundation.d.c cVar3 : list) {
                                            if (cVar2 != null && cVar2.n() != null && cVar3 != null && cVar3.aZ().equals(cVar2.n().aZ()) && cVar3.Z().equals(cVar2.n().Z())) {
                                                arrayList.add(cVar2);
                                            }
                                        }
                                    }
                                    z4 = arrayList.size() > 0 ? true : z5;
                                } else {
                                    ArrayList arrayList2 = new ArrayList();
                                    for (c cVar4 : listA) {
                                        for (com.anythink.expressad.foundation.d.c cVar5 : list) {
                                            if (cVar4 != null && cVar4.n() != null && cVar5 != null && cVar5.aZ().equals(cVar4.n().aZ()) && cVar5.Z().equals(cVar4.n().Z())) {
                                                arrayList2.add(cVar4);
                                            }
                                        }
                                    }
                                    if (arrayList2.size() >= i) {
                                    }
                                }
                            } catch (Exception e) {
                                e = e;
                                z4 = z5;
                                if (com.anythink.expressad.a.a) {
                                    e.printStackTrace();
                                }
                            }
                        } else {
                            ArrayList arrayList3 = new ArrayList();
                            for (c cVar6 : listA) {
                                for (com.anythink.expressad.foundation.d.c cVar7 : list) {
                                    if (cVar6 != null && cVar6.n() != null && cVar7 != null && cVar7.aZ().equals(cVar6.n().aZ()) && cVar7.Z().equals(cVar6.n().Z())) {
                                        arrayList3.add(cVar6);
                                    }
                                }
                            }
                            if (arrayList3.size() > 0) {
                            }
                        }
                    }
                    if (z4) {
                        Map<String, List<Map<String, c>>> map = this.f;
                        if (map == null) {
                            this.f = new HashMap();
                        } else if (map.containsKey(str)) {
                            this.f.remove(str);
                        }
                        Map<String, List<c>> map2 = this.h;
                        if (map2 == null) {
                            this.h = new HashMap();
                        } else if (map2.containsKey(str)) {
                            this.h.remove(str);
                        }
                        Map<String, List<com.anythink.expressad.foundation.d.c>> map3 = this.g;
                        if (map3 == null) {
                            this.g = new HashMap();
                        } else if (map3.containsKey(str)) {
                            this.g.remove(str);
                        }
                        if (listA != null && listA.size() > 0) {
                            ArrayList arrayList4 = new ArrayList();
                            ArrayList arrayList5 = new ArrayList();
                            ArrayList arrayList6 = new ArrayList();
                            for (c cVar8 : listA) {
                                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                                com.anythink.expressad.foundation.d.c cVarN = cVar8.n();
                                concurrentHashMap.put(cVarN.aZ() + cVarN.S() + cVarN.B(), cVar8);
                                arrayList4.add(concurrentHashMap);
                                arrayList5.add(cVarN);
                                arrayList6.add(cVar8);
                            }
                            this.f.put(str, arrayList4);
                            this.g.put(str, arrayList5);
                            this.h.put(str, arrayList6);
                        }
                    }
                }
            } catch (Exception e2) {
                e = e2;
            }
        }
        return z4;
    }

    public final n c(String str) {
        ConcurrentHashMap<String, n> concurrentHashMap = this.e;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str)) {
            return null;
        }
        return this.e.get(str);
    }

    public final void c() {
        ConcurrentHashMap<String, n> concurrentHashMap = this.e;
        if (concurrentHashMap != null) {
            for (Map.Entry<String, n> entry : concurrentHashMap.entrySet()) {
                n value = entry.getValue();
                String key = entry.getKey();
                try {
                    com.anythink.expressad.videocommon.e.d dVarA = com.anythink.expressad.videocommon.e.c.a().a(com.anythink.expressad.foundation.b.a.c().f(), key);
                    if (dVarA != null) {
                        if (dVarA.F() == 2) {
                            value.c();
                        } else {
                            value.a();
                        }
                    }
                } catch (Exception e) {
                    e.getMessage();
                    try {
                        if (!TextUtils.isEmpty(key)) {
                            com.anythink.expressad.d.b.a();
                            com.anythink.expressad.d.c cVarC = com.anythink.expressad.d.b.c(com.anythink.expressad.foundation.b.a.c().f(), key);
                            if (cVarC == null) {
                                cVarC = com.anythink.expressad.d.c.d(key);
                            }
                            if (cVarC.m() == 2) {
                                value.c();
                            } else {
                                value.a();
                            }
                        }
                    } catch (Exception e2) {
                        e2.getMessage();
                    }
                }
            }
        }
    }

    public final void d(String str) {
        n nVarC = c(str);
        if (nVarC != null) {
            nVarC.a();
        }
    }
}
