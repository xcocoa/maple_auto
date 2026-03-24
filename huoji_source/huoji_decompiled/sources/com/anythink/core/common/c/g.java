package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.core.common.f.u;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends com.anythink.core.common.c.a<u> {
    private static final String b = "com.anythink.core.common.c.g";
    private static g c;
    private int d;

    public static class a {
        public static final String a = "request_info";
        public static final String b = "id";
        public static final String c = "req_type";
        public static final String d = "req_url";
        public static final String e = "req_head";
        public static final String f = "req_content";
        public static final String g = "time";
        public static final String h = "extra";
        public static final String i = "CREATE TABLE IF NOT EXISTS request_info(id TEXT, req_type INTEGER, req_url TEXT, req_head TEXT, req_content TEXT, time INTEGER, extra TEXT )";
    }

    private g(b bVar) {
        super(bVar);
        this.d = 1000;
    }

    public static g a(b bVar) {
        if (c == null) {
            synchronized (g.class) {
                if (c == null) {
                    c = new g(bVar);
                }
            }
        }
        return c;
    }

    private synchronized void d() {
        try {
            if (b() == null) {
                return;
            }
            b().delete(a.a, null, null);
        } catch (Exception unused) {
        }
    }

    public final synchronized long a(u uVar) {
        Cursor cursorQuery;
        if (b() == null) {
            return -1L;
        }
        Cursor cursor = null;
        try {
            cursorQuery = a().query(a.a, null, null, null, null, null, null);
        } catch (Exception unused) {
            cursorQuery = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                if (cursorQuery.getCount() >= this.d) {
                    d();
                }
            } catch (Exception unused2) {
                if (cursorQuery != null) {
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", uVar.a);
                contentValues.put("req_type", Integer.valueOf(uVar.b));
                contentValues.put("req_url", uVar.d);
                contentValues.put("req_head", uVar.c);
                contentValues.put(a.f, uVar.e);
                contentValues.put("time", Long.valueOf(uVar.f));
                contentValues.put(a.h, uVar.g);
                return b().insert(a.a, null, contentValues);
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorQuery;
                if (cursor != null) {
                    try {
                        cursor.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("id", uVar.a);
            contentValues2.put("req_type", Integer.valueOf(uVar.b));
            contentValues2.put("req_url", uVar.d);
            contentValues2.put("req_head", uVar.c);
            contentValues2.put(a.f, uVar.e);
            contentValues2.put("time", Long.valueOf(uVar.f));
            contentValues2.put(a.h, uVar.g);
            return b().insert(a.a, null, contentValues2);
        } catch (Exception unused4) {
            return -1L;
        }
        if (cursorQuery != null) {
            try {
                cursorQuery.close();
            } catch (Exception unused5) {
            }
        }
    }

    public final synchronized int b(u uVar) {
        if (b() == null || uVar == null) {
            return -1;
        }
        try {
            return b().delete(a.a, "id=?", new String[]{uVar.a});
        } catch (Throwable unused) {
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a4 A[Catch: all -> 0x00b3, PHI: r1
      0x00a4: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:24:0x009b, B:28:0x00a2, B:35:0x00b0] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #1 {, blocks: (B:14:0x008a, B:20:0x0095, B:29:0x00a4, B:32:0x00ab, B:33:0x00ae, B:27:0x009f), top: B:43:0x0002, inners: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized List<u> c() {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, null, null, null, null, "time", HRConfig.GENDER_FEMALE);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        ArrayList arrayList = new ArrayList();
                        while (cursorQuery.moveToNext()) {
                            u uVar = new u();
                            uVar.a = cursorQuery.getString(cursorQuery.getColumnIndex("id"));
                            uVar.b = cursorQuery.getInt(cursorQuery.getColumnIndex("req_type"));
                            uVar.d = cursorQuery.getString(cursorQuery.getColumnIndex("req_url"));
                            uVar.c = cursorQuery.getString(cursorQuery.getColumnIndex("req_head"));
                            uVar.e = cursorQuery.getString(cursorQuery.getColumnIndex(a.f));
                            uVar.f = cursorQuery.getLong(cursorQuery.getColumnIndex("time"));
                            uVar.g = cursorQuery.getString(cursorQuery.getColumnIndex(a.h));
                            arrayList.add(uVar);
                        }
                        cursorQuery.close();
                        return arrayList;
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
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return null;
        } catch (Exception unused4) {
            cursorQuery = null;
        } catch (OutOfMemoryError unused5) {
            cursorQuery = null;
        } catch (Throwable unused6) {
            cursorQuery = null;
        }
    }
}
