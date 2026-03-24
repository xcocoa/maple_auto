package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.f.w;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class h extends com.anythink.core.common.c.a<w> {
    private static final String b = "com.anythink.core.common.c.h";
    private static volatile h c;
    private int d;

    public static class a {
        public static final String a = "inspect_info";
        public static final String b = "inspect_id";
        public static final String c = "update_time";
        public static final String d = "CREATE TABLE IF NOT EXISTS inspect_info(inspect_id TEXT, update_time INTEGER )";
    }

    private h(b bVar) {
        super(bVar);
        this.d = com.anythink.expressad.d.b.b;
    }

    public static h a(b bVar) {
        if (c == null) {
            synchronized (h.class) {
                if (c == null) {
                    c = new h(bVar);
                }
            }
        }
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[Catch: all -> 0x003e, PHI: r1
      0x003a: PHI (r1v2 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v3 android.database.Cursor) binds: [B:20:0x0038, B:18:0x0035] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:14:0x002e, B:21:0x003a), top: B:30:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean b(String str) {
        if (str == null) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(a.a, new String[]{a.b}, "inspect_id=?", new String[]{str}, null, null, null);
        } catch (Throwable unused) {
            if (cursorQuery != null) {
            }
        }
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized long a(String str) {
        if (b() == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put(a.b, str);
            contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
            if (b(str)) {
                return b().update(a.a, contentValues, "inspect_id = ? ", new String[]{str});
            }
            return b().insert(a.a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003f A[Catch: all -> 0x0053, DONT_GENERATE, PHI: r0 r1
      0x003f: PHI (r0v6 android.database.Cursor) = 
      (r0v2 android.database.Cursor)
      (r0v3 android.database.Cursor)
      (r0v4 android.database.Cursor)
      (r0v9 android.database.Cursor)
     binds: [B:14:0x003d, B:18:0x0046, B:24:0x0050, B:12:0x003a] A[DONT_GENERATE, DONT_INLINE]
      0x003f: PHI (r1v5 long) = (r1v2 long), (r1v3 long), (r1v4 long), (r1v8 long) binds: [B:14:0x003d, B:18:0x0046, B:24:0x0050, B:12:0x003a] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:15:0x003f, B:22:0x004c, B:23:0x004f, B:17:0x0043), top: B:37:0x0004, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void c() {
        Cursor cursorQuery = null;
        long j = -1;
        try {
            try {
                cursorQuery = a().query(a.a, null, null, null, null, null, "update_time DESC", String.valueOf(this.d));
                if (cursorQuery != null && cursorQuery.getCount() >= this.d) {
                    cursorQuery.moveToLast();
                    j = cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"));
                    cursorQuery.close();
                }
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
        }
        if (cursorQuery != null) {
        }
        if (j > 0) {
            try {
                b().delete(a.a, "update_time<?", new String[]{String.valueOf(j)});
            } catch (Throwable unused4) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005d A[Catch: all -> 0x0073, PHI: r1
      0x005d: PHI (r1v6 android.database.Cursor) = 
      (r1v3 android.database.Cursor)
      (r1v4 android.database.Cursor)
      (r1v5 android.database.Cursor)
      (r1v8 android.database.Cursor)
     binds: [B:22:0x005b, B:27:0x0065, B:34:0x0070, B:19:0x0057] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:14:0x004e, B:23:0x005d, B:31:0x006b, B:32:0x006e, B:26:0x0062), top: B:42:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized List<w> d() {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, null, null, null, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        ArrayList arrayList = new ArrayList();
                        while (cursorQuery.moveToNext()) {
                            w wVar = new w();
                            String string = cursorQuery.getString(cursorQuery.getColumnIndex(a.b));
                            long j = cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"));
                            wVar.a(string);
                            wVar.a(j);
                            arrayList.add(wVar);
                        }
                        cursorQuery.close();
                        return arrayList;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                    }
                } catch (OutOfMemoryError unused2) {
                    try {
                        System.gc();
                        if (cursorQuery != null) {
                        }
                    } finally {
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                    }
                } catch (Throwable unused3) {
                    if (cursorQuery != null) {
                    }
                }
            }
        } catch (Exception unused4) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused5) {
            cursorQuery = null;
        } catch (Throwable unused6) {
            cursorQuery = null;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }
}
