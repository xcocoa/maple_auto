package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class m extends com.anythink.core.common.c.a<com.anythink.core.common.a.k> {
    private static volatile m c;
    private final String b;

    public static class a {
        public static final String a = "video_res_cache_info";
        public static final String b = "video_url";
        public static final String c = "file_path";
        public static final String d = "ready_rate";
        public static final String e = "download_size";
        public static final String f = "total_size";
        public static final String g = "update_time";
        public static final String h = "CREATE TABLE IF NOT EXISTS video_res_cache_info(video_url TEXT, file_path TEXT, ready_rate INTEGER, download_size INTEGER, total_size INTEGER, update_time INTEGER )";
    }

    private m(b bVar) {
        super(bVar);
        this.b = m.class.getSimpleName();
    }

    public static m a(b bVar) {
        if (c == null) {
            synchronized (k.class) {
                if (c == null) {
                    c = new m(bVar);
                }
            }
        }
        return c;
    }

    private void d(String str) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(a.a, null, null, null, null, null, null);
            StringBuilder sb = new StringBuilder("logDBCurItemNumber ");
            sb.append(str);
            sb.append(":");
            sb.append(cursorQuery.getCount());
        } catch (Throwable th) {
            try {
                new StringBuilder("logDBCurItemNumber fail:").append(th.getMessage());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003b A[PHI: r0
      0x003b: PHI (r0v3 android.database.Cursor) = (r0v2 android.database.Cursor), (r0v4 android.database.Cursor) binds: [B:17:0x0039, B:15:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean e(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(a.a, new String[]{"video_url"}, "video_url=?", new String[]{str}, null, null, null);
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

    /* JADX WARN: Removed duplicated region for block: B:15:0x0077 A[PHI: r1
      0x0077: PHI (r1v2 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:14:0x0075, B:10:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final com.anythink.core.common.a.k a(String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, "video_url=?", new String[]{str}, null, null, null);
            try {
            } catch (Throwable unused) {
                if (cursorQuery != null) {
                }
            }
        } catch (Throwable unused2) {
            cursorQuery = null;
        }
        if (cursorQuery.moveToNext()) {
            com.anythink.core.common.a.k kVar = new com.anythink.core.common.a.k();
            kVar.a(str);
            kVar.b(cursorQuery.getString(cursorQuery.getColumnIndex(a.c)));
            kVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex("ready_rate")));
            kVar.b(cursorQuery.getLong(cursorQuery.getColumnIndex(a.e)));
            kVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f)));
            kVar.c(cursorQuery.getLong(cursorQuery.getColumnIndex("update_time")));
            cursorQuery.close();
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return kVar;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return null;
    }

    public final synchronized void a(String str, String str2, long j, long j2, int i) {
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                try {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("video_url", str);
                    contentValues.put(a.c, str2);
                    contentValues.put("ready_rate", Integer.valueOf(i));
                    contentValues.put(a.e, Long.valueOf(j2));
                    contentValues.put(a.f, Long.valueOf(j));
                    contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
                    if (e(str)) {
                        b().update(a.a, contentValues, "video_url = ? ", new String[]{str});
                    } else {
                        b().insert(a.a, null, contentValues);
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public final void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("update_time", Long.valueOf(System.currentTimeMillis()));
            b().update(a.a, contentValues, "video_url = ? ", new String[]{str});
        } catch (Throwable unused) {
        }
    }

    public final long c() {
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(a.a, new String[]{"sum(download_size)"}, null, null, null, null, null);
            if (cursorQuery.moveToNext()) {
                long j = cursorQuery.getLong(0);
                cursorQuery.close();
                return j;
            }
            if (cursorQuery == null) {
                return 0L;
            }
        } catch (Throwable th) {
            try {
                new StringBuilder("getDownloadedVideoSize fail:").append(th.getMessage());
                if (cursorQuery == null) {
                    return 0L;
                }
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
        cursorQuery.close();
        return 0L;
    }

    public final void c(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            b().delete(a.a, "video_url=?", new String[]{str});
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("removeVideoResCacheInfo fail:");
            sb.append(th.getMessage());
            sb.append(",videoUrl:");
            sb.append(str);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x00b0, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x00b1, code lost:
    
        new java.lang.StringBuilder("removeHalfVideoInfoByUpdateTime fail:").append(r0.getMessage());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List<com.anythink.core.common.a.k> d() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            cursorQuery = a().query(a.a, null, null, null, null, null, "update_time DESC");
            if (cursorQuery.getCount() > 0 && cursorQuery.moveToPosition(((int) Math.round(((((double) cursorQuery.getCount()) * 1.0d) + 1.0d) / 2.0d)) - 1)) {
                long j = cursorQuery.getLong(cursorQuery.getColumnIndex("update_time"));
                do {
                    com.anythink.core.common.a.k kVar = new com.anythink.core.common.a.k();
                    kVar.a(cursorQuery.getString(cursorQuery.getColumnIndex("video_url")));
                    kVar.b(cursorQuery.getString(cursorQuery.getColumnIndex(a.c)));
                    kVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex("ready_rate")));
                    kVar.b(cursorQuery.getLong(cursorQuery.getColumnIndex(a.e)));
                    kVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.f)));
                    kVar.c(cursorQuery.getLong(cursorQuery.getColumnIndex("update_time")));
                    arrayList.add(kVar);
                } while (cursorQuery.moveToNext());
                b().delete(a.a, "update_time<=?", new String[]{String.valueOf(j)});
            }
        } catch (Throwable th) {
            try {
                new StringBuilder("removeHalfVideoResCacheInfoByUpdateTime fail:").append(th.getMessage());
                if (cursorQuery != null) {
                }
                return arrayList;
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        }
        return arrayList;
    }
}
