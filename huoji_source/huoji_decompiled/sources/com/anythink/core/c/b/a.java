package com.anythink.core.c.b;

import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    public e b;
    private final String c = a.class.getSimpleName();
    public Map<String, com.anythink.core.c.a.c> a = new ConcurrentHashMap();

    public a(e eVar) {
        this.b = eVar;
    }

    private com.anythink.core.c.a.d a(String str, int i, com.anythink.core.d.d dVar) {
        com.anythink.core.c.a.c cVar = this.a.get(str);
        int i2 = dVar.a() == 1 ? i : -1;
        if (cVar == null || !cVar.b(dVar) || cVar.a(i2) == null) {
            StringBuilder sb = new StringBuilder("getRecentHighestLoadedPrice::startegy has been changed::segmentId:");
            sb.append(i2);
            sb.append(":::start to query SQL.");
            cVar = new com.anythink.core.c.a.c();
            cVar.a(dVar);
            int iC = dVar.c();
            long jCurrentTimeMillis = System.currentTimeMillis() - (((long) (((dVar.b() * 24) * 60) * 60)) * 1000);
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(jCurrentTimeMillis);
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            cVar.a(i2, this.b.a(str, i2, calendar.getTimeInMillis(), iC));
            this.a.put(str, cVar);
        } else {
            cVar.c(i);
        }
        return cVar.b(i2);
    }

    private List<com.anythink.core.c.a.a> a(String str, int i, com.anythink.core.d.d dVar, int i2) {
        long jCurrentTimeMillis = System.currentTimeMillis() - (((long) (((dVar.b() * 24) * 60) * 60)) * 1000);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(jCurrentTimeMillis);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        return this.b.a(str, i, calendar.getTimeInMillis(), i2);
    }

    private void a(String str, com.anythink.core.c.a.a aVar) {
        com.anythink.core.c.a.c cVar = this.a.get(str);
        StringBuilder sb = new StringBuilder("insertOrUpdateLoadedUnitGroupInfo::placementId:");
        sb.append(str);
        sb.append("segmentId:");
        sb.append(aVar.a());
        sb.append(":::");
        sb.append(aVar);
        if (cVar != null) {
            cVar.a(aVar);
        }
    }
}
