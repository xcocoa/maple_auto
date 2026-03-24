package com.tramini.plugin.a.f;

import android.text.TextUtils;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.tramini.plugin.a.d.a;
import com.tramini.plugin.a.f.f;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends f {
    public static final String a = "naitve";
    public static final String b = "html";
    public static final String c = "html_background";
    public static final String d = "html_play";
    public static final String e = "html_css";
    public static final String f = "html_x3d";
    public static final String g = "html_doctype";
    public static final String h = "html_doctype_write";
    public static final String i = "html_unknow";
    public static final String j = "0";
    public static final String k = "1";
    public static final String l = "2";
    public static final String m = "3";
    public static final String n = "4";
    public static final String o = "5";
    public static final String p = "6";
    public static final String q = "7";
    public static final String r = "8";
    public static final String s = "9";
    private static final String t = JSONObject.class.getName();

    /* JADX WARN: Removed duplicated region for block: B:69:0x0111 A[PHI: r0
      0x0111: PHI (r0v3 org.json.JSONObject) = (r0v2 org.json.JSONObject), (r0v10 org.json.JSONObject), (r0v10 org.json.JSONObject) binds: [B:72:0x0125, B:13:0x0043, B:15:0x004f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static com.tramini.plugin.a.d.a a(Object obj, String str, String[] strArr, JSONObject jSONObject, JSONArray jSONArray, String str2) {
        JSONObject jSONObjectA;
        String str3;
        String str4;
        String str5;
        JSONObject jSONObject2 = new JSONObject();
        if (obj == null) {
            return null;
        }
        try {
            jSONArray.put(jSONArray.length(), "pkg");
            HashSet hashSet = new HashSet();
            byte b2 = -1;
            int i2 = 0;
            if (str2.hashCode() == 48 && str2.equals("0")) {
                b2 = 0;
            }
            if (b2 != 0) {
                jSONObjectA = a(obj, hashSet, strArr[0], str);
                if (jSONObjectA != null) {
                    String strOptString = jSONObjectA.optString(strArr[0]);
                    if (TextUtils.isEmpty(strOptString)) {
                        str3 = "";
                        str4 = str3;
                        str5 = str4;
                    } else {
                        String str6 = i;
                        if (strOptString.contains("div id=\"mys-wrapper\" class=\"mys-wrapper\">")) {
                            str6 = (strOptString.contains("https://rr") || strOptString.contains(".mp4")) ? b : c;
                        } else if (strOptString.contains("html5AdData") && strOptString.contains("google_template_data")) {
                            str6 = d;
                        } else if (strOptString.contains("<link") && strOptString.contains("type=\"text/css")) {
                            str6 = e;
                        } else if (strOptString.contains("new videoInterstitial") && strOptString.contains("x3c")) {
                            str6 = f;
                        } else if (strOptString.contains("<!doctype html>")) {
                            str6 = strOptString.contains("doc.write") ? h : g;
                        }
                        String strD = d(strOptString, str6);
                        str3 = "";
                        str4 = str3;
                        str5 = str4;
                        while (i2 < jSONArray.length()) {
                            try {
                                String strOptString2 = jSONArray.optString(i2);
                                String strOptString3 = jSONObject.optString(strOptString2);
                                if (TextUtils.equals(strOptString3, "pkg")) {
                                    str3 = strOptString2;
                                } else if (TextUtils.equals(strOptString3, "all")) {
                                    str5 = strOptString2;
                                } else if (!TextUtils.isEmpty(strOptString3)) {
                                    String strA = a(strD, str6, strOptString2, jSONObject);
                                    if (TextUtils.equals(strOptString2, "i_lr")) {
                                        str4 = strA;
                                    }
                                    if (!TextUtils.isEmpty(strA)) {
                                        if (strOptString2.equals("pkg") && !TextUtils.isEmpty(str3)) {
                                            jSONObject2.put(str3, strA);
                                        }
                                        jSONObject2.put(strOptString2, strA);
                                    }
                                }
                            } catch (Throwable unused) {
                            }
                            i2++;
                        }
                    }
                }
            } else {
                jSONObjectA = a(obj, hashSet, strArr[1], str);
                String string = jSONObjectA.toString();
                if (!TextUtils.isEmpty(string)) {
                    String strD2 = d(string, a);
                    str3 = "";
                    str4 = str3;
                    str5 = str4;
                    while (i2 < jSONArray.length()) {
                        try {
                            String strOptString4 = jSONArray.optString(i2);
                            String strOptString5 = jSONObject.optString(strOptString4);
                            if (TextUtils.equals(strOptString5, "pkg")) {
                                str3 = strOptString4;
                            } else if (TextUtils.equals(strOptString5, "all")) {
                                str5 = strOptString4;
                            } else if (!TextUtils.isEmpty(strOptString5)) {
                                String strA2 = a(strD2, a, strOptString4, jSONObject);
                                if (TextUtils.equals(strOptString4, "i_lr")) {
                                    str4 = strA2;
                                }
                                if (!TextUtils.isEmpty(strA2)) {
                                    if (strOptString4.equals("pkg") && !TextUtils.isEmpty(str3)) {
                                        jSONObject2.put(str3, strA2);
                                    }
                                    jSONObject2.put(strOptString4, strA2);
                                }
                            }
                        } catch (Throwable unused2) {
                        }
                        i2++;
                    }
                }
            }
            com.tramini.plugin.a.d.a aVar = new com.tramini.plugin.a.d.a();
            if (jSONObject2.length() <= 0) {
                if (jSONObjectA == null) {
                    aVar.b = new a.C0225a("1", "");
                } else {
                    aVar.b = new a.C0225a("2", jSONObjectA.toString());
                }
                return aVar;
            }
            if (!TextUtils.isEmpty(str3) && TextUtils.isEmpty(jSONObject2.optString(str3, "")) && !TextUtils.isEmpty(str4)) {
                String strB = f.b(str4);
                if (TextUtils.isEmpty(strB)) {
                    strB = f.a(str4);
                    if (!TextUtils.isEmpty(strB)) {
                        jSONObject2.put(str3, strB);
                    }
                } else {
                    jSONObject2.put(str3, strB);
                }
            }
            if (jSONObjectA != null && !TextUtils.isEmpty(str5)) {
                jSONObject2.put(str5, com.tramini.plugin.a.h.c.a(jSONObjectA.toString().getBytes()));
            }
            aVar.a = jSONObject2;
            return aVar;
        } catch (Throwable unused3) {
            return null;
        }
    }

    public static com.tramini.plugin.a.d.a a(JSONObject jSONObject, com.tramini.plugin.a.d.c cVar, String str, String str2) {
        return a(f.a(jSONObject.optString("in_na"), str), jSONObject.optString("pre"), a(jSONObject.optJSONArray("p_key")), jSONObject, cVar.e, str2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0063  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String a(String str, String str2, String str3, JSONObject jSONObject) {
        byte b2;
        JSONObject jSONObjectOptJSONObject;
        String str4;
        String strOptString;
        switch (str2.hashCode()) {
            case -1852354744:
                b2 = !str2.equals(d) ? (byte) -1 : (byte) 5;
                break;
            case -1851164744:
                if (str2.equals(i)) {
                    b2 = 8;
                    break;
                }
                break;
            case -1747666366:
                if (str2.equals(c)) {
                    b2 = 2;
                    break;
                }
                break;
            case -1052935859:
                if (str2.equals(a)) {
                    b2 = 0;
                    break;
                }
                break;
            case -336860305:
                if (str2.equals(e)) {
                    b2 = 3;
                    break;
                }
                break;
            case -336842123:
                if (str2.equals(f)) {
                    b2 = 6;
                    break;
                }
                break;
            case 3213227:
                if (str2.equals(b)) {
                    b2 = 1;
                    break;
                }
                break;
            case 45377598:
                if (str2.equals(h)) {
                    b2 = 7;
                    break;
                }
                break;
            case 562203614:
                if (str2.equals(g)) {
                    b2 = 4;
                    break;
                }
                break;
        }
        String str5 = "2";
        switch (b2) {
            case 0:
                jSONObjectOptJSONObject = jSONObject.optJSONObject(str3);
                str4 = "0";
                strOptString = jSONObjectOptJSONObject.optString(str4);
                return e(strOptString, str);
            case 1:
                jSONObjectOptJSONObject = jSONObject.optJSONObject(str3);
                str4 = "1";
                strOptString = jSONObjectOptJSONObject.optString(str4);
                return e(strOptString, str);
            case 2:
                strOptString = jSONObject.optJSONObject(str3).optString(str5);
                return e(strOptString, str);
            case 3:
                jSONObjectOptJSONObject = jSONObject.optJSONObject(str3);
                str4 = "5";
                strOptString = jSONObjectOptJSONObject.optString(str4);
                return e(strOptString, str);
            case 4:
                jSONObjectOptJSONObject = jSONObject.optJSONObject(str3);
                str4 = "7";
                strOptString = jSONObjectOptJSONObject.optString(str4);
                return e(strOptString, str);
            case 5:
                String strOptString2 = jSONObject.optString("3");
                str5 = "4";
                String strOptString3 = jSONObject.optString("4");
                String strA = f.b.a(str, strOptString2);
                if (TextUtils.isEmpty(strA)) {
                    str = f.b.a(str, strOptString3);
                    strOptString = jSONObject.optJSONObject(str3).optString(str5);
                    return e(strOptString, str);
                }
                str = f.d(strA);
                strOptString = jSONObject.optJSONObject(str3).optString("3");
                return e(strOptString, str);
            case 6:
                String strA2 = f.b.a(str, jSONObject.optString("6"));
                if (TextUtils.isEmpty(strA2)) {
                    return "";
                }
                str = f.d(strA2);
                strOptString = jSONObject.optJSONObject(str3).optString("3");
                return e(strOptString, str);
            case 7:
                str = f.b.a(str, jSONObject.optString("8"));
                strOptString = jSONObject.optJSONObject(str3).optString(str5);
                return e(strOptString, str);
            default:
                jSONObjectOptJSONObject = jSONObject.optJSONObject(str3);
                str4 = "9";
                strOptString = jSONObjectOptJSONObject.optString(str4);
                return e(strOptString, str);
        }
    }

    private static JSONObject a(Object obj, Set<Object> set, String str, String str2) {
        if (obj != null && !set.contains(obj)) {
            set.add(obj);
            Class<?> superclass = obj.getClass();
            ArrayList<Field> arrayList = new ArrayList();
            do {
                arrayList.addAll(Arrays.asList(superclass.getDeclaredFields()));
                superclass = superclass.getSuperclass();
            } while (superclass.getName().startsWith(str2));
            for (Field field : arrayList) {
                field.setAccessible(true);
                try {
                    Object obj2 = field.get(obj);
                    if (obj2 != null) {
                        if (field.getType().getName().equals("interface") || obj2.getClass().getName().startsWith(str2)) {
                            JSONObject jSONObjectA = a(obj2, set, str, str2);
                            if (jSONObjectA != null) {
                                return jSONObjectA;
                            }
                        } else if (field.getType().getName().equals(t)) {
                            JSONObject jSONObject = (JSONObject) obj2;
                            if (jSONObject.has(str)) {
                                return jSONObject;
                            }
                        } else {
                            continue;
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return null;
    }

    private static String[] a(JSONArray jSONArray) {
        try {
            int length = jSONArray.length();
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                try {
                    strArr[i2] = jSONArray.getString(i2);
                } catch (JSONException unused) {
                    return strArr;
                }
            }
            return strArr;
        } catch (JSONException unused2) {
            return null;
        }
    }

    private static String d(String str, String str2) {
        str2.hashCode();
        switch (str2) {
            case "html_play":
            case "html_x3d":
                return f(f.c(str.replace("\\\\\\\\x", "%").replaceAll("\\\\x", "%").replaceAll("\\\\n", "")));
            case "naitve":
                return str.replace("\\/", "/");
            case "html_doctype_write":
                return f(f.c(str.replace("x22", "\"").replace("x26", "&").replace("x27", "'").replace("x3c", "<").replace("x3d", "=").replace("x3e", ">")));
            default:
                return f(f.c(str));
        }
    }

    private static String e(String str) {
        return str.contains("div id=\"mys-wrapper\" class=\"mys-wrapper\">") ? (str.contains("https://rr") || str.contains(".mp4")) ? b : c : (str.contains("html5AdData") && str.contains("google_template_data")) ? d : (str.contains("<link") && str.contains("type=\"text/css")) ? e : (str.contains("new videoInterstitial") && str.contains("x3c")) ? f : str.contains("<!doctype html>") ? str.contains("doc.write") ? h : g : i;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0078 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String e(String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            String strA = "";
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i2);
                if (jSONObjectOptJSONObject != null) {
                    int iOptInt = jSONObjectOptJSONObject.optInt(NativeAdvancedJsUtils.p, -1);
                    String strOptString = jSONObjectOptJSONObject.optString("param", "");
                    if (iOptInt != 11) {
                        if (iOptInt != 13) {
                            if (iOptInt != 101) {
                                if (iOptInt == 102) {
                                    if (TextUtils.isEmpty(str2)) {
                                        continue;
                                    } else {
                                        strA = f.c(str2, "'" + strOptString + "'\\s*:\\s*'(.*?)'");
                                    }
                                }
                                if (TextUtils.isEmpty(strA)) {
                                    return strA;
                                }
                            } else if (TextUtils.isEmpty(str2)) {
                                continue;
                            } else {
                                strA = f.b.a(str2, strOptString);
                                if (TextUtils.isEmpty(strA)) {
                                }
                            }
                        } else if (TextUtils.isEmpty(str2)) {
                            continue;
                        } else {
                            strA = f.d.b(str2, strOptString);
                            if (TextUtils.isEmpty(strA)) {
                            }
                        }
                    } else if (TextUtils.isEmpty(str2)) {
                        continue;
                    } else {
                        strA = f.d.a(str2, strOptString);
                        if (TextUtils.isEmpty(strA)) {
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    private static String f(String str) {
        return str.replaceAll("&amp;", "&").replaceAll("&quot;", "\"");
    }
}
