package com.anythink.core.common.o;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import com.anythink.core.api.ATCustomRuleKeys;
import com.anythink.core.common.b.h;
import com.anythink.core.common.f.ao;
import com.anythink.core.common.f.av;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    public static Random a = new Random();

    public static class a {
        public static final String a = "com.android.vending";
    }

    public static double a(av avVar) {
        if (avVar != null) {
            return avVar.ag();
        }
        return 0.0d;
    }

    private static int a(int i, int[] iArr, int i2) {
        if (iArr == null) {
            return i2;
        }
        for (int i3 : iArr) {
            if (i == i3) {
                return i;
            }
        }
        return i2;
    }

    public static String a() {
        return TextUtils.isEmpty("UA_6.2.77") ? "UA_0.0.0" : "UA_6.2.77";
    }

    public static String a(int i) {
        switch (i) {
            case 2:
                return "c2s";
            case 3:
                return "s2s";
            case 4:
                return "adx";
            case 5:
                return "adx open";
            case 6:
            case 10:
            default:
                return "";
            case 7:
                return "fb in-house";
            case 8:
                return "directly";
            case 9:
                return "dynamic";
            case 11:
                return "custom in-house";
        }
    }

    public static String a(Context context) {
        String strX = com.anythink.core.common.b.n.a().x();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(e.d(context));
        stringBuffer.append("&");
        stringBuffer.append(e.f());
        stringBuffer.append("&");
        stringBuffer.append(strX);
        stringBuffer.append("&");
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append("&");
        stringBuffer.append(new Random().nextInt(10000));
        return g.a(stringBuffer.toString());
    }

    public static String a(com.anythink.core.common.f.l lVar) {
        return g.a(lVar.t() + lVar.E());
    }

    public static String a(String str, String str2, long j) {
        return str + "_" + str2 + "_" + j;
    }

    public static List<av> a(List<av> list, com.anythink.core.common.g.d dVar) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashMap map = new HashMap(3);
        ArrayList arrayList = new ArrayList();
        for (av avVar : list) {
            double dA = a(avVar);
            List arrayList2 = (List) linkedHashMap.get(String.valueOf(dA));
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(String.valueOf(dA), arrayList2);
            }
            Integer num = (Integer) map.get(String.valueOf(dA));
            if (num == null) {
                num = 0;
            }
            map.put(String.valueOf(dA), Integer.valueOf(num.intValue() + avVar.S()));
            arrayList2.add(avVar);
        }
        int i = 0;
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            List list2 = (List) entry.getValue();
            int iIntValue = ((Integer) map.get(entry.getKey())).intValue();
            int i2 = -1;
            while (true) {
                if (list2.size() <= 0) {
                    break;
                }
                if (list2.size() == 1) {
                    av avVar2 = (av) list2.get(0);
                    arrayList.add(avVar2);
                    list2.remove(0);
                    if (dVar != null) {
                        dVar.a(avVar2, i, i2);
                    }
                    i++;
                } else {
                    int iNextInt = a.nextInt(iIntValue) + 1;
                    Iterator it = list2.iterator();
                    int iS = 0;
                    while (true) {
                        if (it.hasNext()) {
                            av avVar3 = (av) it.next();
                            if (avVar3.S() + iS >= iNextInt) {
                                arrayList.add(avVar3);
                                list2.remove(avVar3);
                                iIntValue -= avVar3.S();
                                if (i2 == -1) {
                                    i2 = 0;
                                }
                                if (dVar != null) {
                                    dVar.a(avVar3, i, i2);
                                }
                                i2++;
                                i++;
                            } else {
                                iS += avVar3.S();
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static JSONObject a(Context context, String str, String str2, int i, int i2) {
        int[] iArrA = com.anythink.core.a.a.a(context).a(i);
        int i3 = iArrA[0];
        int i4 = iArrA[1];
        ao aoVarA = com.anythink.core.a.a.a(context).a(str2, i);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sr", "tp");
            jSONObject.put("rid", str);
            jSONObject.put(com.anythink.expressad.foundation.d.d.h, i3);
            jSONObject.put("ahs", i4);
            jSONObject.put("pds", aoVarA != null ? aoVarA.c : 0);
            jSONObject.put("phs", aoVarA != null ? aoVarA.d : 0);
            jSONObject.put("ap", i2);
            jSONObject.put("tpl", str2);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static void a(WebView webView) {
        if (webView == null) {
            return;
        }
        webView.removeJavascriptInterface("searchBoxjavaBridge_");
        webView.removeJavascriptInterface("accessibility");
        webView.removeJavascriptInterface("accessibilityTraversal");
        webView.getSettings().setAllowFileAccess(false);
        if (Build.VERSION.SDK_INT >= 16) {
            webView.getSettings().setAllowFileAccessFromFileURLs(false);
            webView.getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
        webView.getSettings().setSavePassword(false);
    }

    private static void a(String str, List<av> list) {
        if (list != null) {
            try {
                StringBuilder sb = new StringBuilder();
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    av avVar = list.get(i);
                    sb.append("\n");
                    sb.append(i);
                    sb.append(" --> adSourceId: ");
                    sb.append(avVar.u());
                    sb.append(", ");
                    sb.append(avVar.e());
                    sb.append(", real: ");
                    sb.append(avVar.y());
                    sb.append(", sort: ");
                    sb.append(a(avVar));
                    String strA = avVar.A();
                    if (!TextUtils.isEmpty(strA)) {
                        sb.append(", errorMsg: ");
                        sb.append(strA);
                    }
                }
                Log.e(str, sb.toString());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(List<av> list, av avVar) {
        if (list == null) {
            return;
        }
        int size = list.size();
        if (size == 0) {
            list.add(avVar);
            return;
        }
        int i = size - 1;
        for (int i2 = 0; i2 < size; i2++) {
            av avVar2 = list.get(i2);
            double dA = a(avVar);
            double dA2 = a(avVar2);
            boolean z = true;
            if (dA >= dA2) {
                list.add(i2, avVar);
            } else if (i2 == i) {
                list.add(avVar);
            } else {
                z = false;
            }
            if (z) {
                return;
            }
        }
    }

    public static void a(Map<String, Object> map, com.anythink.core.common.f.h hVar) {
        if (hVar == null || hVar.P() >= 100000) {
            return;
        }
        map.put(h.p.h, hVar);
    }

    public static boolean a(String str) {
        String str2;
        if (TextUtils.isEmpty(str) || str.length() > 128) {
            str2 = "Invalid Channel(" + str + "):Channel'length over 128";
        } else {
            if (Pattern.matches("^([.A-Za-z0-9_-]){1,128}$", str)) {
                return true;
            }
            str2 = "Invalid Channel(" + str + "): contains some characters that are not in the ^([.A-Za-z0-9_-]){1,128}$";
        }
        Log.e("anythink", str2);
        return false;
    }

    private static boolean a(List<av> list, av avVar, av avVar2, int i, int i2, boolean z) {
        if (z && avVar.b() == -1) {
            list.add(i, avVar2);
            return true;
        }
        if (a(avVar2) >= a(avVar)) {
            list.add(i, avVar2);
            return true;
        }
        if (i != i2) {
            return false;
        }
        list.add(avVar2);
        return true;
    }

    public static String b(String str, String str2, long j) {
        return a(str, str2, j) + "_refresh";
    }

    public static boolean b() {
        try {
            Map<String, Object> mapL = com.anythink.core.common.b.n.a().l();
            if (mapL == null || !mapL.containsKey(ATCustomRuleKeys.AGE)) {
                return false;
            }
            return Integer.parseInt(mapL.get(ATCustomRuleKeys.AGE).toString()) <= 13;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean b(Context context) {
        return t.a().a(context);
    }

    public static boolean b(String str) {
        String str2;
        if (TextUtils.isEmpty(str) || str.length() > 128) {
            str2 = "Invalid SubChannel(" + str + "):SubChannel'length over 128";
        } else {
            if (Pattern.matches("^([.A-Za-z0-9_-]){1,128}$", str)) {
                return true;
            }
            str2 = "Invalid SubChannel(" + str + "):SubChannel contains some characters that are not in the ^([.A-Za-z0-9_-]){1,128}$";
        }
        Log.e("anythink", str2);
        return false;
    }

    public static boolean c() {
        return t.a().b();
    }

    public static boolean c(Context context) {
        return t.a().b(context);
    }

    public static boolean c(String str) {
        StringBuilder sb;
        String str2;
        if (!TextUtils.isEmpty(str)) {
            if (str.length() > 50) {
                sb = new StringBuilder("Invalid ScenarioId(");
                sb.append(str);
                str2 = "):The length of ScenarioId must be between 1-50.";
            } else {
                if (!Pattern.matches(".*[\\u4E00-\\u9FFF\\s]+.*", str)) {
                    return true;
                }
                sb = new StringBuilder("Invalid ScenarioId(");
                sb.append(str);
                str2 = "):ScenarioId cannot contain spaces or chinese characters.";
            }
            sb.append(str2);
            Log.e("anythink", sb.toString());
        }
        return false;
    }

    private static String d(Context context) {
        String strX = com.anythink.core.common.b.n.a().x();
        if (TextUtils.isEmpty(strX)) {
            strX = e.d(context) + e.f();
        }
        return g.a(strX + UUID.randomUUID().toString());
    }

    public static String d(String str) {
        str.hashCode();
        switch (str) {
            case "0":
                return h.j.a;
            case "1":
                return h.j.b;
            case "2":
                return h.j.c;
            case "3":
                return "Interstitial";
            case "4":
                return h.j.e;
            default:
                return "";
        }
    }
}
