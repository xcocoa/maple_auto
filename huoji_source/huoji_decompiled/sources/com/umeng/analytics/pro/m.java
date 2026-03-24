package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.pro.i;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    private static final String a = "fs_lc_tl";
    private static final String e = "-1";
    private static Context f;
    private final int b;
    private final int c;
    private final int d;
    private JSONObject g;

    public static class a {
        private static final m a = new m();

        private a() {
        }
    }

    private m() {
        this.b = 128;
        this.c = 256;
        this.d = 10;
        this.g = null;
        if (0 == 0) {
            try {
                b(f);
            } catch (Throwable unused) {
            }
        }
    }

    public static m a(Context context) {
        if (f == null && context != null) {
            f = context.getApplicationContext();
        }
        return a.a;
    }

    private JSONObject a(Map<String, Object> map) {
        JSONArray jSONArray;
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                try {
                    String key = entry.getKey();
                    if (key != null) {
                        String strSubStr = HelperUtils.subStr(key, 128);
                        Object value = entry.getValue();
                        if (value != null) {
                            int i = 0;
                            if (value.getClass().isArray()) {
                                if (value instanceof int[]) {
                                    int[] iArr = (int[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < iArr.length) {
                                        jSONArray.put(iArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof double[]) {
                                    double[] dArr = (double[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < dArr.length) {
                                        jSONArray.put(dArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof long[]) {
                                    long[] jArr = (long[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < jArr.length) {
                                        jSONArray.put(jArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof float[]) {
                                    float[] fArr = (float[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < fArr.length) {
                                        jSONArray.put(fArr[i]);
                                        i++;
                                    }
                                } else if (value instanceof short[]) {
                                    short[] sArr = (short[]) value;
                                    jSONArray = new JSONArray();
                                    while (i < sArr.length) {
                                        jSONArray.put((int) sArr[i]);
                                        i++;
                                    }
                                }
                                jSONObject.put(strSubStr, jSONArray);
                            } else if (value instanceof List) {
                                List list = (List) value;
                                jSONArray = new JSONArray();
                                while (i < list.size()) {
                                    Object obj = list.get(i);
                                    if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                                        jSONArray.put(list.get(i));
                                    }
                                    i++;
                                }
                                if (jSONArray.length() > 0) {
                                    jSONObject.put(strSubStr, jSONArray);
                                }
                            } else {
                                if (value instanceof String) {
                                    value = HelperUtils.subStr(value.toString(), 256);
                                } else if (!(value instanceof Long) && !(value instanceof Integer) && !(value instanceof Float) && !(value instanceof Double) && !(value instanceof Short)) {
                                    MLog.e("The param has not support type. please check !");
                                }
                                jSONObject.put(strSubStr, value);
                            }
                        }
                    }
                } catch (Exception e2) {
                    MLog.e(e2);
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private void a() {
        try {
            String strImprintProperty = UMEnvelopeBuild.imprintProperty(f, "track_list", "");
            if (TextUtils.isEmpty(strImprintProperty)) {
                return;
            }
            String[] strArrSplit = strImprintProperty.split("!");
            JSONObject jSONObject = new JSONObject();
            int i = 0;
            if (this.g != null) {
                for (String str : strArrSplit) {
                    String strSubStr = HelperUtils.subStr(str, 128);
                    if (this.g.has(strSubStr)) {
                        jSONObject.put(strSubStr, this.g.get(strSubStr));
                    }
                }
            }
            this.g = new JSONObject();
            if (strArrSplit.length >= 10) {
                while (i < 10) {
                    a(strArrSplit[i], jSONObject);
                    i++;
                }
            } else {
                while (i < strArrSplit.length) {
                    a(strArrSplit[i], jSONObject);
                    i++;
                }
            }
            c(f);
        } catch (Exception unused) {
        }
    }

    private void a(String str, JSONObject jSONObject) throws JSONException {
        String strSubStr = HelperUtils.subStr(str, 128);
        a(strSubStr, jSONObject.has(strSubStr) ? ((Boolean) jSONObject.get(strSubStr)).booleanValue() : false);
    }

    private void a(String str, boolean z) {
        try {
            if (b.T.equals(str) || b.R.equals(str) || "id".equals(str) || "ts".equals(str) || this.g.has(str)) {
                return;
            }
            this.g.put(str, z);
        } catch (Exception unused) {
        }
    }

    private boolean a(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length <= 128) {
                    return true;
                }
            } catch (Exception unused) {
                return false;
            }
        }
        MLog.e("Event id is empty or too long in tracking Event");
        return false;
    }

    private void b(Context context) {
        try {
            String string = PreferenceWrapper.getDefault(context).getString(a, null);
            if (!TextUtils.isEmpty(string)) {
                this.g = new JSONObject(string);
            }
            a();
        } catch (Exception unused) {
        }
    }

    private boolean b(String str) {
        if (str == null) {
            return true;
        }
        try {
            if (str.trim().getBytes().length <= 256) {
                return true;
            }
            MLog.e("Event label or value is empty or too long in tracking Event");
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean b(Map<String, Object> map) {
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        if (!a(entry.getKey())) {
                            MLog.e("map has NULL key. please check!");
                            return false;
                        }
                        if (entry.getValue() == null) {
                            return false;
                        }
                        if ((entry.getValue() instanceof String) && !b(entry.getValue().toString())) {
                            return false;
                        }
                    }
                    return true;
                }
            } catch (Exception unused) {
                return true;
            }
        }
        MLog.e("map is null or empty in onEvent");
        return false;
    }

    private void c(Context context) {
        try {
            if (this.g != null) {
                PreferenceWrapper.getDefault(f).edit().putString(a, this.g.toString()).commit();
            }
        } catch (Throwable unused) {
        }
    }

    public void a(Object obj) {
        try {
            i.d dVar = (i.d) obj;
            String strC = dVar.c();
            Map<String, Object> mapA = dVar.a();
            String strB = dVar.b();
            long jD = dVar.d();
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            String strSubStr = HelperUtils.subStr(strC, 128);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(b.aa, strSubStr);
            jSONObject.put("_$!ts", jD);
            String strC2 = o.a().c();
            if (TextUtils.isEmpty(strC2)) {
                strC2 = "-1";
            }
            jSONObject.put("__ii", strC2);
            if (!TextUtils.isEmpty(strB)) {
                try {
                    JSONObject jSONObject2 = new JSONObject(strB);
                    if (jSONObject2.length() > 0) {
                        jSONObject.put(b.ab, jSONObject2);
                    }
                } catch (JSONException unused) {
                }
            }
            a();
            if (mapA != null) {
                JSONObject jSONObjectA = a(mapA);
                if (jSONObjectA.length() > 0) {
                    Iterator<String> itKeys = jSONObjectA.keys();
                    while (itKeys.hasNext()) {
                        try {
                            String next = itKeys.next();
                            if (Arrays.asList(b.aq).contains(next)) {
                                MLog.e("the key in map about track interface is invalid.  ");
                            } else {
                                jSONObject.put(next, jSONObjectA.get(next));
                            }
                        } catch (Throwable th) {
                            MLog.e(th);
                        }
                    }
                }
            }
            JSONObject jSONObject3 = this.g;
            if (jSONObject3 != null && jSONObject3.has(strSubStr) && !((Boolean) this.g.get(strSubStr)).booleanValue()) {
                jSONObject.put(b.T, 1);
                this.g.put(strSubStr, true);
                c(f);
            }
            i.a(f).a(jSONObject, 0, false);
        } catch (Throwable unused2) {
        }
    }

    public void a(String str, String str2, long j, int i) {
        try {
            if (a(str) && b(str2)) {
                if (Arrays.asList(b.ap).contains(str)) {
                    MLog.e("the id is valid!");
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                if (j > 0) {
                    jSONObject.put(b.R, j);
                }
                jSONObject.put("__t", g.a);
                if (str2 == null) {
                    str2 = "";
                }
                jSONObject.put(str, str2);
                String strC = o.a().c();
                if (TextUtils.isEmpty(strC)) {
                    strC = "-1";
                }
                jSONObject.put("__i", strC);
                Context context = f;
                UMWorkDispatch.sendEvent(context, 4097, CoreProtocol.getInstance(context), jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(String str, Map<String, Object> map) {
        try {
            if (a(str)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                jSONObject.put(b.R, 0);
                jSONObject.put("__t", g.b);
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                for (int i = 0; i < 10 && it.hasNext(); i++) {
                    Map.Entry<String, Object> next = it.next();
                    if (!b.T.equals(next.getKey()) && !b.R.equals(next.getKey()) && !"id".equals(next.getKey()) && !"ts".equals(next.getKey())) {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                String strC = o.a().c();
                if (TextUtils.isEmpty(strC)) {
                    strC = "-1";
                }
                jSONObject.put("__i", strC);
                Context context = f;
                UMWorkDispatch.sendEvent(context, 4098, CoreProtocol.getInstance(context), jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(String str, Map<String, Object> map, long j) {
        try {
            if (a(str) && b(map)) {
                if (Arrays.asList(b.ap).contains(str)) {
                    MLog.e("the id is valid!");
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("id", str);
                jSONObject.put("ts", System.currentTimeMillis());
                if (j > 0) {
                    jSONObject.put(b.R, j);
                }
                jSONObject.put("__t", g.a);
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                for (int i = 0; i < 10 && it.hasNext(); i++) {
                    Map.Entry<String, Object> next = it.next();
                    if (Arrays.asList(b.ap).contains(next.getKey())) {
                        MLog.e("the key in map is invalid.  ");
                    } else {
                        Object value = next.getValue();
                        if ((value instanceof String) || (value instanceof Integer) || (value instanceof Long)) {
                            jSONObject.put(next.getKey(), value);
                        }
                    }
                }
                String strC = o.a().c();
                if (TextUtils.isEmpty(strC)) {
                    strC = "-1";
                }
                jSONObject.put("__i", strC);
                Context context = f;
                UMWorkDispatch.sendEvent(context, 4097, CoreProtocol.getInstance(context), jSONObject);
            }
        } catch (Throwable unused) {
        }
    }

    public void a(List<String> list) {
        if (list != null) {
            try {
                if (list.size() <= 0) {
                    return;
                }
                a();
                JSONObject jSONObject = this.g;
                if (jSONObject == null) {
                    this.g = new JSONObject();
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        JSONObject jSONObject2 = this.g;
                        if (jSONObject2 == null) {
                            this.g = new JSONObject();
                        } else if (jSONObject2.length() >= 5) {
                            break;
                        }
                        String str = list.get(i);
                        if (!TextUtils.isEmpty(str)) {
                            a(HelperUtils.subStr(str, 128), false);
                        }
                    }
                } else {
                    if (jSONObject.length() >= 5) {
                        MLog.d("already setFistLaunchEvent, igone.");
                        return;
                    }
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if (this.g.length() >= 5) {
                            MLog.d(" add setFistLaunchEvent over.");
                            return;
                        }
                        a(HelperUtils.subStr(list.get(i2), 128), false);
                    }
                }
                c(f);
            } catch (Exception unused) {
            }
        }
    }
}
