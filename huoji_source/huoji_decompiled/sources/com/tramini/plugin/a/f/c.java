package com.tramini.plugin.a.f;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends f {
    private static com.tramini.plugin.a.d.a a(Object obj, String str, String str2, JSONObject jSONObject, JSONArray jSONArray) {
        com.tramini.plugin.a.d.a aVarA;
        if (obj == null || !obj.getClass().getName().startsWith(str2)) {
            return null;
        }
        String str3 = str + obj.getClass().getName() + ",";
        try {
            ArrayList arrayList = new ArrayList();
            f.a(obj.getClass(), arrayList);
            int size = arrayList.size();
            Field[] fieldArr = new Field[size];
            arrayList.toArray(fieldArr);
            if (size == 0) {
                return null;
            }
            for (int i = 0; i < size; i++) {
                Field field = fieldArr[i];
                field.setAccessible(true);
                Object obj2 = field.get(obj);
                if (obj2 != null && (obj2 instanceof JSONObject)) {
                    try {
                        String str4 = "";
                        JSONObject jSONObject2 = new JSONObject();
                        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                            String strOptString = jSONArray.optString(i2);
                            String strOptString2 = jSONObject.optString(strOptString);
                            if (TextUtils.equals(strOptString2, "all")) {
                                str4 = strOptString;
                            } else {
                                String strA = a(strOptString2, (JSONObject) obj2);
                                if (!TextUtils.isEmpty(strA)) {
                                    jSONObject2.put(strOptString, strA);
                                }
                            }
                        }
                        if (jSONObject2.length() != 0) {
                            com.tramini.plugin.a.d.a aVar = new com.tramini.plugin.a.d.a();
                            if (!TextUtils.isEmpty(str4)) {
                                jSONObject2.put(str4, obj2.toString());
                            }
                            aVar.a = jSONObject2;
                            return aVar;
                        }
                        continue;
                    } catch (Throwable unused) {
                        continue;
                    }
                } else if (obj2 != null && !str3.contains(obj2.getClass().getName()) && (aVarA = a(obj2, str3, str2, jSONObject, jSONArray)) != null) {
                    return aVarA;
                }
            }
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static com.tramini.plugin.a.d.a a(JSONObject jSONObject, com.tramini.plugin.a.d.c cVar, String str) {
        return a(f.a(jSONObject.optString("in_na"), str), "", jSONObject.optString("pre"), jSONObject, cVar.e);
    }

    private static String a(String str, JSONObject jSONObject) {
        try {
            String[] strArrSplit = str.split(":");
            int i = 0;
            while (i < strArrSplit.length) {
                int i2 = i + 1;
                if (i2 == strArrSplit.length) {
                    return jSONObject.optString(strArrSplit[i]);
                }
                jSONObject = jSONObject.optJSONObject(strArrSplit[i]);
                i = i2;
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }
}
