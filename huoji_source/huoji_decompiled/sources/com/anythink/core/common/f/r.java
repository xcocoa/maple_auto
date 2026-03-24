package com.anythink.core.common.f;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class r {
    public HashMap<String, List<q>> a = new HashMap<>(2);

    public final synchronized q a(String str) {
        HashMap<String, List<q>> map = this.a;
        q qVar = null;
        if (map == null) {
            return null;
        }
        List<q> list = map.get(str);
        if (list != null && list.size() != 0) {
            for (q qVar2 : list) {
                StringBuilder sb = new StringBuilder("CacehMotify: Query Adx/Direcyly BiddingCache price:");
                sb.append(qVar2.price);
                sb.append(", AdSourceId:");
                sb.append(qVar2.k);
                if (qVar == null || qVar2.price > qVar.price) {
                    qVar = qVar2;
                }
            }
            if (qVar != null) {
                list.remove(qVar);
                StringBuilder sb2 = new StringBuilder("CacehMotify: Adx/Direcyly BiddingCache Max price:");
                sb2.append(qVar.price);
                sb2.append(", AdSourceId:");
                sb2.append(qVar.k);
            }
            return qVar;
        }
        return null;
    }

    public final synchronized void a(String str, q qVar) {
        List<q> arrayList = this.a.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.a.put(str, arrayList);
        }
        arrayList.add(qVar);
    }
}
