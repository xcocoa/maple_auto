package com.tramini.plugin.a.f;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends f {
    /* JADX WARN: Removed duplicated region for block: B:45:0x00bf A[Catch: all -> 0x0112, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0112, blocks: (B:21:0x007b, B:23:0x0081, B:45:0x00bf, B:25:0x0086, B:27:0x008c), top: B:90:0x007b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static com.tramini.plugin.a.d.a a(Object obj, String str, String str2, String str3, String str4, String str5, String str6, JSONObject jSONObject, JSONArray jSONArray) {
        int i;
        Method[] methodArr;
        int i2;
        Object objInvoke;
        JSONObject jSONObjectOptJSONObject;
        String strOptString;
        String strOptString2;
        String strA;
        Object obj2 = obj;
        String str7 = str5;
        if (obj2 == null || !obj.getClass().getName().startsWith(str2)) {
            return null;
        }
        String str8 = str + obj.getClass().getName() + ",";
        try {
            ArrayList arrayList = new ArrayList();
            f.a(obj.getClass(), arrayList);
            int size = arrayList.size();
            Field[] fieldArr = new Field[size];
            arrayList.toArray(fieldArr);
            if (size == 0) {
                return null;
            }
            int i3 = 0;
            int i4 = 0;
            while (i4 < size) {
                Field field = fieldArr[i4];
                boolean z = true;
                field.setAccessible(true);
                Object obj3 = field.get(obj2);
                Method[] methodArrC = c(obj3, str3);
                if (obj3 == null || methodArrC == null) {
                    if (obj3 != null && !str8.contains(obj3.getClass().getName())) {
                        i = i4;
                        com.tramini.plugin.a.d.a aVarA = a(obj3, str8, str2, str3, str4, str5, str6, jSONObject, jSONArray);
                        if (aVarA != null) {
                            return aVarA;
                        }
                    }
                    i4 = i + 1;
                    obj2 = obj;
                    str7 = str5;
                    i3 = 0;
                } else {
                    int length = methodArrC.length;
                    int i5 = 0;
                    while (i5 < length) {
                        Method method = methodArrC[i5];
                        method.setAccessible(z);
                        try {
                            objInvoke = method.invoke(obj3, new Object[i3]);
                        } catch (Throwable unused) {
                        }
                        if (objInvoke instanceof JSONObject) {
                            if (((JSONObject) objInvoke).has(str4)) {
                                jSONObjectOptJSONObject = (JSONObject) objInvoke;
                            } else {
                                if (TextUtils.isEmpty(str5) || !((JSONObject) objInvoke).has(str7)) {
                                    if (!TextUtils.isEmpty(str6)) {
                                        try {
                                            jSONObjectOptJSONObject = ((JSONObject) objInvoke).optJSONObject(str6);
                                        } catch (Throwable unused2) {
                                            jSONObjectOptJSONObject = null;
                                        }
                                        if (jSONObjectOptJSONObject == null) {
                                            JSONObject jSONObject2 = new JSONObject();
                                            methodArr = methodArrC;
                                            int i6 = 0;
                                            while (i6 < jSONArray.length()) {
                                                try {
                                                    int i7 = length;
                                                    try {
                                                        strOptString = jSONArray.optString(i6);
                                                        try {
                                                            strOptString2 = jSONObject.optString(strOptString);
                                                        } catch (Throwable unused3) {
                                                        }
                                                    } catch (Throwable unused4) {
                                                    }
                                                    if (TextUtils.equals(strOptString2, "all")) {
                                                        strA = jSONObjectOptJSONObject.toString();
                                                    } else {
                                                        strA = a(strOptString2, jSONObjectOptJSONObject);
                                                        if (!TextUtils.isEmpty(strA)) {
                                                        }
                                                        i6++;
                                                        length = i7;
                                                    }
                                                    jSONObject2.put(strOptString, strA);
                                                    i6++;
                                                    length = i7;
                                                } catch (Throwable unused5) {
                                                    i2 = length;
                                                }
                                            }
                                            i2 = length;
                                            try {
                                                com.tramini.plugin.a.d.a aVar = new com.tramini.plugin.a.d.a();
                                                aVar.a = jSONObject2;
                                                return aVar;
                                            } catch (Throwable unused6) {
                                                continue;
                                            }
                                        }
                                        i2 = length;
                                        i5++;
                                        str7 = str5;
                                        methodArrC = methodArr;
                                        length = i2;
                                        z = true;
                                        i3 = 0;
                                    }
                                    jSONObjectOptJSONObject = null;
                                    if (jSONObjectOptJSONObject == null) {
                                    }
                                    i2 = length;
                                    i5++;
                                    str7 = str5;
                                    methodArrC = methodArr;
                                    length = i2;
                                    z = true;
                                    i3 = 0;
                                } else {
                                    try {
                                        JSONArray jSONArrayOptJSONArray = ((JSONObject) objInvoke).optJSONArray(str7);
                                        jSONObjectOptJSONObject = (jSONArrayOptJSONArray == null || jSONArrayOptJSONArray.length() <= 0) ? null : jSONArrayOptJSONArray.getJSONObject(i3);
                                    } catch (Throwable unused7) {
                                        jSONObjectOptJSONObject = null;
                                    }
                                }
                                jSONObjectOptJSONObject = null;
                                if (jSONObjectOptJSONObject == null) {
                                }
                                i2 = length;
                                i5++;
                                str7 = str5;
                                methodArrC = methodArr;
                                length = i2;
                                z = true;
                                i3 = 0;
                            }
                            if (jSONObjectOptJSONObject == null) {
                            }
                            i2 = length;
                            i5++;
                            str7 = str5;
                            methodArrC = methodArr;
                            length = i2;
                            z = true;
                            i3 = 0;
                        }
                        methodArr = methodArrC;
                        i2 = length;
                        i5++;
                        str7 = str5;
                        methodArrC = methodArr;
                        length = i2;
                        z = true;
                        i3 = 0;
                    }
                }
                i = i4;
                i4 = i + 1;
                obj2 = obj;
                str7 = str5;
                i3 = 0;
            }
            return null;
        } catch (Throwable unused8) {
            return null;
        }
    }

    public static com.tramini.plugin.a.d.a a(JSONObject jSONObject, com.tramini.plugin.a.d.c cVar, String str) {
        return a(f.a(jSONObject.optString("in_na"), str), "", jSONObject.optString("pre"), jSONObject.optString("mena"), jSONObject.optString("agu"), jSONObject.optString("agu_v2"), jSONObject.optString("agu_v3"), jSONObject, cVar.e);
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
