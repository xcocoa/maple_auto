package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.f.as;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class d extends com.anythink.core.common.c.a<as> {
    private static final String b = "com.anythink.core.common.c.d";
    private static volatile d c;

    public static class a {
        public static final String a = "sdkconfig";
        public static final String b = "key";
        public static final String c = "type";
        public static final String d = "value";
        public static final String e = "lastupdatetime";
        public static final String f = "CREATE TABLE IF NOT EXISTS sdkconfig(key TEXT ,type TEXT ,lastupdatetime TEXT ,value TEXT )";
    }

    private d(b bVar) {
        super(bVar);
    }

    private synchronized long a(as asVar) {
        if (b() == null || asVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("key", asVar.b());
            contentValues.put("type", asVar.c());
            contentValues.put("value", asVar.d());
            contentValues.put(a.e, asVar.a());
            if (b(asVar.b(), asVar.a(), asVar.c())) {
                return b().update(a.a, contentValues, "key = ? AND type = ? AND lastupdatetime = ?  ", new String[]{asVar.b(), asVar.c(), asVar.a()});
            }
            return b().insert(a.a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static d a(b bVar) {
        if (c == null) {
            synchronized (d.class) {
                if (c == null) {
                    c = new d(bVar);
                }
            }
        }
        return c;
    }

    private synchronized List<as> a(Cursor cursor) {
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    as asVar = new as();
                    asVar.b(cursor.getString(cursor.getColumnIndex("key")));
                    asVar.c(cursor.getString(cursor.getColumnIndex("type")));
                    asVar.d(cursor.getString(cursor.getColumnIndex("value")));
                    asVar.a(cursor.getString(cursor.getColumnIndex(a.e)));
                    arrayList.add(asVar);
                }
                cursor.close();
                return arrayList;
            }
        }
        return null;
    }

    private synchronized void a(String str) {
        try {
            if (b() == null) {
                return;
            }
            b().delete(a.a, "lastupdatetime< ? and type = ?", new String[]{str, as.a.a});
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031 A[Catch: all -> 0x0040, PHI: r10
      0x0031: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:13:0x0028, B:17:0x002f, B:24:0x003d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {, blocks: (B:7:0x001e, B:18:0x0031, B:21:0x0038, B:22:0x003b, B:16:0x002c), top: B:32:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized List<as> b(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, "type = ?", new String[]{str}, null, null, null);
        } catch (Exception unused) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused2) {
            cursorQuery = null;
        } catch (Throwable unused3) {
            cursorQuery = null;
        }
        try {
            return a(cursorQuery);
        } catch (Exception unused4) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (OutOfMemoryError unused5) {
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
        } catch (Throwable unused6) {
            if (cursorQuery != null) {
            }
            return null;
        }
    }

    private synchronized boolean b(String str, String str2) {
        Cursor cursorQuery = a().query(a.a, new String[]{"key"}, "key=? AND type=?", new String[]{str, str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    private synchronized boolean b(String str, String str2, String str3) {
        Cursor cursorQuery = a().query(a.a, new String[]{"key"}, "key=? AND type=? AND lastupdatetime=?", new String[]{str, str3, str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037 A[Catch: all -> 0x0046, PHI: r10
      0x0037: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:13:0x002e, B:17:0x0035, B:24:0x0043] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #1 {, blocks: (B:7:0x0024, B:18:0x0037, B:21:0x003e, B:22:0x0041, B:16:0x0032), top: B:32:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized List<as> c(String str, String str2, String str3) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, "key = ? and type = ? and lastupdatetime = ?", new String[]{str, str3, str2}, null, null, null);
            try {
                return a(cursorQuery);
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
        } catch (Exception unused4) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused5) {
            cursorQuery = null;
        } catch (Throwable unused6) {
            cursorQuery = null;
        }
    }

    private synchronized void c(String str, String str2) {
        List<as> listC = c(str, str2, as.a.a);
        if (listC == null || listC.size() <= 0) {
            as asVar = new as();
            asVar.a(str2);
            asVar.d("1");
            asVar.c(as.a.a);
            asVar.b(str);
            a(asVar);
            return;
        }
        for (as asVar2 : listC) {
            StringBuilder sb = new StringBuilder();
            sb.append(Integer.parseInt(asVar2.d()) + 1);
            asVar2.d(sb.toString());
            a(asVar2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034 A[Catch: all -> 0x0043, PHI: r10
      0x0034: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:13:0x002b, B:17:0x0032, B:24:0x0040] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #1 {, blocks: (B:7:0x0021, B:18:0x0034, B:21:0x003b, B:22:0x003e, B:16:0x002f), top: B:32:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized List<as> d(String str, String str2) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, "key != ? and type = ?", new String[]{str, str2}, null, null, null);
        } catch (Exception unused) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused2) {
            cursorQuery = null;
        } catch (Throwable unused3) {
            cursorQuery = null;
        }
        try {
            return a(cursorQuery);
        } catch (Exception unused4) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (OutOfMemoryError unused5) {
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
        } catch (Throwable unused6) {
            if (cursorQuery != null) {
            }
            return null;
        }
    }

    public final synchronized long a(String str, String str2, String str3) {
        if (b() == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("key", str);
            contentValues.put("type", str3);
            contentValues.put("value", str2);
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis());
            contentValues.put(a.e, sb.toString());
            if (b(str, str3)) {
                return b().update(a.a, contentValues, "key = ? AND type = ?", new String[]{str, str3});
            }
            return b().insert(a.a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0034 A[Catch: all -> 0x0043, PHI: r10
      0x0034: PHI (r10v7 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v6 android.database.Cursor), (r10v8 android.database.Cursor) binds: [B:13:0x002b, B:17:0x0032, B:24:0x0040] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #1 {, blocks: (B:7:0x0021, B:18:0x0034, B:21:0x003b, B:22:0x003e, B:16:0x002f), top: B:32:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized List<as> a(String str, String str2) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, "key = ? and type = ?", new String[]{str, str2}, null, null, null);
        } catch (Exception unused) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused2) {
            cursorQuery = null;
        } catch (Throwable unused3) {
            cursorQuery = null;
        }
        try {
            return a(cursorQuery);
        } catch (Exception unused4) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (OutOfMemoryError unused5) {
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
        } catch (Throwable unused6) {
            if (cursorQuery != null) {
            }
            return null;
        }
    }
}
