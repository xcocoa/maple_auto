package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.anythink.core.common.b.n;
import com.anythink.core.common.f.ag;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.r;

/* JADX INFO: loaded from: classes.dex */
public class k extends com.anythink.core.common.c.a<com.anythink.core.common.a.j> {
    private static volatile k c;
    private final String b;

    public static class a {
        public static final String a = "offer_data_cache";
        public static final String b = "placement_id";
        public static final String c = "bid_id";
        public static final String d = "adsource_id";
        public static final String e = "network_firm_id";
        public static final String f = "bid_result";
        public static final String g = "offer_data";
        public static final String h = "out_date_timestamp";
        public static final String i = "CREATE TABLE IF NOT EXISTS offer_data_cache(placement_id TEXT ,bid_id TEXT ,adsource_id TEXT ,network_firm_id INTEGER ,bid_result TEXT ,offer_data TEXT ,out_date_timestamp INTEGER)";
    }

    private k(b bVar) {
        super(bVar);
        this.b = k.class.getName();
    }

    public static k a(b bVar) {
        if (c == null) {
            synchronized (k.class) {
                if (c == null) {
                    c = new k(bVar);
                }
            }
        }
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[Catch: all -> 0x003a, PHI: r11
      0x0036: PHI (r11v4 android.database.Cursor) = (r11v3 android.database.Cursor), (r11v5 android.database.Cursor) binds: [B:17:0x0034, B:14:0x0030] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:10:0x0029, B:18:0x0036), top: B:27:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean d(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, new String[]{a.g}, "bid_id=?", new String[]{str}, null, null, null);
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

    public final synchronized int a(q qVar) {
        if (d(qVar.token)) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put(a.f, qVar.b());
                return b().update(a.a, contentValues, "bid_id = ? ", new String[]{qVar.token});
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    public final synchronized long a(String str, q qVar) {
        if (b() == null || qVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("placement_id", str);
            contentValues.put("adsource_id", qVar.k);
            contentValues.put("network_firm_id", Integer.valueOf(qVar.d));
            contentValues.put(a.c, qVar.token);
            contentValues.put(a.f, qVar.b());
            contentValues.put(a.h, Long.valueOf(qVar.f));
            if (!TextUtils.isEmpty(qVar.i)) {
                contentValues.put(a.g, qVar.i);
            }
            if (d(qVar.token)) {
                new StringBuilder("OfferDataCache update BidId:").append(qVar.token);
                return b().update(a.a, contentValues, "bid_id = ? ", new String[]{qVar.token});
            }
            StringBuilder sb = new StringBuilder("OfferDataCache insert BidId:");
            sb.append(qVar.token);
            sb.append(",adSourceId:");
            sb.append(qVar.k);
            return b().insert(a.a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized long a(String str, String str2, String str3) {
        if (b() == null) {
            return -1L;
        }
        try {
            new ContentValues().put(a.g, str3);
            if (d(str2)) {
                return b().update(a.a, r0, "bid_id = ? ", new String[]{str2});
            }
            StringBuilder sb = new StringBuilder("OfferDataCache insert BidId:");
            sb.append(str2);
            sb.append(",adSourceId:");
            sb.append(str);
            return -1L;
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized void a(String str) {
        try {
            b().delete(a.a, "bid_id = ? ", new String[]{str});
        } catch (Throwable th) {
            com.anythink.core.common.n.e.a("Error_SQL_DELETE", th.getMessage(), n.a().q());
        }
    }

    public final synchronized r b(String str) {
        r rVar;
        rVar = new r();
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(a.a, new String[]{"placement_id", "adsource_id", a.f}, "out_date_timestamp>? AND placement_id=?", new String[]{String.valueOf(System.currentTimeMillis()), str}, null, null, null);
            while (cursorQuery.moveToNext()) {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex("adsource_id"));
                q qVarA = q.a(cursorQuery.getString(cursorQuery.getColumnIndex(a.f)));
                if (qVarA != null) {
                    rVar.a(string, qVarA);
                }
            }
        } catch (Throwable unused) {
        }
        if (cursorQuery != null) {
            try {
                cursorQuery.close();
            } catch (Throwable unused2) {
            }
        }
        return rVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0049 A[Catch: all -> 0x004d, PHI: r12
      0x0049: PHI (r12v4 android.database.Cursor) = (r12v3 android.database.Cursor), (r12v5 android.database.Cursor) binds: [B:17:0x0047, B:14:0x0043] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:10:0x003c, B:18:0x0049), top: B:29:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized ag c(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, new String[]{a.g, a.h}, "bid_id=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToNext();
                        ag agVar = new ag(cursorQuery.getString(0), cursorQuery.getLong(1));
                        cursorQuery.close();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return agVar;
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
        return null;
    }
}
