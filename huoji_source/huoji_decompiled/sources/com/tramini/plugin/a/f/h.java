package com.tramini.plugin.a.f;

import android.text.TextUtils;
import com.tramini.plugin.a.f.f;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class h extends f {

    /* JADX INFO: renamed from: com.tramini.plugin.a.f.h$1, reason: invalid class name */
    public class AnonymousClass1 implements f.c {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;

        public AnonymousClass1(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final boolean a(Object obj) {
            return obj instanceof Map;
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final f.a b(Object obj) {
            Object obj2;
            Map map = (Map) obj;
            if (map == null || map.size() == 0) {
                return f.a.a();
            }
            if (map.containsKey(this.a) && (obj2 = map.get(this.a)) != null) {
                return obj2.getClass().getName().contains(this.b) ? f.a.a(obj2) : f.a.b(obj2);
            }
            return f.a.a();
        }
    }

    /* JADX INFO: renamed from: com.tramini.plugin.a.f.h$2, reason: invalid class name */
    public class AnonymousClass2 implements f.c {
        public final /* synthetic */ String a;

        public AnonymousClass2(String str) {
            this.a = str;
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final boolean a(Object obj) {
            return obj instanceof Map;
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final f.a b(Object obj) {
            Object value;
            Map map = (Map) obj;
            if (map == null || map.size() == 0) {
                return f.a.a();
            }
            Iterator it = map.entrySet().iterator();
            if (it.hasNext() && (value = ((Map.Entry) it.next()).getValue()) != null) {
                return value.getClass().getSimpleName().contains(this.a) ? f.a.a(value) : f.a.b(value);
            }
            return f.a.a();
        }
    }

    /* JADX INFO: renamed from: com.tramini.plugin.a.f.h$3, reason: invalid class name */
    public class AnonymousClass3 implements f.c {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;

        public AnonymousClass3(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final boolean a(Object obj) {
            return obj.getClass().getName().startsWith(this.a);
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final f.a b(Object obj) {
            try {
                String str = this.b;
                return (str == null || !str.contains(obj.getClass().getName())) ? f.a.b(obj) : f.a.a(obj);
            } catch (Throwable unused) {
                return f.a.a();
            }
        }
    }

    /* JADX INFO: renamed from: com.tramini.plugin.a.f.h$4, reason: invalid class name */
    public class AnonymousClass4 implements f.c {
        public final /* synthetic */ String a;
        public final /* synthetic */ String b;
        public final /* synthetic */ StringBuffer c;
        public final /* synthetic */ String d;

        public AnonymousClass4(String str, String str2, StringBuffer stringBuffer, String str3) {
            this.a = str;
            this.b = str2;
            this.c = stringBuffer;
            this.d = str3;
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final boolean a(Object obj) {
            return obj instanceof Map;
        }

        @Override // com.tramini.plugin.a.f.f.c
        public final f.a b(Object obj) {
            Map map;
            Object obj2;
            try {
                map = (Map) obj;
            } catch (Throwable unused) {
            }
            if (map != null && map.size() > 0) {
                if (map.containsKey(this.a) && (obj2 = map.get(this.a)) != null) {
                    Object objA = f.a(obj2, this.b, this.c, new f.c() { // from class: com.tramini.plugin.a.f.h.4.1
                        @Override // com.tramini.plugin.a.f.f.c
                        public final boolean a(Object obj3) {
                            return obj3.getClass().getName().startsWith(AnonymousClass4.this.b);
                        }

                        @Override // com.tramini.plugin.a.f.f.c
                        public final f.a b(Object obj3) {
                            String str = AnonymousClass4.this.d;
                            return (str == null || !str.contains(obj3.getClass().getName())) ? f.a.b(obj3) : f.a.a(obj3);
                        }
                    });
                    if (objA != null) {
                        return f.a.a(objA);
                    }
                    return f.a.a();
                }
                return f.a.a();
            }
            return f.a.a();
        }
    }

    private static com.tramini.plugin.a.d.a a(Object obj, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, JSONObject jSONObject, JSONArray jSONArray) {
        try {
            Object objA = f.a(obj, str, new StringBuffer(), new AnonymousClass1(str5, str2));
            Object objA2 = objA == null ? null : f.a(objA, str, new StringBuffer(), new AnonymousClass2(str3));
            if (objA2 == null) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            Object objA3 = f.a(objA2, str4, stringBuffer, new AnonymousClass3(str4, str6));
            if (objA3 == null) {
                objA3 = f.a(objA2, str4, new StringBuffer(), new AnonymousClass4(str5, str4, stringBuffer, str6));
            }
            if (objA3 == null) {
                return null;
            }
            return a(objA3, str7, str8, jSONObject, jSONArray);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static com.tramini.plugin.a.d.a a(Object obj, String str, String str2, JSONObject jSONObject, JSONArray jSONArray) {
        Object obj2;
        Object obj3;
        try {
            String[] strArrSplit = str2.split(":");
            if (strArrSplit.length != 2) {
                return null;
            }
            try {
                List list = (List) f.b(obj, str);
                obj2 = null;
                for (int i = 0; i < list.size() && (obj2 = list.get(i)) == null; i++) {
                    try {
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                obj2 = null;
            }
            Object objA = f.a(f.b(obj2, strArrSplit[0]), strArrSplit[1]);
            JSONObject jSONObject2 = new JSONObject();
            int i2 = 0;
            while (i2 < jSONArray.length()) {
                String strOptString = jSONArray.optString(i2);
                String strOptString2 = jSONObject.optString(strOptString);
                if (!TextUtils.isEmpty(strOptString2)) {
                    try {
                        String str3 = (String) f.b(obj, strOptString2);
                        if (TextUtils.isEmpty(str3)) {
                            str3 = (String) f.b(obj2, strOptString2);
                            if (!TextUtils.isEmpty(str3)) {
                                jSONObject2.put(strOptString, str3);
                            } else if (objA instanceof String) {
                                String string = objA.toString();
                                JSONArray jSONArray2 = new JSONArray(strOptString2);
                                int i3 = 0;
                                boolean z = false;
                                while (i3 < jSONArray2.length()) {
                                    Matcher matcher = Pattern.compile(jSONArray2.optString(i3)).matcher(string);
                                    while (true) {
                                        if (!matcher.find()) {
                                            obj3 = objA;
                                            break;
                                        }
                                        String strGroup = matcher.group();
                                        int iIndexOf = strGroup.indexOf(">");
                                        int iIndexOf2 = strGroup.indexOf("<");
                                        obj3 = objA;
                                        if (iIndexOf != -1 && iIndexOf2 != -1) {
                                            try {
                                                String strSubstring = strGroup.substring(iIndexOf + 1, iIndexOf2);
                                                if (!TextUtils.isEmpty(strSubstring)) {
                                                    jSONObject2.put(strOptString, strSubstring);
                                                    z = true;
                                                    break;
                                                }
                                            } catch (Throwable unused3) {
                                            }
                                        }
                                        objA = obj3;
                                    }
                                    if (!z) {
                                        i3++;
                                        objA = obj3;
                                    }
                                }
                            }
                        } else {
                            jSONObject2.put(strOptString, str3);
                        }
                    } catch (Throwable unused4) {
                    }
                    i2++;
                    objA = obj3;
                }
                obj3 = objA;
                i2++;
                objA = obj3;
            }
            if (jSONObject2.length() <= 0) {
                return null;
            }
            com.tramini.plugin.a.d.a aVar = new com.tramini.plugin.a.d.a();
            aVar.a = jSONObject2;
            return aVar;
        } catch (Throwable unused5) {
            return null;
        }
    }

    public static com.tramini.plugin.a.d.a a(JSONObject jSONObject, com.tramini.plugin.a.d.c cVar, String str) {
        int i;
        int i2;
        String[] strArr;
        String strOptString = jSONObject.optString("pre1");
        String strOptString2 = jSONObject.optString("pre2");
        String strOptString3 = jSONObject.optString("clna");
        String strOptString4 = jSONObject.optString("mena");
        String strOptString5 = jSONObject.optString("adaptna");
        String strOptString6 = jSONObject.optString("ctrlna");
        String strOptString7 = jSONObject.optString("in_na");
        String strOptString8 = jSONObject.optString("objna_arr");
        String strOptString9 = jSONObject.optString("obj2na");
        String strOptString10 = jSONObject.optString(a.b);
        Object objD = d(strOptString7, str);
        String str2 = objD instanceof String ? (String) objD : null;
        if (TextUtils.isEmpty(str2)) {
            return null;
        }
        String[] strArrSplit = strOptString3.split(",");
        int length = strArrSplit.length;
        int i3 = 0;
        while (i3 < length) {
            Object objB = f.b(strArrSplit[i3], strOptString4);
            if (objB != null) {
                i = i3;
                i2 = length;
                strArr = strArrSplit;
                com.tramini.plugin.a.d.a aVarA = a(objB, strOptString, strOptString6, strOptString5, strOptString2, str2, strOptString8, strOptString9, strOptString10, jSONObject, cVar.e);
                if (aVarA != null) {
                    return aVarA;
                }
            } else {
                i = i3;
                i2 = length;
                strArr = strArrSplit;
            }
            i3 = i + 1;
            length = i2;
            strArrSplit = strArr;
        }
        return null;
    }

    private static Object a(Object obj, String str, String str2, String str3) {
        StringBuffer stringBuffer = new StringBuffer();
        Object objA = f.a(obj, str, stringBuffer, new AnonymousClass3(str, str3));
        return objA != null ? objA : f.a(obj, str, new StringBuffer(), new AnonymousClass4(str2, str, stringBuffer, str3));
    }

    private static Object a(Object obj, String str, String str2, String str3, String str4) {
        Object objA = f.a(obj, str, new StringBuffer(), new AnonymousClass1(str2, str3));
        if (objA == null) {
            return null;
        }
        return f.a(objA, str, new StringBuffer(), new AnonymousClass2(str4));
    }

    private static Object d(String str, String str2) {
        Map map;
        try {
            Object objInvoke = Class.forName(str).getMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
            Field[] declaredFields = objInvoke.getClass().getDeclaredFields();
            if (declaredFields != null) {
                for (Field field : declaredFields) {
                    field.setAccessible(true);
                    if ((field.get(objInvoke) instanceof Map) && (map = (Map) field.get(objInvoke)) != null && map.containsKey(str2)) {
                        return map.get(str2);
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
