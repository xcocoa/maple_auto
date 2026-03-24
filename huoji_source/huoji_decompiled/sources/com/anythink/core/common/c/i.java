package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.f.ad;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class i extends com.anythink.core.common.c.a<i> {
    private static final String b = "com.anythink.core.common.c.i";
    private static i c;

    public static class a {
        public List<ad> a;
        public Map<String, ad> b;
    }

    public static class b {
        public static final String a = "notice_url_fail_info";
        public static final String b = "id";
        public static final String c = "req_type";
        public static final String d = "req_url";
        public static final String e = "req_head";
        public static final String f = "first_fail_time";
        public static final String g = "offer_out_date_time";
        public static final String h = "retry_count";
        public static final String i = "CREATE TABLE IF NOT EXISTS notice_url_fail_info(id TEXT, req_type INTEGER, req_url TEXT, req_head TEXT, first_fail_time INTEGER, offer_out_date_time INTEGER, retry_count INTEGER )";
    }

    private i(com.anythink.core.common.c.b bVar) {
        super(bVar);
    }

    public static i a(com.anythink.core.common.c.b bVar) {
        if (c == null) {
            synchronized (i.class) {
                if (c == null) {
                    c = new i(bVar);
                }
            }
        }
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0035 A[PHI: r11
      0x0035: PHI (r11v3 android.database.Cursor) = (r11v2 android.database.Cursor), (r11v4 android.database.Cursor) binds: [B:15:0x0033, B:12:0x002f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean a(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(b.a, new String[]{"id"}, "id=?", new String[]{str}, "id", null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.close();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return true;
                    }
                } catch (Throwable unused) {
                    if (cursorQuery != null) {
                    }
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    private synchronized void d() {
        try {
            if (b() == null) {
                return;
            }
            b().delete(b.a, null, null);
        } catch (Exception unused) {
        }
    }

    public final synchronized long a(ad adVar) {
        if (b() == null || adVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", adVar.a);
            contentValues.put("req_type", Integer.valueOf(adVar.b));
            contentValues.put("req_url", adVar.d);
            contentValues.put("req_head", adVar.c);
            contentValues.put(b.f, Long.valueOf(adVar.e));
            contentValues.put(b.g, Long.valueOf(adVar.f));
            contentValues.put(b.h, Integer.valueOf(adVar.g));
            if (a(adVar.a)) {
                return b().update(b.a, contentValues, "id = ? ", new String[]{adVar.a});
            }
            return b().insert(b.a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized int b(ad adVar) {
        if (b() == null || adVar == null) {
            return -1;
        }
        try {
            return b().delete(b.a, "id=?", new String[]{adVar.a});
        } catch (Throwable unused) {
            return -1;
        }
    }

    public final synchronized a c() {
        a aVar = new a();
        List<ad> listSynchronizedList = Collections.synchronizedList(new ArrayList(8));
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(8);
        aVar.a = listSynchronizedList;
        aVar.b = concurrentHashMap;
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = a().query(b.a, null, null, null, null, null, b.f);
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
        } catch (OutOfMemoryError unused2) {
            System.gc();
            if (cursorQuery != null) {
            }
        } catch (Throwable unused3) {
            if (cursorQuery != null) {
            }
        }
        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
            if (cursorQuery != null) {
            }
            return aVar;
        }
        ArrayList<ad> arrayList = new ArrayList(4);
        while (cursorQuery.moveToNext()) {
            ad adVar = new ad();
            adVar.a = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
            adVar.b = cursorQuery.getInt(cursorQuery.getColumnIndex("req_type"));
            adVar.d = cursorQuery.getString(cursorQuery.getColumnIndex("req_url"));
            adVar.c = cursorQuery.getString(cursorQuery.getColumnIndex("req_head"));
            adVar.e = cursorQuery.getLong(cursorQuery.getColumnIndex(b.f));
            adVar.f = cursorQuery.getLong(cursorQuery.getColumnIndex(b.g));
            adVar.g = cursorQuery.getInt(cursorQuery.getColumnIndex(b.h));
            if (System.currentTimeMillis() < adVar.f) {
                listSynchronizedList.add(adVar);
                concurrentHashMap.put(adVar.a, adVar);
            } else {
                arrayList.add(adVar);
            }
        }
        cursorQuery.close();
        if (arrayList.size() > 0) {
            for (ad adVar2 : arrayList) {
                new StringBuilder("delete out date-- ").append(adVar2.a());
                b(adVar2);
            }
        }
        return aVar;
        cursorQuery.close();
        return aVar;
    }
}
