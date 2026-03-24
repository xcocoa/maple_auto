package com.anythink.core.c.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.anythink.core.common.b.n;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.anythink.core.common.c.a<com.anythink.core.c.a.a> {
    private static final String b = "PlacementStatisticsDao";
    private static final int c = 50;
    private static volatile e d;

    public static class a {
        public static final String a = "user_value_placement";
        public static final String b = "type";
        public static final String c = "placement_id";
        public static final String d = "request_id";
        public static final String e = "network_firm_id";
        public static final String f = "ad_source_id";
        public static final String g = "dsp_id";
        public static final String h = "price";
        public static final String i = "record_time";
        public static final String j = "ps_id";
        public static final String k = "segment_id";
        public static final String l = "CREATE TABLE IF NOT EXISTS user_value_placement(type INTEGER, placement_id TEXT, request_id TEXT, network_firm_id INTEGER, ad_source_id TEXT, dsp_id TEXT, price DOUBLE, record_time INTEGER, ps_id TEXT )";
        public static final String m = "ALTER TABLE user_value_placement ADD COLUMN segment_id INTEGER";
        public static final String n = "CREATE INDEX placement_id ON user_value_placement (placement_id)";
    }

    private e(com.anythink.core.common.c.b bVar) {
        super(bVar);
    }

    private static com.anythink.core.c.a.a a(Cursor cursor) {
        com.anythink.core.c.a.a aVar = new com.anythink.core.c.a.a();
        int i = cursor.getInt(cursor.getColumnIndexOrThrow("type"));
        String string = cursor.getString(cursor.getColumnIndexOrThrow("placement_id"));
        String string2 = cursor.getString(cursor.getColumnIndexOrThrow("request_id"));
        int i2 = cursor.getInt(cursor.getColumnIndexOrThrow("network_firm_id"));
        String string3 = cursor.getString(cursor.getColumnIndexOrThrow("ad_source_id"));
        String string4 = cursor.getString(cursor.getColumnIndexOrThrow("dsp_id"));
        double d2 = cursor.getDouble(cursor.getColumnIndexOrThrow("price"));
        long j = cursor.getLong(cursor.getColumnIndexOrThrow(a.i));
        String string5 = cursor.getString(cursor.getColumnIndexOrThrow("ps_id"));
        int i3 = cursor.getInt(cursor.getColumnIndexOrThrow("segment_id"));
        aVar.c(i);
        aVar.e(string);
        aVar.a(string2);
        aVar.b(i2);
        aVar.b(string3);
        aVar.c(string4);
        aVar.a(d2);
        aVar.a(j);
        aVar.d(string5);
        aVar.a(i3);
        return aVar;
    }

    private boolean a(String str, String str2, int i) {
        Cursor cursorQuery = a().query(a.a, new String[]{"placement_id", "request_id"}, "placement_id=? AND request_id=? AND type=?", new String[]{str, str2, String.valueOf(i)}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public static e c() {
        if (d == null) {
            synchronized (e.class) {
                if (d == null) {
                    d = new e(com.anythink.core.common.c.c.a(n.a().f()));
                }
            }
        }
        return d;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0063 A[Catch: all -> 0x0067, TRY_ENTER, TryCatch #1 {, blocks: (B:10:0x0043, B:21:0x005a, B:27:0x0063, B:28:0x0066), top: B:32:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized List<com.anythink.core.c.a.a> a(int i, String str, int i2) {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            ArrayList arrayList = new ArrayList();
            cursorQuery = a().query(a.a, null, "type = ? AND placement_id = ?", new String[]{String.valueOf(i), str}, null, null, "record_time DESC", String.valueOf(i2));
            while (cursorQuery.moveToNext()) {
                try {
                    try {
                        arrayList.add(a(cursorQuery));
                    } catch (Exception e) {
                        e = e;
                        e.getMessage();
                        Thread.currentThread().getName();
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            arrayList.size();
            Thread.currentThread().getId();
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return arrayList;
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
            }
            throw th;
        }
    }

    public final synchronized List<com.anythink.core.c.a.a> a(String str, int i, long j, int i2) {
        ArrayList arrayList;
        String str2;
        String[] strArr;
        arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                if (i == -1) {
                    str2 = "placement_id = ? AND record_time > ? AND price > ?";
                    strArr = new String[]{str, String.valueOf(j), "0"};
                } else {
                    str2 = "placement_id = ? AND segment_id = ? AND record_time > ? AND price > ?";
                    strArr = new String[]{str, String.valueOf(i), String.valueOf(j), "0"};
                }
                cursorQuery = a().query(a.a, null, str2, strArr, null, null, null, String.valueOf(i2));
                while (cursorQuery.moveToNext()) {
                    arrayList.add(a(cursorQuery));
                    Thread.currentThread().getName();
                }
            } catch (Exception e) {
                e.getMessage();
                Thread.currentThread().getName();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return arrayList;
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return arrayList;
    }

    public final synchronized void a(com.anythink.core.c.a.a aVar) {
        String strJ;
        String strB;
        SQLiteDatabase sQLiteDatabaseB;
        ContentValues contentValues;
        boolean z;
        int iK = aVar.k();
        Cursor cursor = null;
        try {
            try {
                strJ = aVar.j();
                strB = aVar.b();
                sQLiteDatabaseB = b();
                contentValues = new ContentValues();
                contentValues.put("type", Integer.valueOf(iK));
                contentValues.put("placement_id", strJ);
                contentValues.put("request_id", strB);
                contentValues.put("ad_source_id", aVar.d());
                contentValues.put("network_firm_id", Integer.valueOf(aVar.c()));
                contentValues.put("dsp_id", aVar.e());
                contentValues.put("price", Double.valueOf(aVar.f()));
                contentValues.put(a.i, Long.valueOf(aVar.g()));
                contentValues.put("ps_id", aVar.h());
                contentValues.put("segment_id", Integer.valueOf(aVar.a()));
                Cursor cursorQuery = a().query(a.a, new String[]{"placement_id", "request_id"}, "placement_id=? AND request_id=? AND type=?", new String[]{strJ, strB, String.valueOf(iK)}, null, null, null);
                if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    z = false;
                } else {
                    cursorQuery.close();
                    z = true;
                }
            } catch (Exception e) {
                e = e;
            }
            if (z) {
                b().update(a.a, contentValues, "placement_id = ? AND request_id = ? AND type = ?", new String[]{strJ, strB, String.valueOf(iK)});
                return;
            }
            Cursor cursorQuery2 = sQLiteDatabaseB.query(a.a, new String[]{a.i}, "type = ? AND placement_id = ?", new String[]{String.valueOf(iK), strJ}, null, null, "record_time ASC");
            try {
                if (cursorQuery2.getCount() > 50) {
                    long j = cursorQuery2.moveToNext() ? cursorQuery2.getLong(cursorQuery2.getColumnIndexOrThrow(a.i)) : 0L;
                    if (j != 0) {
                        sQLiteDatabaseB.delete(a.a, "record_time = ?", new String[]{String.valueOf(j)});
                    }
                }
                sQLiteDatabaseB.insertOrThrow(a.a, null, contentValues);
                Thread.currentThread().getName();
                if (cursorQuery2 != null) {
                    cursorQuery2.close();
                }
            } catch (Exception e2) {
                e = e2;
                cursor = cursorQuery2;
                e.getMessage();
                Thread.currentThread().getName();
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final synchronized void a(String str) {
        try {
            b().delete(a.a, "placement_id = ?", new String[]{str});
        } catch (Exception e) {
            e.getMessage();
            Thread.currentThread().getName();
        }
    }

    public final synchronized double[] a(String[] strArr, String str) {
        double[] dArr;
        Cursor cursorQuery = null;
        dArr = new double[2];
        try {
            try {
                cursorQuery = a().query(str, strArr, null, null, null, null, null, null);
                if (cursorQuery.moveToNext()) {
                    dArr[0] = cursorQuery.getDouble(0);
                    dArr[1] = cursorQuery.getInt(1);
                }
            } catch (Exception e) {
                e.getMessage();
                Thread.currentThread().getName();
                if (cursorQuery != null) {
                }
            }
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
        return dArr;
    }
}
