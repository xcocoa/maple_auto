package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends com.anythink.core.common.c.a<com.anythink.core.common.a.g> {
    private static volatile e c;
    private final String b;

    public static class a {
        public static final String a = "dsp_offer_install_record";
        public static final String b = "dsp_id";
        public static final String c = "dsp_offer_id";
        public static final String d = "package_name";
        public static final String e = "last_update_time";
        public static final String f = "CREATE TABLE IF NOT EXISTS dsp_offer_install_record(dsp_id TEXT ,dsp_offer_id TEXT ,package_name TEXT ,last_update_time INTEGER)";
    }

    private e(b bVar) {
        super(bVar);
        this.b = e.class.getName();
    }

    public static e a(b bVar) {
        if (c == null) {
            synchronized (e.class) {
                if (c == null) {
                    c = new e(bVar);
                }
            }
        }
        return c;
    }

    private synchronized List<com.anythink.core.common.a.g> a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        com.anythink.core.common.a.g gVar = new com.anythink.core.common.a.g();
                        gVar.a(cursor.getString(cursor.getColumnIndex("dsp_id")));
                        gVar.b(cursor.getString(cursor.getColumnIndex("dsp_offer_id")));
                        gVar.c(cursor.getString(cursor.getColumnIndex("package_name")));
                        arrayList.add(gVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0036 A[Catch: all -> 0x004a, PHI: r1
      0x0036: PHI (r1v5 android.database.Cursor) = 
      (r1v2 android.database.Cursor)
      (r1v3 android.database.Cursor)
      (r1v4 android.database.Cursor)
      (r1v6 android.database.Cursor)
     binds: [B:17:0x0034, B:21:0x003d, B:27:0x0047, B:15:0x0031] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:10:0x0028, B:18:0x0036, B:25:0x0043, B:26:0x0046, B:20:0x003a), top: B:34:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized boolean a(String str, String str2) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = a().query(a.a, null, "dsp_id = ?  AND dsp_offer_id = ? ", new String[]{str, str2}, null, null, null);
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
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized long a(com.anythink.core.common.a.g gVar) {
        if (b() == null) {
            return -1L;
        }
        if (a(gVar.a(), gVar.b())) {
            StringBuilder sb = new StringBuilder("insertDspOfferInstallRecord--had inserted...,dspid:");
            sb.append(gVar.a());
            sb.append(",dspoferrId:");
            sb.append(gVar.b());
            sb.append(",packagename:");
            sb.append(gVar.c());
        } else {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("dsp_id", gVar.a());
                contentValues.put("dsp_offer_id", gVar.b());
                contentValues.put("package_name", gVar.c());
                contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                StringBuilder sb2 = new StringBuilder("insertDspOfferInstallRecord--insert,dspid:");
                sb2.append(gVar.a());
                sb2.append(",dspoferrId:");
                sb2.append(gVar.b());
                sb2.append(",packagename:");
                sb2.append(gVar.c());
                return b().insert(a.a, null, contentValues);
            } catch (Exception unused) {
            }
        }
        return -1L;
    }

    public final synchronized List<com.anythink.core.common.a.f> a(int i) {
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            return arrayList;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = a().query(a.a, null, null, null, null, null, "last_update_time DESC", String.valueOf(i));
                List<com.anythink.core.common.a.g> listA = a(cursorQuery);
                cursorQuery.close();
                new StringBuilder("get limit install record list size:").append(listA.size());
                arrayList.addAll(listA);
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
        return arrayList;
    }
}
