package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import com.anythink.core.common.f.ao;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class l extends com.anythink.core.common.c.a<ao> {
    private static volatile l c;
    private final String b;

    public static class a {
        public static final String a = "placement_ad_impression";
        public static final String b = "format";
        public static final String c = "placement_id";
        public static final String d = "adsource_id";
        public static final String e = "hour_time";
        public static final String f = "hour_imp";
        public static final String g = "date_time";
        public static final String h = "date_imp";
        public static final String i = "show_time";
        public static final String j = "CREATE TABLE IF NOT EXISTS placement_ad_impression(format INTEGER ,placement_id TEXT ,adsource_id TEXT ,hour_time TEXT ,hour_imp INTEGER ,date_time TEXT ,date_imp INTEGER , show_time INTEGER)";
    }

    private l(b bVar) {
        super(bVar);
        this.b = l.class.getName();
    }

    public static l a(b bVar) {
        if (c == null) {
            synchronized (l.class) {
                if (c == null) {
                    c = new l(bVar);
                }
            }
        }
        return c;
    }

    private static ao a(Cursor cursor, String str, String str2) {
        if (cursor == null || cursor.getCount() <= 0) {
            return null;
        }
        ao aoVar = new ao();
        aoVar.h = new ConcurrentHashMap<>();
        while (cursor.moveToNext()) {
            aoVar.a = cursor.getInt(cursor.getColumnIndex("format"));
            aoVar.b = cursor.getString(cursor.getColumnIndex("placement_id"));
            ao.a aVar = new ao.a();
            aVar.a = cursor.getString(cursor.getColumnIndex("adsource_id"));
            aVar.b = cursor.getString(cursor.getColumnIndex(a.e));
            aVar.c = cursor.getString(cursor.getColumnIndex(a.g));
            if (TextUtils.equals(aVar.b, str2)) {
                aVar.e = cursor.getInt(cursor.getColumnIndex(a.f));
            } else {
                aVar.e = 0;
            }
            aoVar.d += aVar.e;
            if (TextUtils.equals(aVar.c, str)) {
                aVar.d = cursor.getInt(cursor.getColumnIndex(a.h));
            } else {
                aVar.d = 0;
            }
            aoVar.c += aVar.d;
            long j = cursor.getLong(cursor.getColumnIndex("show_time"));
            aVar.f = j;
            if (j >= aoVar.e) {
                aoVar.e = j;
            }
            aoVar.h.put(aVar.a, aVar);
        }
        return aoVar;
    }

    private boolean b(String str) {
        Cursor cursorQuery = a().query(a.a, new String[]{"adsource_id"}, "adsource_id=?", new String[]{str}, "adsource_id", null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized long a(int i, String str, ao.a aVar) {
        boolean z;
        if (b() == null || aVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("format", Integer.valueOf(i));
            contentValues.put("placement_id", str);
            contentValues.put("adsource_id", aVar.a);
            contentValues.put(a.e, aVar.b);
            contentValues.put(a.f, Integer.valueOf(aVar.e));
            contentValues.put(a.g, aVar.c);
            contentValues.put(a.h, Integer.valueOf(aVar.d));
            contentValues.put("show_time", Long.valueOf(aVar.f));
            Cursor cursorQuery = a().query(a.a, new String[]{"adsource_id"}, "adsource_id=?", new String[]{aVar.a}, "adsource_id", null, null);
            if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                z = false;
            } else {
                cursorQuery.close();
                z = true;
            }
            if (z) {
                return b().update(a.a, contentValues, "adsource_id = ? ", new String[]{aVar.a});
            }
            return b().insert(a.a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e8 A[Catch: all -> 0x00f7, PHI: r11
      0x00e8: PHI (r11v7 android.database.Cursor) = (r11v5 android.database.Cursor), (r11v6 android.database.Cursor), (r11v8 android.database.Cursor) binds: [B:32:0x00df, B:36:0x00e6, B:43:0x00f4] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {, blocks: (B:28:0x00d9, B:37:0x00e8, B:40:0x00ef, B:41:0x00f2, B:35:0x00e3), top: B:51:0x0002, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized ao a(String str, String str2, String str3) {
        Cursor cursorQuery;
        ao aoVar;
        try {
            cursorQuery = a().query(a.a, null, "placement_id=? AND date_time=?", new String[]{str, str2}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        aoVar = new ao();
                        aoVar.h = new ConcurrentHashMap<>();
                        while (cursorQuery.moveToNext()) {
                            aoVar.a = cursorQuery.getInt(cursorQuery.getColumnIndex("format"));
                            aoVar.b = cursorQuery.getString(cursorQuery.getColumnIndex("placement_id"));
                            ao.a aVar = new ao.a();
                            aVar.a = cursorQuery.getString(cursorQuery.getColumnIndex("adsource_id"));
                            aVar.b = cursorQuery.getString(cursorQuery.getColumnIndex(a.e));
                            aVar.c = cursorQuery.getString(cursorQuery.getColumnIndex(a.g));
                            if (TextUtils.equals(aVar.b, str3)) {
                                aVar.e = cursorQuery.getInt(cursorQuery.getColumnIndex(a.f));
                            } else {
                                aVar.e = 0;
                            }
                            aoVar.d += aVar.e;
                            if (TextUtils.equals(aVar.c, str2)) {
                                aVar.d = cursorQuery.getInt(cursorQuery.getColumnIndex(a.h));
                            } else {
                                aVar.d = 0;
                            }
                            aoVar.c += aVar.d;
                            long j = cursorQuery.getLong(cursorQuery.getColumnIndex("show_time"));
                            aVar.f = j;
                            if (j >= aoVar.e) {
                                aoVar.e = j;
                            }
                            aoVar.h.put(aVar.a, aVar);
                        }
                    } else {
                        aoVar = null;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                } catch (OutOfMemoryError unused2) {
                    try {
                        System.gc();
                        if (cursorQuery != null) {
                        }
                        return null;
                    } finally {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    }
                } catch (Throwable unused3) {
                    if (cursorQuery != null) {
                    }
                    return null;
                }
            }
            cursorQuery.close();
            return aoVar;
        } catch (Exception unused4) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused5) {
            cursorQuery = null;
        } catch (Throwable unused6) {
            cursorQuery = null;
        }
    }

    public final void a(String str) {
        synchronized (this) {
            try {
                String str2 = "date_time!='" + str + "'";
                if (b() == null) {
                } else {
                    b().delete(a.a, str2, null);
                }
            } catch (Exception unused) {
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:3|66|4|5|(4:73|6|(1:10)|(1:16))|(1:18)|71|34|(1:38)|(1:44)|(1:46)|61) */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ac, code lost:
    
        if (r0 != null) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00af, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b0, code lost:
    
        java.lang.System.gc();
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b3, code lost:
    
        if (r1 != null) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b5, code lost:
    
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b9, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c1, code lost:
    
        if (r0 != null) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0087 A[Catch: all -> 0x0097, Exception -> 0x0099, OutOfMemoryError -> 0x00af, TryCatch #7 {Exception -> 0x0099, OutOfMemoryError -> 0x00af, all -> 0x0097, blocks: (B:34:0x0066, B:36:0x0087, B:38:0x008d, B:42:0x009d, B:44:0x00a3), top: B:71:0x0066, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009d A[Catch: all -> 0x0097, Exception -> 0x0099, OutOfMemoryError -> 0x00af, TryCatch #7 {Exception -> 0x0099, OutOfMemoryError -> 0x00af, all -> 0x0097, blocks: (B:34:0x0066, B:36:0x0087, B:38:0x008d, B:42:0x009d, B:44:0x00a3), top: B:71:0x0066, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a8 A[Catch: all -> 0x00c6, PHI: r0
      0x00a8: PHI (r0v12 android.database.Cursor) = (r0v8 android.database.Cursor), (r0v11 android.database.Cursor), (r0v13 android.database.Cursor) binds: [B:48:0x00ac, B:59:0x00c1, B:45:0x00a6] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:18:0x0049, B:46:0x00a8, B:53:0x00b5, B:57:0x00bd, B:58:0x00c0, B:25:0x0056, B:30:0x005f, B:31:0x0062, B:51:0x00b0, B:23:0x0051, B:34:0x0066, B:36:0x0087, B:38:0x008d, B:42:0x009d, B:44:0x00a3, B:6:0x0007, B:8:0x0028, B:10:0x002e, B:14:0x003e, B:16:0x0044), top: B:66:0x0003, inners: #5, #6, #7, #8, #7, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized int[] a(int i, String str, String str2) {
        int[] iArr;
        Cursor cursorQuery = null;
        iArr = new int[2];
        try {
            cursorQuery = a().query(a.a, new String[]{"sum(date_imp)"}, "format=? AND date_time=?", new String[]{String.valueOf(i), str}, null, null, null);
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.moveToNext();
                iArr[0] = cursorQuery.getInt(0);
            }
            if (cursorQuery != null && cursorQuery.getCount() > 0) {
                cursorQuery.close();
            }
        } catch (Exception unused) {
            if (cursorQuery != null) {
            }
            cursorQuery = a().query(a.a, new String[]{"sum(hour_imp)"}, "format=? AND hour_time=?", new String[]{String.valueOf(i), str2}, null, null, null);
            if (cursorQuery != null) {
                cursorQuery.moveToNext();
                iArr[1] = cursorQuery.getInt(0);
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            if (cursorQuery != null) {
            }
            return iArr;
        } catch (OutOfMemoryError unused2) {
            Cursor cursor = cursorQuery;
            try {
                System.gc();
                if (cursor != null) {
                    cursor.close();
                }
                cursorQuery = cursor;
            } finally {
            }
        } catch (Throwable unused3) {
            if (cursorQuery != null) {
            }
            cursorQuery = a().query(a.a, new String[]{"sum(hour_imp)"}, "format=? AND hour_time=?", new String[]{String.valueOf(i), str2}, null, null, null);
            if (cursorQuery != null) {
            }
            if (cursorQuery != null) {
            }
            if (cursorQuery != null) {
            }
            return iArr;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        cursorQuery = a().query(a.a, new String[]{"sum(hour_imp)"}, "format=? AND hour_time=?", new String[]{String.valueOf(i), str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.moveToNext();
            iArr[1] = cursorQuery.getInt(0);
        }
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return iArr;
    }
}
