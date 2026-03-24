package com.umeng.analytics.pro;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.text.TextUtils;
import android.util.Base64;
import cn.haorui.sdk.core.HRConfig;
import com.umeng.analytics.pro.c;
import com.umeng.commonsdk.amap.UMAmapConfig;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public static final int a = 2049;
    public static final int b = 2050;
    private static Context c = null;
    private static String d = null;
    private static final String e = "umeng+";
    private static final String f = "ek__id";
    private static final String g = "ek_key";
    private List<String> h;
    private List<Integer> i;
    private String j;

    public enum a {
        AUTOPAGE,
        PAGE,
        BEGIN,
        END,
        NEWSESSION
    }

    public static class b {
        private static final g a = new g();

        private b() {
        }
    }

    private g() {
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = null;
    }

    public static g a(Context context) {
        g gVar = b.a;
        if (c == null && context != null) {
            c = context.getApplicationContext();
            gVar.h();
        }
        return gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:83:0x0168 A[EXC_TOP_SPLITTER, PHI: r0 r2
      0x0168: PHI (r0v7 java.lang.String) = (r0v5 java.lang.String), (r0v15 java.lang.String) binds: [B:61:0x0166, B:46:0x0138] A[DONT_GENERATE, DONT_INLINE]
      0x0168: PHI (r2v6 android.database.sqlite.SQLiteDatabase) = (r2v3 android.database.sqlite.SQLiteDatabase), (r2v11 android.database.sqlite.SQLiteDatabase) binds: [B:61:0x0166, B:46:0x0138] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String a(JSONObject jSONObject, boolean z) {
        SQLiteDatabase sQLiteDatabaseA;
        String str;
        Cursor cursorRawQuery;
        Cursor cursor = null;
        string = null;
        string = null;
        string = null;
        string = null;
        string = null;
        cursor = null;
        String string = null;
        try {
            sQLiteDatabaseA = e.a(c).a();
            try {
                sQLiteDatabaseA.beginTransaction();
                cursorRawQuery = sQLiteDatabaseA.rawQuery("select *  from __sd", null);
                if (cursorRawQuery != null) {
                    try {
                        JSONArray jSONArray = new JSONArray();
                        while (cursorRawQuery.moveToNext()) {
                            JSONObject jSONObject2 = new JSONObject();
                            String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(c.e.a.g));
                            String string3 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__e"));
                            string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__ii"));
                            if (!TextUtils.isEmpty(string2) && !TextUtils.isEmpty(string3)) {
                                if (Long.parseLong(string2) - Long.parseLong(string3) > 0) {
                                    String string4 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__a"));
                                    String string5 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(c.e.a.c));
                                    String string6 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(c.e.a.d));
                                    String string7 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(c.e.a.e));
                                    this.h.add(string);
                                    jSONObject2.put("id", string);
                                    jSONObject2.put("start_time", string3);
                                    jSONObject2.put("end_time", string2);
                                    jSONObject2.put("duration", Long.parseLong(string2) - Long.parseLong(string3));
                                    if (!TextUtils.isEmpty(string4)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.s, new JSONArray(b(string4)));
                                    }
                                    if (!TextUtils.isEmpty(string5)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.t, new JSONArray(b(string5)));
                                    }
                                    if (!TextUtils.isEmpty(string6)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.A, new JSONObject(b(string6)));
                                    }
                                    if (!TextUtils.isEmpty(string7)) {
                                        jSONObject2.put(com.umeng.analytics.pro.b.w, new JSONArray(b(string7)));
                                    }
                                    if (jSONObject2.length() > 0) {
                                        jSONArray.put(jSONObject2);
                                    }
                                }
                                if (z) {
                                    break;
                                }
                            }
                        }
                        if (this.h.size() < 1) {
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            if (sQLiteDatabaseA != null) {
                                try {
                                    sQLiteDatabaseA.endTransaction();
                                } catch (Throwable unused) {
                                }
                            }
                            e.a(c).b();
                            return string;
                        }
                        if (jSONArray.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.b.n, jSONArray);
                        }
                    } catch (SQLiteDatabaseCorruptException unused2) {
                        try {
                            f.a(c);
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            if (sQLiteDatabaseA != null) {
                            }
                        } finally {
                            if (cursorRawQuery != null) {
                                cursorRawQuery.close();
                            }
                            if (sQLiteDatabaseA != null) {
                                try {
                                    sQLiteDatabaseA.endTransaction();
                                } catch (Throwable unused3) {
                                }
                            }
                            e.a(c).b();
                        }
                    } catch (Throwable unused4) {
                        str = string;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        if (sQLiteDatabaseA != null) {
                            try {
                                sQLiteDatabaseA.endTransaction();
                            } catch (Throwable unused5) {
                            }
                        }
                        e.a(c).b();
                        return str;
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } catch (SQLiteDatabaseCorruptException unused6) {
                cursorRawQuery = null;
            } catch (Throwable unused7) {
                str = null;
            }
        } catch (SQLiteDatabaseCorruptException unused8) {
            sQLiteDatabaseA = null;
            cursorRawQuery = null;
        } catch (Throwable unused9) {
            sQLiteDatabaseA = null;
            str = null;
        }
        return string;
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase) {
        Cursor cursorRawQuery;
        Cursor cursor = null;
        strB = null;
        strB = null;
        String strB = null;
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(c.e.a.e);
            if (jSONObject2 != null) {
                cursorRawQuery = sQLiteDatabase.rawQuery("select __d from __sd where __ii=\"" + str + "\"", null);
                if (cursorRawQuery != null) {
                    while (cursorRawQuery.moveToNext()) {
                        try {
                            strB = b(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(c.e.a.e)));
                        } catch (Throwable unused) {
                            cursor = cursorRawQuery;
                            if (cursor != null) {
                                cursor.close();
                                return;
                            }
                            return;
                        }
                    }
                }
            } else {
                cursorRawQuery = null;
            }
            if (jSONObject2 != null) {
                JSONArray jSONArray = new JSONArray();
                if (!TextUtils.isEmpty(strB)) {
                    jSONArray = new JSONArray(strB);
                }
                jSONArray.put(jSONObject2);
                String strA = a(jSONArray.toString());
                if (!TextUtils.isEmpty(strA)) {
                    sQLiteDatabase.execSQL("update  __sd set __d=\"" + strA + "\" where __ii=\"" + str + "\"");
                }
            }
            JSONObject jSONObject3 = jSONObject.getJSONObject(c.e.a.d);
            if (jSONObject3 != null) {
                String strA2 = a(jSONObject3.toString());
                if (!TextUtils.isEmpty(strA2)) {
                    sQLiteDatabase.execSQL("update  __sd set __c=\"" + strA2 + "\" where __ii=\"" + str + "\"");
                }
            }
            sQLiteDatabase.execSQL("update  __sd set __f=\"" + String.valueOf(jSONObject.getLong(c.e.a.g)) + "\" where __ii=\"" + str + "\"");
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (Throwable unused2) {
        }
    }

    private void a(String str, JSONObject jSONObject, SQLiteDatabase sQLiteDatabase, String str2) throws JSONException {
        Cursor cursor = null;
        strB = null;
        String strB = null;
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select " + str2 + " from " + c.e.a + " where __ii=\"" + str + "\"", null);
            if (cursorRawQuery != null) {
                while (cursorRawQuery.moveToNext()) {
                    try {
                        strB = b(cursorRawQuery.getString(cursorRawQuery.getColumnIndex(str2)));
                    } catch (Throwable unused) {
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
            }
            JSONArray jSONArray = new JSONArray();
            if (!TextUtils.isEmpty(strB)) {
                jSONArray = new JSONArray(strB);
            }
            jSONArray.put(jSONObject);
            String strA = a(jSONArray.toString());
            if (!TextUtils.isEmpty(strA)) {
                sQLiteDatabase.execSQL("update __sd set " + str2 + "=\"" + strA + "\" where __ii=\"" + str + "\"");
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        } catch (Throwable unused2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:91:0x0178 A[EXC_TOP_SPLITTER, PHI: r1
      0x0178: PHI (r1v4 android.database.sqlite.SQLiteDatabase) = 
      (r1v2 android.database.sqlite.SQLiteDatabase)
      (r1v3 android.database.sqlite.SQLiteDatabase)
      (r1v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:69:0x0176, B:76:0x0190, B:63:0x016b] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(JSONObject jSONObject, String str) {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorRawQuery = null;
        try {
            sQLiteDatabaseA = e.a(c).a();
        } catch (SQLiteDatabaseCorruptException unused) {
            sQLiteDatabaseA = null;
        } catch (Throwable unused2) {
            sQLiteDatabaseA = null;
        }
        try {
            sQLiteDatabaseA.beginTransaction();
            String str2 = "select *  from __et";
            if (!TextUtils.isEmpty(str)) {
                str2 = "select *  from __et where __i=\"" + str + "\"";
            }
            cursorRawQuery = sQLiteDatabaseA.rawQuery(str2, null);
            if (cursorRawQuery != null) {
                JSONObject jSONObject2 = new JSONObject();
                JSONObject jSONObject3 = new JSONObject();
                String strC = o.a().c();
                while (cursorRawQuery.moveToNext()) {
                    int i = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("__t"));
                    String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__i"));
                    String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(c.d.a.c));
                    if (TextUtils.isEmpty(string) || HRConfig.GENDER_UNKNOWN.equals(string)) {
                        if (!TextUtils.isEmpty(strC)) {
                            string = strC;
                        }
                    }
                    this.i.add(Integer.valueOf(cursorRawQuery.getInt(0)));
                    if (i != 2049) {
                        if (i == 2050 && !TextUtils.isEmpty(string2)) {
                            JSONObject jSONObject4 = new JSONObject(b(string2));
                            JSONArray jSONArrayOptJSONArray = jSONObject3.has(string) ? jSONObject3.optJSONArray(string) : new JSONArray();
                            jSONArrayOptJSONArray.put(jSONObject4);
                            jSONObject3.put(string, jSONArrayOptJSONArray);
                        }
                    } else if (!TextUtils.isEmpty(string2)) {
                        JSONObject jSONObject5 = new JSONObject(b(string2));
                        JSONArray jSONArrayOptJSONArray2 = jSONObject2.has(string) ? jSONObject2.optJSONArray(string) : new JSONArray();
                        jSONArrayOptJSONArray2.put(jSONObject5);
                        jSONObject2.put(string, jSONArrayOptJSONArray2);
                    }
                }
                if (jSONObject2.length() > 0) {
                    JSONArray jSONArray = new JSONArray();
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        JSONObject jSONObject6 = new JSONObject();
                        String next = itKeys.next();
                        jSONObject6.put(next, new JSONArray(jSONObject2.optString(next)));
                        if (jSONObject6.length() > 0) {
                            jSONArray.put(jSONObject6);
                        }
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put(com.umeng.analytics.pro.b.N, jSONArray);
                    }
                }
                if (jSONObject3.length() > 0) {
                    JSONArray jSONArray2 = new JSONArray();
                    Iterator<String> itKeys2 = jSONObject3.keys();
                    while (itKeys2.hasNext()) {
                        JSONObject jSONObject7 = new JSONObject();
                        String next2 = itKeys2.next();
                        jSONObject7.put(next2, new JSONArray(jSONObject3.optString(next2)));
                        if (jSONObject7.length() > 0) {
                            jSONArray2.put(jSONObject7);
                        }
                    }
                    if (jSONArray2.length() > 0) {
                        jSONObject.put(com.umeng.analytics.pro.b.O, jSONArray2);
                    }
                }
            }
            sQLiteDatabaseA.setTransactionSuccessful();
        } catch (SQLiteDatabaseCorruptException unused3) {
            try {
                f.a(c);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (sQLiteDatabaseA != null) {
                }
            } finally {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused4) {
                    }
                }
                e.a(c).b();
            }
        } catch (Throwable unused5) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            if (sQLiteDatabaseA != null) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x007a A[EXC_TOP_SPLITTER, PHI: r1
      0x007a: PHI (r1v4 android.database.sqlite.SQLiteDatabase) = 
      (r1v2 android.database.sqlite.SQLiteDatabase)
      (r1v3 android.database.sqlite.SQLiteDatabase)
      (r1v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:27:0x0078, B:34:0x0092, B:21:0x006d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b(JSONObject jSONObject, String str) {
        SQLiteDatabase sQLiteDatabaseA;
        Cursor cursorRawQuery = null;
        try {
            sQLiteDatabaseA = e.a(c).a();
            try {
                sQLiteDatabaseA.beginTransaction();
                String str2 = "select *  from __er";
                if (!TextUtils.isEmpty(str)) {
                    str2 = "select *  from __er where __i=\"" + str + "\"";
                }
                cursorRawQuery = sQLiteDatabaseA.rawQuery(str2, null);
                if (cursorRawQuery != null) {
                    JSONArray jSONArray = new JSONArray();
                    while (cursorRawQuery.moveToNext()) {
                        String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("__a"));
                        if (!TextUtils.isEmpty(string)) {
                            jSONArray.put(new JSONObject(b(string)));
                        }
                    }
                    if (jSONArray.length() > 0) {
                        jSONObject.put("error", jSONArray);
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } catch (SQLiteDatabaseCorruptException unused) {
                try {
                    f.a(c);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (sQLiteDatabaseA != null) {
                    }
                } finally {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused2) {
                        }
                    }
                    e.a(c).b();
                }
            } catch (Throwable unused3) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (SQLiteDatabaseCorruptException unused4) {
            sQLiteDatabaseA = null;
        } catch (Throwable unused5) {
            sQLiteDatabaseA = null;
        }
    }

    private void h() {
        synchronized (this) {
            i();
            this.h.clear();
        }
    }

    private void i() {
        try {
            if (TextUtils.isEmpty(d)) {
                SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(c);
                String string = sharedPreferences.getString(f, null);
                if (TextUtils.isEmpty(string)) {
                    string = DeviceConfig.getDBencryptID(c);
                    if (!TextUtils.isEmpty(string)) {
                        sharedPreferences.edit().putString(f, string).commit();
                    }
                }
                if (!TextUtils.isEmpty(string)) {
                    String strSubstring = string.substring(1, 9);
                    StringBuilder sb = new StringBuilder();
                    for (int i = 0; i < strSubstring.length(); i++) {
                        char cCharAt = strSubstring.charAt(i);
                        if (!Character.isDigit(cCharAt)) {
                            sb.append(cCharAt);
                        } else if (Integer.parseInt(Character.toString(cCharAt)) == 0) {
                            sb.append(0);
                        } else {
                            sb.append(10 - Integer.parseInt(Character.toString(cCharAt)));
                        }
                    }
                    d = sb.toString();
                }
                if (TextUtils.isEmpty(d)) {
                    return;
                }
                d += new StringBuilder(d).reverse().toString();
                String string2 = sharedPreferences.getString(g, null);
                if (TextUtils.isEmpty(string2)) {
                    sharedPreferences.edit().putString(g, a(e)).commit();
                } else {
                    if (e.equals(b(string2))) {
                        return;
                    }
                    a(true, false);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public String a(String str) {
        try {
            return TextUtils.isEmpty(d) ? str : Base64.encodeToString(DataHelper.encrypt(str.getBytes(), d.getBytes()), 0);
        } catch (Exception unused) {
            return null;
        }
    }

    public JSONObject a(boolean z) {
        String strA;
        a();
        this.i.clear();
        JSONObject jSONObject = new JSONObject();
        if (z) {
            strA = a(jSONObject, z);
            if (!TextUtils.isEmpty(strA)) {
            }
            return jSONObject;
        }
        a(jSONObject, z);
        strA = null;
        b(jSONObject, strA);
        a(jSONObject, strA);
        return jSONObject;
    }

    public void a() {
        this.h.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x002f A[EXC_TOP_SPLITTER, PHI: r0
      0x002f: PHI (r0v6 android.database.sqlite.SQLiteDatabase) = 
      (r0v4 android.database.sqlite.SQLiteDatabase)
      (r0v5 android.database.sqlite.SQLiteDatabase)
      (r0v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:16:0x002d, B:20:0x0041, B:14:0x002a] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(int i) {
        String str;
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                sQLiteDatabaseA.beginTransaction();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                e.a(c).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            f.a(c);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabaseA != null) {
            }
        }
        if (i == 0) {
            str = "delete from __dp where __ty=0";
        } else {
            if (i != 4) {
                if (i == 1) {
                    str = "delete from __dp where __ty=1";
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            }
            sQLiteDatabaseA.execSQL("delete from __dp where __ty=3");
            str = "delete from __dp where __ty=2";
        }
        sQLiteDatabaseA.execSQL(str);
        sQLiteDatabaseA.setTransactionSuccessful();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0084, code lost:
    
        if (r2 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0086, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0098, code lost:
    
        if (r2 == null) goto L24;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(JSONArray jSONArray) {
        SQLiteDatabase sQLiteDatabaseA;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                try {
                    try {
                        sQLiteDatabaseA.beginTransaction();
                        for (int i = 0; i < jSONArray.length(); i++) {
                            try {
                                JSONObject jSONObject = jSONArray.getJSONObject(i);
                                ContentValues contentValues = new ContentValues();
                                String strOptString = jSONObject.optString("__i");
                                if (TextUtils.isEmpty(strOptString) || HRConfig.GENDER_UNKNOWN.equals(strOptString)) {
                                    strOptString = o.a().c();
                                    if (TextUtils.isEmpty(strOptString)) {
                                        strOptString = HRConfig.GENDER_UNKNOWN;
                                    }
                                }
                                contentValues.put("__i", strOptString);
                                contentValues.put("__e", jSONObject.optString("id"));
                                contentValues.put("__t", Integer.valueOf(jSONObject.optInt("__t")));
                                jSONObject.remove("__i");
                                jSONObject.remove("__t");
                                contentValues.put(c.d.a.c, a(jSONObject.toString()));
                                sQLiteDatabaseA.insert(c.d.a, null, contentValues);
                            } catch (Exception unused) {
                            }
                        }
                        sQLiteDatabaseA.setTransactionSuccessful();
                    } catch (Throwable unused2) {
                        sQLiteDatabase = sQLiteDatabaseA;
                    }
                } catch (SQLiteDatabaseCorruptException unused3) {
                    sQLiteDatabase = sQLiteDatabaseA;
                    try {
                        f.a(c);
                    } catch (Throwable th) {
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable unused4) {
                            }
                        }
                        e.a(c).b();
                        throw th;
                    }
                }
            } catch (Throwable unused5) {
            }
        } catch (SQLiteDatabaseCorruptException unused6) {
        } catch (Throwable unused7) {
        }
        if (sQLiteDatabaseA != null) {
            sQLiteDatabaseA.endTransaction();
        }
        e.a(c).b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x006a, code lost:
    
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x006c, code lost:
    
        r1.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x007e, code lost:
    
        if (r1 == null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(JSONObject jSONObject, int i) {
        SQLiteDatabase sQLiteDatabaseA;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                try {
                    sQLiteDatabaseA.beginTransaction();
                    ContentValues contentValues = new ContentValues();
                    String strOptString = jSONObject.optString("__ii");
                    contentValues.put(c.a.C0231a.a, Long.valueOf(System.currentTimeMillis() - UMAmapConfig.AMAP_CACHE_WRITE_TIME));
                    if (TextUtils.isEmpty(strOptString)) {
                        strOptString = HRConfig.GENDER_UNKNOWN;
                    }
                    contentValues.put("__ii", strOptString);
                    jSONObject.remove("__ii");
                    contentValues.put(c.a.C0231a.c, a(jSONObject.toString()));
                    contentValues.put(c.a.C0231a.d, Integer.valueOf(i));
                    contentValues.put(c.a.C0231a.e, DeviceConfig.getAppVersionCode(c));
                    sQLiteDatabaseA.insert(c.a.a, null, contentValues);
                    sQLiteDatabaseA.setTransactionSuccessful();
                } catch (SQLiteDatabaseCorruptException unused) {
                    sQLiteDatabase = sQLiteDatabaseA;
                    try {
                        f.a(c);
                    } catch (Throwable th) {
                        if (sQLiteDatabase != null) {
                            try {
                                sQLiteDatabase.endTransaction();
                            } catch (Throwable unused2) {
                            }
                        }
                        e.a(c).b();
                        throw th;
                    }
                } catch (Throwable unused3) {
                    sQLiteDatabase = sQLiteDatabaseA;
                }
            } catch (Throwable unused4) {
            }
        } catch (SQLiteDatabaseCorruptException unused5) {
        } catch (Throwable unused6) {
        }
        if (sQLiteDatabaseA != null) {
            sQLiteDatabaseA.endTransaction();
        }
        e.a(c).b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x00a1, code lost:
    
        if (r4 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00a3, code lost:
    
        r4.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x00b5, code lost:
    
        if (r4 == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(boolean z, String str) {
        SQLiteDatabase sQLiteDatabaseA;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                this.j = str;
                sQLiteDatabaseA = e.a(c).a();
            } catch (Throwable unused) {
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
        } catch (Throwable unused3) {
        }
        try {
            sQLiteDatabaseA.beginTransaction();
            if (!TextUtils.isEmpty(str)) {
                sQLiteDatabaseA.execSQL("delete from __er where __i=\"" + str + "\"");
                sQLiteDatabaseA.execSQL("delete from __et where __i=\"" + str + "\"");
                if (z) {
                    sQLiteDatabaseA.execSQL("update __sd set __b=\"" + ((Object) null) + "\" where __ii=\"" + str + "\"");
                    sQLiteDatabaseA.execSQL("update __sd set __a=\"" + ((Object) null) + "\" where __ii=\"" + str + "\"");
                }
            }
            sQLiteDatabaseA.setTransactionSuccessful();
        } catch (SQLiteDatabaseCorruptException unused4) {
            sQLiteDatabase = sQLiteDatabaseA;
            try {
                f.a(c);
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused5) {
                    }
                }
                e.a(c).b();
                throw th;
            }
        } catch (Throwable unused6) {
            sQLiteDatabase = sQLiteDatabaseA;
        }
        if (sQLiteDatabaseA != null) {
            sQLiteDatabaseA.endTransaction();
        }
        e.a(c).b();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0055 A[EXC_TOP_SPLITTER, PHI: r0
      0x0055: PHI (r0v4 android.database.sqlite.SQLiteDatabase) = 
      (r0v2 android.database.sqlite.SQLiteDatabase)
      (r0v3 android.database.sqlite.SQLiteDatabase)
      (r0v5 android.database.sqlite.SQLiteDatabase)
     binds: [B:16:0x0053, B:20:0x0067, B:14:0x0050] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(boolean z, boolean z3) {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                sQLiteDatabaseA.beginTransaction();
                if (z3) {
                    if (z) {
                        sQLiteDatabaseA.execSQL("delete from __sd");
                    }
                } else if (this.h.size() > 0) {
                    for (int i = 0; i < this.h.size(); i++) {
                        sQLiteDatabaseA.execSQL("delete from __sd where __ii=\"" + this.h.get(i) + "\"");
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                e.a(c).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            f.a(c);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabaseA != null) {
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0042, code lost:
    
        if (r0 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        r0.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        if (r0 == null) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(String str, String str2, int i) {
        SQLiteDatabase sQLiteDatabaseA;
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
            } catch (Throwable unused) {
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
        } catch (Throwable unused3) {
        }
        try {
            sQLiteDatabaseA.beginTransaction();
            ContentValues contentValues = new ContentValues();
            contentValues.put("__i", str);
            String strA = a(str2);
            if (!TextUtils.isEmpty(strA)) {
                contentValues.put("__a", strA);
                contentValues.put("__t", Integer.valueOf(i));
                sQLiteDatabaseA.insert(c.C0232c.a, null, contentValues);
            }
            sQLiteDatabaseA.setTransactionSuccessful();
        } catch (SQLiteDatabaseCorruptException unused4) {
            sQLiteDatabase = sQLiteDatabaseA;
            try {
                f.a(c);
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused5) {
                    }
                }
                e.a(c).b();
                throw th;
            }
        } catch (Throwable unused6) {
            sQLiteDatabase = sQLiteDatabaseA;
        }
        if (sQLiteDatabaseA != null) {
            sQLiteDatabaseA.endTransaction();
        }
        e.a(c).b();
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0098, code lost:
    
        if (r2 == null) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x009a, code lost:
    
        r2.endTransaction();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00ac, code lost:
    
        if (r2 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean a(String str, JSONObject jSONObject, a aVar) {
        SQLiteDatabase sQLiteDatabaseA;
        String str2;
        if (jSONObject == null) {
            return false;
        }
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
            } catch (Throwable unused) {
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
        } catch (Throwable unused3) {
        }
        try {
            sQLiteDatabaseA.beginTransaction();
            if (aVar == a.BEGIN) {
                long jLongValue = ((Long) jSONObject.get("__e")).longValue();
                ContentValues contentValues = new ContentValues();
                contentValues.put("__ii", str);
                contentValues.put("__e", String.valueOf(jLongValue));
                sQLiteDatabaseA.insert(c.e.a, null, contentValues);
            } else if (aVar == a.END) {
                sQLiteDatabaseA.execSQL("update __sd set __f=\"" + ((Long) jSONObject.get(c.e.a.g)).longValue() + "\" where __ii=\"" + str + "\"");
            } else {
                if (aVar == a.PAGE) {
                    str2 = "__a";
                } else if (aVar == a.AUTOPAGE) {
                    str2 = c.e.a.c;
                } else if (aVar == a.NEWSESSION) {
                    a(str, jSONObject, sQLiteDatabaseA);
                }
                a(str, jSONObject, sQLiteDatabaseA, str2);
            }
            sQLiteDatabaseA.setTransactionSuccessful();
        } catch (SQLiteDatabaseCorruptException unused4) {
            sQLiteDatabase = sQLiteDatabaseA;
            try {
                f.a(c);
            } catch (Throwable th) {
                if (sQLiteDatabase != null) {
                    try {
                        sQLiteDatabase.endTransaction();
                    } catch (Throwable unused5) {
                    }
                }
                e.a(c).b();
                throw th;
            }
        } catch (Throwable unused6) {
            sQLiteDatabase = sQLiteDatabaseA;
        }
        if (sQLiteDatabaseA != null) {
            sQLiteDatabaseA.endTransaction();
        }
        e.a(c).b();
        return false;
    }

    public String b(String str) {
        try {
            return TextUtils.isEmpty(d) ? str : new String(DataHelper.decrypt(Base64.decode(str.getBytes(), 0), d.getBytes()));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006f A[EXC_TOP_SPLITTER, PHI: r0
      0x006f: PHI (r0v6 android.database.sqlite.SQLiteDatabase) = 
      (r0v4 android.database.sqlite.SQLiteDatabase)
      (r0v5 android.database.sqlite.SQLiteDatabase)
      (r0v9 android.database.sqlite.SQLiteDatabase)
     binds: [B:16:0x006d, B:20:0x0081, B:14:0x006a] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b() {
        String strD;
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                sQLiteDatabaseA.beginTransaction();
                strD = o.a().d();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                e.a(c).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            f.a(c);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabaseA != null) {
            }
        }
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        String[] strArr = {"", HRConfig.GENDER_UNKNOWN};
        for (int i = 0; i < 2; i++) {
            sQLiteDatabaseA.execSQL("update __et set __i=\"" + strD + "\" where __i=\"" + strArr[i] + "\"");
        }
        sQLiteDatabaseA.setTransactionSuccessful();
        if (sQLiteDatabaseA != null) {
            try {
                sQLiteDatabaseA.endTransaction();
            } catch (Throwable unused4) {
            }
        }
        e.a(c).b();
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0046 A[EXC_TOP_SPLITTER, PHI: r0
      0x0046: PHI (r0v6 android.database.sqlite.SQLiteDatabase) = 
      (r0v4 android.database.sqlite.SQLiteDatabase)
      (r0v5 android.database.sqlite.SQLiteDatabase)
      (r0v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:26:0x0044, B:30:0x0058, B:24:0x0041] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void b(int i) {
        String str;
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                sQLiteDatabaseA.beginTransaction();
                if (i == -1) {
                    sQLiteDatabaseA.execSQL("delete from __dp");
                } else {
                    if (i == 1) {
                        str = "delete from __dp where __ty=1";
                    } else {
                        if (i == 4) {
                            sQLiteDatabaseA.execSQL("delete from __dp where __ty=3");
                        } else if (i == 3) {
                            sQLiteDatabaseA.execSQL("delete from __dp where __ty=3");
                        } else if (i == 0) {
                            str = "delete from __dp where __ty=0";
                        } else if (i == 2) {
                        }
                        sQLiteDatabaseA.execSQL("delete from __dp where __ty=2");
                    }
                    sQLiteDatabaseA.execSQL(str);
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                e.a(c).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            f.a(c);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabaseA != null) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00a7 A[EXC_TOP_SPLITTER, PHI: r2
      0x00a7: PHI (r2v4 android.database.sqlite.SQLiteDatabase) = 
      (r2v2 android.database.sqlite.SQLiteDatabase)
      (r2v3 android.database.sqlite.SQLiteDatabase)
      (r2v7 android.database.sqlite.SQLiteDatabase)
     binds: [B:42:0x00a5, B:49:0x00bf, B:36:0x009a] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JSONObject c() {
        SQLiteDatabase sQLiteDatabaseA;
        JSONObject jSONObject = new JSONObject();
        Cursor cursorRawQuery = null;
        try {
            sQLiteDatabaseA = e.a(c).a();
            try {
                sQLiteDatabaseA.beginTransaction();
                cursorRawQuery = sQLiteDatabaseA.rawQuery("select *  from __dp", null);
                if (cursorRawQuery != null) {
                    JSONArray jSONArray = new JSONArray();
                    JSONArray jSONArray2 = new JSONArray();
                    JSONArray jSONArray3 = new JSONArray();
                    while (cursorRawQuery.moveToNext()) {
                        String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(c.a.C0231a.c));
                        int i = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(c.a.C0231a.d));
                        if (!TextUtils.isEmpty(string)) {
                            JSONObject jSONObject2 = new JSONObject(b(string));
                            if (jSONObject2.length() > 0) {
                                if (i == 2 || i == 3) {
                                    jSONArray2.put(jSONObject2);
                                } else if (i == 0) {
                                    jSONArray.put(jSONObject2);
                                } else if (i == 1) {
                                    jSONArray3.put(jSONObject2);
                                }
                            }
                        }
                        if (jSONArray.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.b.Y, jSONArray);
                        }
                        if (jSONArray2.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.b.ac, jSONArray2);
                        }
                        if (jSONArray3.length() > 0) {
                            jSONObject.put(com.umeng.analytics.pro.b.ah, jSONArray3);
                        }
                    }
                }
                sQLiteDatabaseA.setTransactionSuccessful();
            } catch (SQLiteDatabaseCorruptException unused) {
                try {
                    f.a(c);
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (sQLiteDatabaseA != null) {
                    }
                } finally {
                    if (cursorRawQuery != null) {
                        cursorRawQuery.close();
                    }
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused2) {
                        }
                    }
                    e.a(c).b();
                }
            } catch (Throwable unused3) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                if (sQLiteDatabaseA != null) {
                }
            }
        } catch (SQLiteDatabaseCorruptException unused4) {
            sQLiteDatabaseA = null;
        } catch (Throwable unused5) {
            sQLiteDatabaseA = null;
        }
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0049 A[EXC_TOP_SPLITTER, PHI: r0
      0x0049: PHI (r0v6 android.database.sqlite.SQLiteDatabase) = 
      (r0v4 android.database.sqlite.SQLiteDatabase)
      (r0v5 android.database.sqlite.SQLiteDatabase)
      (r0v9 android.database.sqlite.SQLiteDatabase)
     binds: [B:12:0x0047, B:16:0x005b, B:10:0x0044] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                sQLiteDatabaseA.beginTransaction();
                if (this.i.size() > 0) {
                    for (int i = 0; i < this.i.size(); i++) {
                        sQLiteDatabaseA.execSQL("delete from __et where rowid=" + this.i.get(i));
                    }
                }
                this.i.clear();
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                e.a(c).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            f.a(c);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabaseA != null) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x001b A[EXC_TOP_SPLITTER, PHI: r0
      0x001b: PHI (r0v6 android.database.sqlite.SQLiteDatabase) = 
      (r0v4 android.database.sqlite.SQLiteDatabase)
      (r0v5 android.database.sqlite.SQLiteDatabase)
      (r0v9 android.database.sqlite.SQLiteDatabase)
     binds: [B:6:0x0019, B:10:0x002d, B:4:0x0016] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void e() {
        SQLiteDatabase sQLiteDatabaseA = null;
        try {
            try {
                sQLiteDatabaseA = e.a(c).a();
                sQLiteDatabaseA.beginTransaction();
                sQLiteDatabaseA.execSQL("delete from __er");
                sQLiteDatabaseA.setTransactionSuccessful();
            } finally {
                if (sQLiteDatabaseA != null) {
                    try {
                        sQLiteDatabaseA.endTransaction();
                    } catch (Throwable unused) {
                    }
                }
                e.a(c).b();
            }
        } catch (SQLiteDatabaseCorruptException unused2) {
            f.a(c);
            if (sQLiteDatabaseA != null) {
            }
        } catch (Throwable unused3) {
            if (sQLiteDatabaseA != null) {
            }
        }
    }

    public void f() {
        b(-1);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0053 A[EXC_TOP_SPLITTER, PHI: r1
      0x0053: PHI (r1v8 android.database.sqlite.SQLiteDatabase) = 
      (r1v4 android.database.sqlite.SQLiteDatabase)
      (r1v5 android.database.sqlite.SQLiteDatabase)
      (r1v11 android.database.sqlite.SQLiteDatabase)
     binds: [B:9:0x0051, B:14:0x0066, B:6:0x004d] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void g() {
        SQLiteDatabase sQLiteDatabaseA;
        if (!TextUtils.isEmpty(this.j)) {
            try {
                sQLiteDatabaseA = e.a(c).a();
            } catch (SQLiteDatabaseCorruptException unused) {
                sQLiteDatabaseA = null;
            } catch (Throwable unused2) {
                sQLiteDatabaseA = null;
            }
            try {
                sQLiteDatabaseA.beginTransaction();
                sQLiteDatabaseA.execSQL("delete from __er where __i=\"" + this.j + "\"");
                sQLiteDatabaseA.execSQL("delete from __et where __i=\"" + this.j + "\"");
                sQLiteDatabaseA.setTransactionSuccessful();
            } catch (SQLiteDatabaseCorruptException unused3) {
                try {
                    f.a(c);
                    if (sQLiteDatabaseA != null) {
                    }
                } finally {
                    if (sQLiteDatabaseA != null) {
                        try {
                            sQLiteDatabaseA.endTransaction();
                        } catch (Throwable unused4) {
                        }
                    }
                    e.a(c).b();
                }
            } catch (Throwable unused5) {
                if (sQLiteDatabaseA != null) {
                }
            }
        }
        this.j = null;
    }
}
