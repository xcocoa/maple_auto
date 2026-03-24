package com.tramini.plugin.a.f;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends f {
    private static com.tramini.plugin.a.d.a a(Object obj, String str, String str2, String str3, String str4, JSONObject jSONObject, JSONArray jSONArray) {
        com.tramini.plugin.a.d.a aVarA;
        int i;
        Method[] methodArr;
        Object objInvoke;
        Object obj2 = obj;
        if (obj2 == null || !obj.getClass().getName().startsWith(str2)) {
            return null;
        }
        String str5 = str + obj.getClass().getName() + ",";
        try {
            ArrayList arrayList = new ArrayList();
            f.a(obj.getClass(), arrayList);
            int size = arrayList.size();
            Field[] fieldArr = new Field[size];
            arrayList.toArray(fieldArr);
            if (size == 0) {
                return null;
            }
            int i2 = 0;
            int i3 = 0;
            while (i3 < size) {
                Field field = fieldArr[i3];
                boolean z = true;
                field.setAccessible(true);
                Object obj3 = field.get(obj2);
                Method[] methodArrC = c(obj3, str3);
                if (obj3 != null && methodArrC != null) {
                    int length = methodArrC.length;
                    int i4 = 0;
                    while (i4 < length) {
                        Method method = methodArrC[i4];
                        method.setAccessible(z);
                        try {
                            objInvoke = method.invoke(obj3, new Object[i2]);
                        } catch (Throwable unused) {
                        }
                        if (objInvoke instanceof JSONObject) {
                            try {
                                if (((JSONObject) objInvoke).has(str4)) {
                                    JSONObject jSONObject2 = new JSONObject();
                                    int i5 = 0;
                                    while (i5 < jSONArray.length()) {
                                        try {
                                            String strOptString = jSONArray.optString(i5);
                                            methodArr = methodArrC;
                                            try {
                                                String strOptString2 = jSONObject.optString(strOptString);
                                                i = length;
                                                try {
                                                    jSONObject2.put(strOptString, TextUtils.equals(strOptString2, "all") ? objInvoke.toString() : a(strOptString2, (JSONObject) objInvoke));
                                                    i5++;
                                                    methodArrC = methodArr;
                                                    length = i;
                                                } catch (Throwable unused2) {
                                                }
                                            } catch (Throwable unused3) {
                                            }
                                        } catch (Throwable unused4) {
                                            methodArr = methodArrC;
                                        }
                                    }
                                    methodArr = methodArrC;
                                    i = length;
                                    com.tramini.plugin.a.d.a aVar = new com.tramini.plugin.a.d.a();
                                    aVar.a = jSONObject2;
                                    return aVar;
                                }
                            } catch (Throwable unused5) {
                            }
                        }
                        methodArr = methodArrC;
                        i = length;
                        i4++;
                        methodArrC = methodArr;
                        length = i;
                        z = true;
                        i2 = 0;
                    }
                } else if (obj3 != null && !str5.contains(obj3.getClass().getName()) && (aVarA = a(obj3, str5, str2, str3, str4, jSONObject, jSONArray)) != null) {
                    return aVarA;
                }
                i3++;
                obj2 = obj;
                i2 = 0;
            }
            return null;
        } catch (Throwable unused6) {
            return null;
        }
    }

    public static com.tramini.plugin.a.d.a a(JSONObject jSONObject, com.tramini.plugin.a.d.c cVar, String str) {
        return a(f.a(jSONObject.optString("in_na"), str), "", jSONObject.optString("pre"), jSONObject.optString("mena"), jSONObject.optString("agu"), jSONObject, cVar.e);
    }

    private static String a(String str, JSONObject jSONObject) {
        String[] strArrSplit;
        int i;
        try {
            strArrSplit = str.split(":");
            i = 0;
        } catch (Throwable unused) {
            return "";
        }
        while (i < strArrSplit.length) {
            int i2 = i + 1;
            if (i2 == strArrSplit.length) {
                return jSONObject.optString(strArrSplit[i]);
            }
            try {
                jSONObject = new JSONObject(jSONObject.optString(strArrSplit[i]));
            } catch (JSONException unused2) {
                jSONObject = new JSONArray(jSONObject.optString(strArrSplit[i])).getJSONObject(0);
            }
            i = i2;
            return "";
        }
        return "";
    }

    private static Method[] c(Object obj, String str) {
        try {
            ArrayList arrayList = new ArrayList();
            for (Method method : obj.getClass().getDeclaredMethods()) {
                if (method.getGenericReturnType().toString().contains(str)) {
                    arrayList.add(method);
                }
            }
            return (Method[]) arrayList.toArray(new Method[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
