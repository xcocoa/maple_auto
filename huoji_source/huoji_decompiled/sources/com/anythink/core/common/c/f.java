package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class f extends com.anythink.core.common.c.a<com.anythink.core.common.a.h> {
    private static volatile f d;
    private final String b;
    private final long c;

    public static class a {
        public static final String a = "dsp_offer_show_record";
        public static final String b = "dsp_id";
        public static final String c = "dsp_offer_id";
        public static final String d = "show_limit";
        public static final String e = "show_count";
        public static final String f = "create_time";
        public static final String g = "last_update_time";
        public static final String h = "CREATE TABLE IF NOT EXISTS dsp_offer_show_record(dsp_id TEXT ,dsp_offer_id TEXT ,show_limit INTEGER ,show_count INTEGER ,create_time INTEGER ,last_update_time INTEGER)";
    }

    private f(b bVar) {
        super(bVar);
        this.b = f.class.getName();
        this.c = 86400000L;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[Catch: all -> 0x0055, PHI: r11
      0x003f: PHI (r11v8 android.database.Cursor) = 
      (r11v5 android.database.Cursor)
      (r11v6 android.database.Cursor)
      (r11v7 android.database.Cursor)
      (r11v10 android.database.Cursor)
     binds: [B:17:0x003d, B:22:0x0047, B:29:0x0052, B:12:0x0035] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:9:0x0030, B:18:0x003f, B:26:0x004d, B:27:0x0050, B:21:0x0044), top: B:37:0x0002, inners: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized com.anythink.core.common.a.h a(String str, String str2) {
        Cursor cursorQuery;
        List<com.anythink.core.common.a.h> listA;
        try {
            cursorQuery = a().query(a.a, null, "dsp_id = ?  AND dsp_offer_id = ? ", new String[]{str, str2}, null, null, null);
            try {
                listA = a(cursorQuery);
                cursorQuery.close();
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
        } catch (Exception unused4) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused5) {
            cursorQuery = null;
        } catch (Throwable unused6) {
            cursorQuery = null;
        }
        if (listA.size() > 0) {
            return listA.get(0);
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public static f a(b bVar) {
        if (d == null) {
            synchronized (f.class) {
                if (d == null) {
                    d = new f(bVar);
                }
            }
        }
        return d;
    }

    private synchronized List<com.anythink.core.common.a.h> a(Cursor cursor) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        if (cursor != null) {
            if (cursor.getCount() > 0) {
                while (cursor.moveToNext()) {
                    try {
                        com.anythink.core.common.a.h hVar = new com.anythink.core.common.a.h();
                        hVar.a(cursor.getString(cursor.getColumnIndex("dsp_id")));
                        hVar.b(cursor.getString(cursor.getColumnIndex("dsp_offer_id")));
                        hVar.a(cursor.getInt(cursor.getColumnIndex(a.d)));
                        hVar.b(cursor.getInt(cursor.getColumnIndex("show_count")));
                        arrayList.add(hVar);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        return arrayList;
    }

    public final synchronized long a(com.anythink.core.common.a.h hVar) {
        if (b() == null) {
            return -1L;
        }
        if (hVar.c() <= 0) {
            return -1L;
        }
        if (a(hVar.a(), hVar.b()) != null) {
            StringBuilder sb = new StringBuilder("insertDspOfferShowRecord--had inserted...,dspid:");
            sb.append(hVar.a());
            sb.append(",dspOfferId:");
            sb.append(hVar.b());
            return -1L;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("dsp_id", hVar.a());
        contentValues.put("dsp_offer_id", hVar.b());
        contentValues.put(a.d, Integer.valueOf(hVar.c()));
        contentValues.put("show_count", (Integer) 0);
        contentValues.put(a.f, Long.valueOf(System.currentTimeMillis()));
        contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
        StringBuilder sb2 = new StringBuilder("insertDspOfferShowRecord--insert dspid:");
        sb2.append(hVar.a());
        sb2.append(",dspOfferId:");
        sb2.append(hVar.b());
        return b().insert(a.a, null, contentValues);
    }

    public final synchronized List<com.anythink.core.common.a.f> a(int i) {
        ArrayList arrayList = new ArrayList();
        if (i <= 0) {
            return arrayList;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = a().query(a.a, null, "show_count > show_limit", null, null, null, "last_update_time DESC", String.valueOf(i));
                List<com.anythink.core.common.a.h> listA = a(cursorQuery);
                new StringBuilder("get limit show cap record list size:").append(listA.size());
                cursorQuery.close();
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

    public final synchronized long b(com.anythink.core.common.a.h hVar) {
        if (b() == null) {
            return -1L;
        }
        if (hVar.c() <= 0) {
            return -1L;
        }
        com.anythink.core.common.a.h hVarA = a(hVar.a(), hVar.b());
        if (hVarA != null) {
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("dsp_id", hVar.a());
                contentValues.put("dsp_offer_id", hVar.b());
                contentValues.put(a.d, Integer.valueOf(hVar.c()));
                contentValues.put("show_count", Integer.valueOf(hVarA.d() + 1));
                contentValues.put("last_update_time", Long.valueOf(System.currentTimeMillis()));
                StringBuilder sb = new StringBuilder("updateDspOfferShowRecord--update dspid:");
                sb.append(hVar.a());
                sb.append(",dspOfferId:");
                sb.append(hVar.b());
                sb.append(",cur show count:");
                sb.append(hVarA.d() + 1);
                sb.append(",limit show cap:");
                sb.append(hVar.c());
                return b().update(a.a, contentValues, "dsp_id = ? and dsp_offer_id = ? ", new String[]{hVar.a(), hVar.b()});
            } catch (Exception unused) {
            }
        }
        return -1L;
    }

    public final void c() {
        try {
            String str = "create_time < " + (System.currentTimeMillis() - 86400000);
            if (b() == null) {
                return;
            }
            b().delete(a.a, str, null);
        } catch (Exception unused) {
        }
    }
}
