package com.tramini.plugin.a.f;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.anythink.expressad.advanced.js.NativeAdvancedJsUtils;
import com.tramini.plugin.a.d.a;
import com.tramini.plugin.a.f.f;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Properties;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends f {

    /* JADX INFO: renamed from: com.tramini.plugin.a.f.b$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {
        public final /* synthetic */ WebView a;
        public final /* synthetic */ ExecutorService b;
        public final /* synthetic */ String[] c;

        public AnonymousClass1(WebView webView, ExecutorService executorService, String[] strArr) {
            this.a = webView;
            this.b = executorService;
            this.c = strArr;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (this.a == null) {
                    synchronized (this.b) {
                        this.b.notifyAll();
                    }
                }
                this.a.post(new Runnable() { // from class: com.tramini.plugin.a.f.b.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (Build.VERSION.SDK_INT >= 19) {
                            AnonymousClass1.this.a.evaluateJavascript("(function() { return (document.getElementsByTagName('html')[0].innerHTML); })();", new ValueCallback<String>() { // from class: com.tramini.plugin.a.f.b.1.1.1
                                private void a(String str) {
                                    Properties properties = new Properties();
                                    try {
                                        properties.load(new StringReader("unicodedString=".concat(String.valueOf(str))));
                                    } catch (IOException unused) {
                                    }
                                    String property = properties.getProperty("unicodedString");
                                    if (property.length() > 2) {
                                        AnonymousClass1.this.c[0] = property.substring(1, property.length() - 1);
                                    }
                                    synchronized (AnonymousClass1.this.b) {
                                        AnonymousClass1.this.b.notifyAll();
                                    }
                                }

                                @Override // android.webkit.ValueCallback
                                public final /* synthetic */ void onReceiveValue(String str) {
                                    Properties properties = new Properties();
                                    try {
                                        properties.load(new StringReader("unicodedString=".concat(String.valueOf(str))));
                                    } catch (IOException unused) {
                                    }
                                    String property = properties.getProperty("unicodedString");
                                    if (property.length() > 2) {
                                        AnonymousClass1.this.c[0] = property.substring(1, property.length() - 1);
                                    }
                                    synchronized (AnonymousClass1.this.b) {
                                        AnonymousClass1.this.b.notifyAll();
                                    }
                                }
                            });
                        }
                    }
                });
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0268 A[Catch: all -> 0x02a8, TRY_LEAVE, TryCatch #4 {all -> 0x02a8, blocks: (B:3:0x002f, B:6:0x003e, B:8:0x0042, B:10:0x004b, B:12:0x0055, B:15:0x006a, B:17:0x0070, B:20:0x0080, B:84:0x0205, B:86:0x0210, B:88:0x0216, B:90:0x021c, B:92:0x0226, B:94:0x022e, B:96:0x0238, B:98:0x023e, B:100:0x0244, B:101:0x024c, B:106:0x0265, B:103:0x0252, B:105:0x0258, B:108:0x0268, B:111:0x0274, B:113:0x027a, B:114:0x027f, B:115:0x0282, B:116:0x0287, B:118:0x028c, B:119:0x0292, B:121:0x0298, B:122:0x029d, B:38:0x00c1, B:42:0x00e5, B:80:0x01d7, B:73:0x019c, B:75:0x01aa, B:77:0x01d2), top: B:137:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0210 A[Catch: all -> 0x02a8, TryCatch #4 {all -> 0x02a8, blocks: (B:3:0x002f, B:6:0x003e, B:8:0x0042, B:10:0x004b, B:12:0x0055, B:15:0x006a, B:17:0x0070, B:20:0x0080, B:84:0x0205, B:86:0x0210, B:88:0x0216, B:90:0x021c, B:92:0x0226, B:94:0x022e, B:96:0x0238, B:98:0x023e, B:100:0x0244, B:101:0x024c, B:106:0x0265, B:103:0x0252, B:105:0x0258, B:108:0x0268, B:111:0x0274, B:113:0x027a, B:114:0x027f, B:115:0x0282, B:116:0x0287, B:118:0x028c, B:119:0x0292, B:121:0x0298, B:122:0x029d, B:38:0x00c1, B:42:0x00e5, B:80:0x01d7, B:73:0x019c, B:75:0x01aa, B:77:0x01d2), top: B:137:0x002f }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x022c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static com.tramini.plugin.a.d.a a(Object obj, String str, String str2, long j, long j2, JSONObject jSONObject, String str3, JSONArray jSONArray, String str4) {
        String str5;
        JSONObject jSONObject2;
        String str6;
        JSONObject jSONObject3;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        int i;
        Field[] fieldArr;
        String strOptString;
        JSONObject jSONObject4;
        String str13;
        JSONObject jSONObject5;
        String str14;
        String str15;
        String str16;
        int i2;
        String str17;
        a.C0225a c0225a;
        a.C0225a c0225a2;
        JSONObject jSONObject6;
        String strA;
        String strA2;
        String str18;
        String str19;
        Object obj2 = obj;
        String str20 = str + obj.getClass().getName() + ",";
        JSONObject jSONObject7 = new JSONObject();
        try {
            String str21 = "i_lr";
            String str22 = "all";
            String str23 = "pkg";
            String str24 = "";
            if (!str4.equals("2")) {
                str5 = "2";
                ArrayList arrayList = new ArrayList();
                f.a(obj.getClass(), arrayList);
                int size = arrayList.size();
                Field[] fieldArr2 = new Field[size];
                arrayList.toArray(fieldArr2);
                if (size != 0) {
                    String strB = "";
                    String str25 = strB;
                    String str26 = str25;
                    String str27 = str26;
                    jSONObject2 = null;
                    int i3 = 0;
                    while (i3 < size) {
                        Field field = fieldArr2[i3];
                        field.setAccessible(true);
                        Object obj3 = field.get(obj2);
                        JSONObject jSONObjectC = c(obj3, str2);
                        if (jSONObjectC != null) {
                            try {
                                String strOptString2 = jSONObjectC.optString("xml");
                                strB = b(obj3);
                                String strOptString3 = jSONObjectC.optString(a.b);
                                if (TextUtils.isEmpty(str3)) {
                                    fieldArr = fieldArr2;
                                    strOptString = str24;
                                } else {
                                    fieldArr = fieldArr2;
                                    try {
                                        strOptString = jSONObjectC.optString(str3);
                                    } catch (Throwable unused) {
                                        str12 = str24;
                                        i = size;
                                    }
                                }
                                str12 = str24;
                                i = size;
                                for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                                    try {
                                        String strOptString4 = jSONArray.optString(i4);
                                        String strOptString5 = jSONObject.optString(strOptString4);
                                        if (TextUtils.equals(strOptString5, str23)) {
                                            str26 = strOptString4;
                                        } else if (TextUtils.equals(strOptString5, str22)) {
                                            str27 = strOptString4;
                                        } else {
                                            try {
                                                if (!TextUtils.isEmpty(strOptString5)) {
                                                    String strA3 = a(strOptString5, obj3, jSONObjectC, strOptString2, strB, strOptString3, strOptString);
                                                    if (!TextUtils.isEmpty(strA3)) {
                                                        jSONObject7.put(strOptString4, strA3);
                                                    }
                                                    if (TextUtils.equals(strOptString4, str21)) {
                                                        str25 = strA3;
                                                    }
                                                }
                                            } catch (Throwable unused2) {
                                            }
                                        }
                                    } catch (Throwable unused3) {
                                    }
                                }
                            } catch (Throwable unused4) {
                                str12 = str24;
                                i = size;
                                fieldArr = fieldArr2;
                            }
                        } else {
                            str12 = str24;
                            i = size;
                            fieldArr = fieldArr2;
                            if (obj3 != null && !str20.contains(obj3.getClass().getName())) {
                                i2 = i;
                                jSONObject4 = jSONObjectC;
                                str16 = str23;
                                str17 = str12;
                                str15 = str22;
                                str14 = str21;
                                jSONObject5 = jSONObject7;
                                str13 = str20;
                                com.tramini.plugin.a.d.a aVarA = a(obj3, str20, str2, j, j2, jSONObject, str3, jSONArray, str4);
                                if (aVarA != null && aVarA.a != null) {
                                    return aVarA;
                                }
                            }
                            i3++;
                            jSONObject2 = jSONObject4;
                            str24 = str17;
                            size = i2;
                            str23 = str16;
                            str22 = str15;
                            str21 = str14;
                            jSONObject7 = jSONObject5;
                            str20 = str13;
                            fieldArr2 = fieldArr;
                            obj2 = obj;
                        }
                        jSONObject4 = jSONObjectC;
                        str16 = str23;
                        str15 = str22;
                        str14 = str21;
                        jSONObject5 = jSONObject7;
                        str13 = str20;
                        str17 = str12;
                        i2 = i;
                        i3++;
                        jSONObject2 = jSONObject4;
                        str24 = str17;
                        size = i2;
                        str23 = str16;
                        str22 = str15;
                        str21 = str14;
                        jSONObject7 = jSONObject5;
                        str20 = str13;
                        fieldArr2 = fieldArr;
                        obj2 = obj;
                    }
                    str6 = str24;
                    jSONObject3 = jSONObject7;
                    str7 = str6;
                    str8 = strB;
                    str9 = str25;
                    str10 = str26;
                    str11 = str27;
                    com.tramini.plugin.a.d.a aVar = new com.tramini.plugin.a.d.a();
                    if (jSONObject3.length() > 0) {
                    }
                }
            } else if (!(obj2 instanceof ViewGroup) || ((ViewGroup) obj2).getChildCount() <= 0) {
                str5 = "2";
            } else {
                View childAt = ((ViewGroup) obj2).getChildAt(0);
                if (childAt instanceof WebView) {
                    str5 = "2";
                    strA2 = a((WebView) childAt, j, j2);
                    if (!TextUtils.isEmpty(strA2)) {
                        str18 = "";
                        str10 = str18;
                        str19 = str10;
                        for (int i5 = 0; i5 < jSONArray.length(); i5++) {
                            String strOptString6 = jSONArray.optString(i5);
                            String strOptString7 = jSONObject.optString(strOptString6);
                            if (TextUtils.equals(strOptString7, "pkg")) {
                                str10 = strOptString6;
                            } else if (TextUtils.equals(strOptString7, "all")) {
                                str19 = strOptString6;
                            } else {
                                try {
                                    if (!TextUtils.isEmpty(strOptString7)) {
                                        String strD = d(strOptString7, strA2);
                                        if (!TextUtils.isEmpty(strD)) {
                                            jSONObject7.put(strOptString6, strD);
                                        }
                                        if (TextUtils.equals(strOptString6, "i_lr")) {
                                            str18 = strD;
                                        }
                                    }
                                } catch (Throwable unused5) {
                                }
                            }
                        }
                    }
                    str11 = str19;
                    str8 = "";
                    jSONObject3 = jSONObject7;
                    str7 = strA2;
                    str6 = str8;
                    str9 = str18;
                    jSONObject2 = null;
                    com.tramini.plugin.a.d.a aVar2 = new com.tramini.plugin.a.d.a();
                    if (jSONObject3.length() > 0) {
                        String str28 = str5;
                        if (str4.equals(str28)) {
                            if (TextUtils.isEmpty(str7)) {
                                c0225a2 = new a.C0225a("1", str6);
                                aVar2.b = c0225a2;
                            } else {
                                c0225a = new a.C0225a(str28, str7);
                                aVar2.b = c0225a;
                            }
                        } else if (jSONObject2 == null) {
                            c0225a2 = new a.C0225a("1", str6);
                            aVar2.b = c0225a2;
                        } else {
                            if (!TextUtils.isEmpty(str8)) {
                                jSONObject2.put("obj_source_html", str8);
                            }
                            c0225a = new a.C0225a(str28, jSONObject2.toString());
                            aVar2.b = c0225a;
                        }
                        return aVar2;
                    }
                    if (TextUtils.isEmpty(str9) || TextUtils.isEmpty(str10)) {
                        jSONObject6 = jSONObject3;
                    } else {
                        String strA4 = f.a(str9);
                        if (!TextUtils.isEmpty(strA4)) {
                            jSONObject6 = jSONObject3;
                            jSONObject6.put(str10, strA4);
                        }
                    }
                    if (str4.equals(str5)) {
                        if (!TextUtils.isEmpty(str7) && !TextUtils.isEmpty(str11)) {
                            strA = com.tramini.plugin.a.h.c.a(str7.getBytes());
                            jSONObject6.put(str11, strA);
                        }
                    } else if (jSONObject2 != null && !TextUtils.isEmpty(str11)) {
                        strA = com.tramini.plugin.a.h.c.a(jSONObject2.toString().getBytes());
                        jSONObject6.put(str11, strA);
                    }
                    aVar2.a = jSONObject6;
                    return aVar2;
                }
                str5 = "2";
                strA2 = "";
                str18 = strA2;
                str10 = str18;
                str19 = str10;
                str11 = str19;
                str8 = "";
                jSONObject3 = jSONObject7;
                str7 = strA2;
                str6 = str8;
                str9 = str18;
                jSONObject2 = null;
                com.tramini.plugin.a.d.a aVar22 = new com.tramini.plugin.a.d.a();
                if (jSONObject3.length() > 0) {
                }
            }
            str6 = "";
            jSONObject3 = jSONObject7;
            str10 = str6;
            str7 = str10;
            str9 = str7;
            str8 = str9;
            str11 = str8;
            jSONObject2 = null;
            com.tramini.plugin.a.d.a aVar222 = new com.tramini.plugin.a.d.a();
            if (jSONObject3.length() > 0) {
            }
        } catch (Throwable unused6) {
            return null;
        }
    }

    public static com.tramini.plugin.a.d.a a(JSONObject jSONObject, com.tramini.plugin.a.d.c cVar, String str, String str2) {
        return a(f.a(jSONObject.optString("in_na"), str), "", jSONObject.optString("tobj_k"), jSONObject.optLong("bwt", UMAmapConfig.AMAP_CACHE_WRITE_TIME), jSONObject.optLong("bswt", com.anythink.expressad.exoplayer.i.a.f), jSONObject, jSONObject.optString("bu_k"), cVar.e, str2);
    }

    private static String a(WebView webView, long j, long j2) {
        if (Build.VERSION.SDK_INT < 19) {
            return "";
        }
        try {
            Thread.sleep(j);
        } catch (InterruptedException unused) {
        }
        ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(2);
        String[] strArr = new String[1];
        try {
            executorServiceNewFixedThreadPool.submit(new AnonymousClass1(webView, executorServiceNewFixedThreadPool, strArr));
        } catch (Throwable unused2) {
        }
        try {
            synchronized (executorServiceNewFixedThreadPool) {
                executorServiceNewFixedThreadPool.wait(j + j2);
            }
            executorServiceNewFixedThreadPool.shutdown();
            return strArr[0] != null ? strArr[0] : "";
        } catch (Exception unused3) {
            return "";
        }
    }

    private static String a(Object obj) {
        if (obj == null) {
            return "";
        }
        try {
            ArrayList<Field> arrayList = new ArrayList();
            f.a(obj.getClass(), arrayList);
            for (Field field : arrayList) {
                if (field != null) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 != null && (obj2 instanceof String) && ((String) obj2).endsWith(".mp4")) {
                        return (String) obj2;
                    }
                }
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0154 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0155 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String a(String str, Object obj, JSONObject jSONObject, String str2, String str3, String str4, String str5) {
        StringBuilder sb;
        try {
            JSONArray jSONArray = new JSONArray(str);
            String strOptString = "";
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    int iOptInt = jSONObjectOptJSONObject.optInt(NativeAdvancedJsUtils.p, -1);
                    String strOptString2 = jSONObjectOptJSONObject.optString("param", "");
                    if (iOptInt != 1) {
                        if (iOptInt != 2) {
                            if (iOptInt != 19) {
                                if (iOptInt != 21) {
                                    if (iOptInt != 29) {
                                        if (iOptInt != 39) {
                                            if (iOptInt != 41) {
                                                switch (iOptInt) {
                                                    case 11:
                                                        if (TextUtils.isEmpty(str2)) {
                                                            continue;
                                                        } else {
                                                            strOptString = f.d.a(str2, strOptString2);
                                                            if (TextUtils.isEmpty(strOptString)) {
                                                                return strOptString;
                                                            }
                                                        }
                                                        break;
                                                    case 12:
                                                        if (TextUtils.isEmpty(str2)) {
                                                            continue;
                                                        } else {
                                                            String strC = f.c(str2, strOptString2 + "=\"(.*?)\"");
                                                            strOptString = !TextUtils.isEmpty(strC) ? strC.replace("\"", "") : "";
                                                            if (TextUtils.isEmpty(strOptString)) {
                                                            }
                                                        }
                                                        break;
                                                    case 13:
                                                        if (TextUtils.isEmpty(str2)) {
                                                            continue;
                                                        } else {
                                                            strOptString = f.d.b(str2, strOptString2);
                                                            if (TextUtils.isEmpty(strOptString)) {
                                                            }
                                                        }
                                                        break;
                                                    default:
                                                        switch (iOptInt) {
                                                            case 31:
                                                                if (TextUtils.isEmpty(str4)) {
                                                                    continue;
                                                                } else {
                                                                    strOptString = f.c(str4, strOptString2 + ".*?\\>(.*?)(</span>|</div>)");
                                                                    if (TextUtils.isEmpty(strOptString)) {
                                                                    }
                                                                }
                                                                break;
                                                            case 32:
                                                                if (TextUtils.isEmpty(str4)) {
                                                                    continue;
                                                                } else {
                                                                    sb = new StringBuilder();
                                                                    sb.append(strOptString2);
                                                                    sb.append("=(\"|')(.*?)(\"|')");
                                                                    strOptString = f.b(str4, sb.toString(), 2);
                                                                    if (TextUtils.isEmpty(strOptString)) {
                                                                    }
                                                                }
                                                                break;
                                                            case 33:
                                                                if (!TextUtils.isEmpty(str4)) {
                                                                    strOptString = f.b(str4, "<(img|IMG).*?" + strOptString2 + "(.*?)(/>|></img>|>)", 2);
                                                                    break;
                                                                } else {
                                                                    continue;
                                                                }
                                                            case 34:
                                                                if (TextUtils.isEmpty(str4)) {
                                                                    continue;
                                                                } else {
                                                                    sb = new StringBuilder("(");
                                                                    sb.append(strOptString2);
                                                                    sb.append(")(http.*?)(");
                                                                    sb.append(strOptString2);
                                                                    sb.append(")");
                                                                    strOptString = f.b(str4, sb.toString(), 2);
                                                                    if (TextUtils.isEmpty(strOptString)) {
                                                                    }
                                                                }
                                                                break;
                                                            default:
                                                                if (TextUtils.isEmpty(strOptString)) {
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                            } else if (TextUtils.isEmpty(str5)) {
                                                continue;
                                            } else {
                                                strOptString = f.b.a(str5, strOptString2);
                                                if (TextUtils.isEmpty(strOptString)) {
                                                }
                                            }
                                        } else if (TextUtils.isEmpty(str4)) {
                                            continue;
                                        } else {
                                            strOptString = f.b.a(str4, strOptString2);
                                            if (TextUtils.isEmpty(strOptString)) {
                                            }
                                        }
                                    } else if (TextUtils.isEmpty(str3)) {
                                        continue;
                                    } else {
                                        strOptString = f.b.a(str3, strOptString2);
                                        if (TextUtils.isEmpty(strOptString)) {
                                        }
                                    }
                                } else if (TextUtils.isEmpty(str3)) {
                                    continue;
                                } else {
                                    Matcher matcher = Pattern.compile(strOptString2, 34).matcher(str3);
                                    if (matcher.find()) {
                                        strOptString = matcher.group(1);
                                    }
                                    if (TextUtils.isEmpty(strOptString)) {
                                    }
                                }
                            } else if (TextUtils.isEmpty(str2)) {
                                continue;
                            } else {
                                strOptString = f.b.a(str2, strOptString2);
                                if (TextUtils.isEmpty(strOptString)) {
                                }
                            }
                        } else if (obj != null) {
                            strOptString = a(obj);
                            if (TextUtils.isEmpty(strOptString)) {
                            }
                        } else {
                            continue;
                        }
                    } else if (jSONObject != null) {
                        strOptString = jSONObject.optString(strOptString2, "");
                        if (TextUtils.isEmpty(strOptString)) {
                        }
                    } else {
                        continue;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }

    private static String b(Object obj) {
        if (obj == null) {
            return "";
        }
        try {
            ArrayList<Field> arrayList = new ArrayList();
            f.a(obj.getClass(), arrayList);
            for (Field field : arrayList) {
                if (field != null) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 != null && (obj2 instanceof String) && ((String) obj2).contains("<!DOCTYPE html>")) {
                        return (String) obj2;
                    }
                }
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    private static JSONObject c(Object obj, String str) {
        try {
            ArrayList<Field> arrayList = new ArrayList();
            f.a(obj.getClass(), arrayList);
            for (Field field : arrayList) {
                if (field != null) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 != null && (obj2 instanceof JSONObject) && !TextUtils.isEmpty(((JSONObject) obj2).optString(str, ""))) {
                        return (JSONObject) obj2;
                    }
                }
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String d(String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            String strA = "";
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    int iOptInt = jSONObjectOptJSONObject.optInt(NativeAdvancedJsUtils.p, -1);
                    String strOptString = jSONObjectOptJSONObject.optString("param", "");
                    if (iOptInt == 101) {
                        if (TextUtils.isEmpty(str2)) {
                            continue;
                        } else {
                            strA = f.b.a(str2, strOptString);
                        }
                    }
                    if (!TextUtils.isEmpty(strA)) {
                        return strA;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        return "";
    }
}
