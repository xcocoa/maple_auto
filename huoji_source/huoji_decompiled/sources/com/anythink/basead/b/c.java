package com.anythink.basead.b;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import cn.haorui.sdk.core.HRConfig;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class c {
    private static c a;
    private Context b;

    public static class a {
        public static final String a = "my_offer_cap_pacing";
        public static final String b = "offer_id";
        public static final String c = "offer_cap";
        public static final String d = "offer_pacing";
        public static final String e = "show_num";
        public static final String f = "show_time";
        public static final String g = "record_date";
        public static final String h = "CREATE TABLE IF NOT EXISTS my_offer_cap_pacing (offer_id TEXT,offer_cap INTEGER,offer_pacing INTEGER,show_num INTEGER,show_time INTEGER,record_date INTEGER )";
    }

    private c(Context context) {
        this.b = context;
    }

    public static c a(Context context) {
        if (a == null) {
            a = new c(context);
        }
        return a;
    }

    private static com.anythink.basead.c.c a(Cursor cursor) {
        com.anythink.basead.c.c cVar = new com.anythink.basead.c.c();
        cVar.a = cursor.getString(cursor.getColumnIndex("offer_id"));
        cVar.d = cursor.getInt(cursor.getColumnIndex(a.e));
        cVar.e = cursor.getLong(cursor.getColumnIndex("show_time"));
        cVar.f = cursor.getString(cursor.getColumnIndex(a.g));
        cVar.b = cursor.getInt(cursor.getColumnIndex(a.c));
        cVar.c = cursor.getLong(cursor.getColumnIndex(a.d));
        return cVar;
    }

    private synchronized boolean d(String str) {
        Cursor cursorQuery = b.a(this.b).getReadableDatabase().query(a.a, new String[]{"offer_id"}, "offer_id=?", new String[]{str}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized long a(com.anythink.basead.c.c cVar) {
        synchronized (this) {
            if (cVar == null) {
                return 0L;
            }
            try {
                if (b.a(this.b).getWritableDatabase() == null) {
                    return -1L;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("offer_id", cVar.a);
                contentValues.put(a.e, Integer.valueOf(cVar.d));
                contentValues.put("show_time", Long.valueOf(cVar.e));
                contentValues.put(a.g, cVar.f);
                contentValues.put(a.c, Integer.valueOf(cVar.b));
                contentValues.put(a.d, Long.valueOf(cVar.c));
                if (!d(cVar.a)) {
                    return b.a(this.b).getWritableDatabase().insert(a.a, null, contentValues);
                }
                return b.a(this.b).getWritableDatabase().update(a.a, contentValues, "offer_id = '" + cVar.a + "'", null);
            } catch (Exception e) {
                e.printStackTrace();
                return -1L;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041 A[Catch: all -> 0x0057, PHI: r11
      0x0041: PHI (r11v8 android.database.Cursor) = 
      (r11v5 android.database.Cursor)
      (r11v6 android.database.Cursor)
      (r11v7 android.database.Cursor)
      (r11v9 android.database.Cursor)
     binds: [B:18:0x003f, B:23:0x0049, B:30:0x0054, B:15:0x003b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:10:0x0032, B:19:0x0041, B:27:0x004f, B:28:0x0052, B:22:0x0046), top: B:38:0x0002, inners: #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized com.anythink.basead.c.c a(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = b.a(this.b).getReadableDatabase().query(a.a, null, "offer_id=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToNext();
                        com.anythink.basead.c.c cVarA = a(cursorQuery);
                        cursorQuery.close();
                        return cVarA;
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

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052 A[Catch: all -> 0x0068, PHI: r11
      0x0052: PHI (r11v8 android.database.Cursor) = 
      (r11v5 android.database.Cursor)
      (r11v6 android.database.Cursor)
      (r11v7 android.database.Cursor)
      (r11v10 android.database.Cursor)
     binds: [B:22:0x0050, B:27:0x005a, B:34:0x0065, B:19:0x004c] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #3 {, blocks: (B:14:0x0043, B:23:0x0052, B:31:0x0060, B:32:0x0063, B:26:0x0057), top: B:42:0x0002, inners: #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized List<com.anythink.basead.c.c> b(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = b.a(this.b).getReadableDatabase().query(a.a, null, "offer_cap <= show_num AND record_date=? AND offer_cap !=?", new String[]{str, HRConfig.GENDER_UNKNOWN}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        ArrayList arrayList = new ArrayList();
                        while (cursorQuery.moveToNext()) {
                            arrayList.add(a(cursorQuery));
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

    public final synchronized void c(String str) {
        synchronized (this) {
            try {
                String str2 = "record_date != '" + str + "'";
                if (b.a(this.b).getWritableDatabase() == null) {
                } else {
                    b.a(this.b).getWritableDatabase().delete(a.a, str2, null);
                }
            } catch (Exception unused) {
            }
        }
    }
}
