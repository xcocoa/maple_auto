package com.anythink.core.common.c;

import android.content.ContentValues;
import android.database.Cursor;
import com.anythink.core.common.f.ae;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class j extends com.anythink.core.common.c.a<ae> {
    private static j c;
    private final String b;

    public static class a {
        public static final String a = "offer_action_record";
        public static final String b = "adsource_id";
        public static final String c = "type";
        public static final String d = "unit_id";
        public static final String e = "click_count";
        public static final String f = "show_count";
        public static final String g = "expire_time";
        public static final String h = "CREATE TABLE IF NOT EXISTS offer_action_record(adsource_id TEXT ,type INTEGER ,unit_id TEXT ,click_count INTEGER ,show_count INTEGER ,expire_time INTEGER )";
    }

    private j(b bVar) {
        super(bVar);
        this.b = j.class.getName();
    }

    private synchronized long a(ae aeVar) {
        if (b() == null || aeVar == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("type", Integer.valueOf(aeVar.e()));
            contentValues.put("unit_id", aeVar.a());
            contentValues.put(a.e, Integer.valueOf(aeVar.d()));
            contentValues.put("show_count", Integer.valueOf(aeVar.c()));
            contentValues.put(a.g, Long.valueOf(aeVar.b()));
            return b().update(a.a, contentValues, "type = ? and unit_id = ?", new String[]{String.valueOf(aeVar.e()), aeVar.a()});
        } catch (Exception unused) {
            return -1L;
        }
    }

    public static j a(b bVar) {
        if (c == null) {
            synchronized (j.class) {
                if (c == null) {
                    c = new j(bVar);
                }
            }
        }
        return c;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0075 A[Catch: all -> 0x0084, PHI: r1
      0x0075: PHI (r1v5 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:20:0x006c, B:24:0x0073, B:31:0x0081] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #2 {, blocks: (B:10:0x005b, B:16:0x0066, B:25:0x0075, B:28:0x007c, B:29:0x007f, B:23:0x0070), top: B:39:0x0002, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private synchronized ae a(int i, String str) {
        Cursor cursorQuery;
        try {
            cursorQuery = a().query(a.a, null, "type=? and unit_id = ?", new String[]{String.valueOf(i), str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToNext();
                        ae aeVar = new ae(i, str);
                        aeVar.b(cursorQuery.getInt(cursorQuery.getColumnIndex(a.e)));
                        aeVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex("show_count")));
                        aeVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.g)));
                        cursorQuery.close();
                        return aeVar;
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

    private synchronized long b(String str, int i, String str2) {
        if (b() == null) {
            return -1L;
        }
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("adsource_id", str);
            contentValues.put("type", Integer.valueOf(i));
            contentValues.put("unit_id", str2);
            ae aeVarA = a(i, str2);
            if (aeVarA != null) {
                contentValues.put(a.e, Integer.valueOf(aeVarA.d()));
                contentValues.put("show_count", Integer.valueOf(aeVarA.c()));
                contentValues.put(a.g, Long.valueOf(aeVarA.b()));
            } else {
                contentValues.put(a.e, (Integer) 0);
                contentValues.put("show_count", (Integer) 0);
                contentValues.put(a.g, (Integer) (-1));
            }
            return b().insert(a.a, null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    private static String b(int i) {
        if (i <= 0) {
            throw new RuntimeException("No placeholders");
        }
        StringBuilder sb = new StringBuilder((i * 2) - 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    private boolean b(int i, String str) {
        Cursor cursorQuery = a().query(a.a, null, "type = ? and unit_id = ?", new String[]{String.valueOf(i), str}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    private boolean c(String str, int i, String str2) {
        Cursor cursorQuery = a().query(a.a, null, "adsource_id = ? and type = ? and unit_id = ?", new String[]{str, String.valueOf(i), str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            return true;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        return false;
    }

    public final synchronized List<ae> a(int i) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = a().query(a.a, null, "type = ? and expire_time > ?", new String[]{String.valueOf(i), String.valueOf(System.currentTimeMillis())}, null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    while (cursorQuery.moveToNext()) {
                        ae aeVar = new ae(i, cursorQuery.getString(cursorQuery.getColumnIndex("unit_id")));
                        aeVar.b(cursorQuery.getInt(cursorQuery.getColumnIndex(a.e)));
                        aeVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex("show_count")));
                        aeVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.g)));
                        arrayList.add(aeVar);
                    }
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
            if (cursorQuery != null) {
            }
        }
        return arrayList;
    }

    public final synchronized List<ae> a(List<String> list, int i) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder("SELECT * FROM offer_action_record WHERE adsource_id IN (");
        sb.append(b(list.size()));
        sb.append(") and type = ? and expire_time > ?");
        Cursor cursorQuery = null;
        try {
            try {
                String[] strArr = new String[list.size() + 2];
                list.toArray(strArr);
                strArr[list.size()] = String.valueOf(i);
                strArr[list.size() + 1] = String.valueOf(System.currentTimeMillis());
                cursorQuery = a().query(a.a, null, "adsource_id IN (" + b(list.size()) + ") and type = ? and expire_time > ?", strArr, null, null, null);
                if (cursorQuery != null && cursorQuery.getCount() > 0) {
                    while (cursorQuery.moveToNext()) {
                        ae aeVar = new ae(i, cursorQuery.getString(cursorQuery.getColumnIndex("unit_id")));
                        aeVar.b(cursorQuery.getInt(cursorQuery.getColumnIndex(a.e)));
                        aeVar.a(cursorQuery.getInt(cursorQuery.getColumnIndex("show_count")));
                        aeVar.a(cursorQuery.getLong(cursorQuery.getColumnIndex(a.g)));
                        arrayList.add(aeVar);
                    }
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
            if (cursorQuery != null) {
            }
        }
        return arrayList;
    }

    public final synchronized void a(int i, String str, int i2, int i3) {
        ae aeVarA = a(i, str);
        if (aeVarA != null) {
            aeVarA.b(aeVarA.d() + i2);
            aeVarA.a(aeVarA.c() + i3);
            a(aeVarA);
        }
    }

    public final synchronized void a(int i, String str, long j) {
        ae aeVarA = a(i, str);
        if (aeVarA != null) {
            aeVarA.a(j);
            a(aeVarA);
        }
    }

    public final synchronized void a(String str, int i, String str2) {
        boolean z = false;
        Cursor cursorQuery = a().query(a.a, null, "adsource_id = ? and type = ? and unit_id = ?", new String[]{str, String.valueOf(i), str2}, null, null, null);
        if (cursorQuery != null && cursorQuery.getCount() > 0) {
            cursorQuery.close();
            z = true;
        } else if (cursorQuery != null) {
            cursorQuery.close();
        }
        if (!z) {
            b(str, i, str2);
        }
    }
}
