package com.anythink.core.common.f;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class aw {
    private String c;
    private final String a = "anythink_" + aw.class.getSimpleName();
    private int b = 1;
    private ConcurrentHashMap<String, ar> d = new ConcurrentHashMap<>(3);

    public interface a {
        boolean a(ar arVar);
    }

    public aw(String str, String str2) {
        this.c = str + "_" + str2;
    }

    private synchronized void a() {
        if (this.d.entrySet() == null) {
            return;
        }
        if (this.d.size() < this.b) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.c);
            sb.append(":removeCacheOverLimit::No need to clean over size cache");
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.c);
        sb2.append(":removeCacheOverLimit::try to clean over size cache start.....................");
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.c);
        sb3.append(":removeCacheOverLimit::Current Cache Map:");
        sb3.append(this.d.size());
        final ar[] arVarArr = new ar[1];
        a(new a() { // from class: com.anythink.core.common.f.aw.1
            /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
            @Override // com.anythink.core.common.f.aw.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final boolean a(ar arVar) {
                boolean z;
                ar[] arVarArr2 = arVarArr;
                if (arVarArr2[0] != null) {
                    z = arVar.e() < arVarArr[0].e() || (arVar.e() == arVarArr[0].e() && arVar.f() < arVarArr[0].f());
                    if (z) {
                        arVarArr[0] = arVar;
                    }
                    return true;
                }
                arVarArr2[0] = arVar;
                if (z) {
                }
                return true;
            }
        });
        if (this.d.size() < this.b) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(this.c);
            sb4.append(":removeCacheOverLimit::No need to clean over size cache: check again,current size:");
            sb4.append(this.d.size());
        } else if (arVarArr[0] != null) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(this.c);
            sb5.append(":removeCacheOverLimit::Final to remove&&destory cache RequestId:");
            sb5.append(arVarArr[0].a());
            this.d.remove(arVarArr[0].a());
            arVarArr[0].g();
        }
        StringBuilder sb6 = new StringBuilder();
        sb6.append(this.c);
        sb6.append(":removeCacheOverLimit::try to clean over size cache end.....................");
    }

    private synchronized void a(a aVar) {
        ConcurrentHashMap<String, ar> concurrentHashMap = this.d;
        if (concurrentHashMap == null) {
            return;
        }
        Set<Map.Entry<String, ar>> setEntrySet = concurrentHashMap.entrySet();
        if (setEntrySet == null) {
            return;
        }
        for (Map.Entry<String, ar> entry : setEntrySet) {
            ar value = entry.getValue();
            b bVarC = value.c();
            boolean z = false;
            if (value == null || bVarC == null || !bVarC.j()) {
                StringBuilder sb = new StringBuilder();
                sb.append(this.c);
                sb.append(":traverseVailRequestCacheEntry:RequestId:");
                sb.append(entry.getKey());
                sb.append(" :: Cache is not vail.");
            } else {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(this.c);
                sb2.append(":traverseVailRequestCacheEntry:RequestId:");
                sb2.append(entry.getKey());
                sb2.append(" :: traverseAdCache price::");
                sb2.append(value.e());
                sb2.append("\n");
                sb2.append(bVarC);
                z = true;
                entry.getKey();
                aVar.a(value);
            }
            if (value == null || !z) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(this.c);
                sb3.append(":traverseVailRequestCacheEntry:RequestId:");
                sb3.append(entry.getKey());
                sb3.append(" :: remove requestCacheEntry.");
                this.d.remove(entry.getKey());
            }
        }
    }

    public final f a(final q qVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(":try to getAdSourceCacheStatus start------------------------------------------------|");
        final f fVar = new f();
        final ArrayList arrayList = new ArrayList(3);
        fVar.a = arrayList;
        a(new a() { // from class: com.anythink.core.common.f.aw.2
            @Override // com.anythink.core.common.f.aw.a
            public final boolean a(ar arVar) {
                q qVar2;
                if (!fVar.c && arVar.d()) {
                    fVar.c = true;
                }
                b bVarC = arVar.c();
                if (bVarC != null) {
                    if (arrayList.size() == 0) {
                        arrayList.add(bVarC);
                        q qVarM = bVarC.d().getUnitGroupInfo().M();
                        qVar2 = qVar;
                        if (qVar2 != null && qVarM != null && TextUtils.equals(qVar2.token, qVarM.token)) {
                            fVar.b = bVarC;
                        }
                    } else {
                        int i = 0;
                        while (true) {
                            if (i >= arrayList.size()) {
                                break;
                            }
                            if (com.anythink.core.common.o.h.a(bVarC.d().getUnitGroupInfo()) > com.anythink.core.common.o.h.a(((b) arrayList.get(i)).d().getUnitGroupInfo())) {
                                arrayList.add(i, bVarC);
                                break;
                            }
                            if (i == arrayList.size() - 1) {
                                break;
                            }
                            i++;
                        }
                        q qVarM2 = bVarC.d().getUnitGroupInfo().M();
                        qVar2 = qVar;
                        if (qVar2 != null) {
                            fVar.b = bVarC;
                        }
                    }
                }
                return true;
            }
        });
        return fVar;
    }

    public final void a(int i) {
        if (i <= 0) {
            return;
        }
        this.b = i;
    }

    public final synchronized void a(b bVar) {
        if (this.d == null) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(":try to removeAdCache start.....................");
        if (bVar != null) {
            ar arVar = this.d.get(bVar.h().ai());
            if (arVar != null) {
                arVar.a(bVar);
                if (arVar.b() == 0) {
                    this.d.remove(arVar.a());
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.c);
                    sb2.append(":remove requestCacheEntry:");
                    sb2.append(arVar.a());
                }
            }
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(this.c);
        sb3.append(":try to removeAdCache end.....................");
    }

    public final synchronized void a(String str, ar arVar) {
        a();
        this.d.put(str, arVar);
    }

    public final synchronized void b(final int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        sb.append(":try to refreshSamePriceIndex start.....................");
        a(new a() { // from class: com.anythink.core.common.f.aw.3
            @Override // com.anythink.core.common.f.aw.a
            public final boolean a(ar arVar) {
                arVar.a(i);
                return true;
            }
        });
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.c);
        sb2.append(":try to refreshSamePriceIndex end.....................");
    }
}
