package com.anythink.core.common.b;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Debug;
import android.os.Process;
import android.text.TextUtils;
import androidx.appcompat.widget.ActivityChooserModel;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class i implements Thread.UncaughtExceptionHandler {
    private static volatile i d = null;
    private static final String j = "0";
    private static final String k = "1";
    private static final int l = 4;
    private Thread.UncaughtExceptionHandler b;
    private Context c;
    private SharedPreferences e;
    private final String f = "crash_type";
    private final String g = "crash_msg";
    private final String h = e.c;
    private final String i = "crash_sdk_type";
    public String a = "com.anythink";

    private i(Context context) {
        this.c = context;
        this.e = context.getSharedPreferences(h.x, 0);
    }

    public static i a(Context context) {
        if (d == null) {
            synchronized (i.class) {
                if (d == null) {
                    d = new i(context);
                }
            }
        }
        return d;
    }

    private void a(Throwable th) throws JSONException {
        try {
            String strB = b(th);
            if (a(strB)) {
                String strB2 = b(strB);
                String strC = c(strB);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("crash_type", URLEncoder.encode(strB2));
                jSONObject.put("crash_msg", URLEncoder.encode(b() + "\n" + strB));
                jSONObject.put(e.c, n.a().q());
                jSONObject.put("crash_sdk_type", strC);
                SharedPreferences.Editor editorEdit = this.e.edit();
                editorEdit.putString(System.currentTimeMillis() + "_crash", jSONObject.toString());
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean a(String str) {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.c).b(n.a().o());
        if (aVarB != null) {
            if (aVarB.z() == 0) {
                return false;
            }
            String strB = aVarB.B();
            try {
                if (TextUtils.isEmpty(strB)) {
                    return true;
                }
                JSONArray jSONArray = new JSONArray(strB);
                for (int i = 0; i < jSONArray.length(); i++) {
                    if (str.contains(jSONArray.optString(i))) {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
        } else if (str.contains(this.a)) {
            return true;
        }
        return false;
    }

    private String b() {
        try {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            HashMap map = new HashMap(4);
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Thread key = it.next().getKey();
                if (key.getName().startsWith("anythink")) {
                    String str = key.getName() + "-" + key.getState();
                    map.put(str, map.containsKey(str) ? Integer.valueOf(((Integer) map.get(str)).intValue() + 1) : 1);
                    i++;
                }
            }
            try {
                JSONObject jSONObject = new JSONObject(map);
                jSONObject.put("anythink_thread_count", i);
                try {
                    ActivityManager activityManager = (ActivityManager) this.c.getSystemService(ActivityChooserModel.ATTRIBUTE_ACTIVITY);
                    Debug.MemoryInfo[] processMemoryInfo = activityManager.getProcessMemoryInfo(new int[]{Process.myPid()});
                    if (processMemoryInfo.length > 0) {
                        jSONObject.put("app_memory", (processMemoryInfo[0].getTotalPss() / 1024) + "MB");
                    }
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    activityManager.getMemoryInfo(memoryInfo);
                    if (Build.VERSION.SDK_INT >= 16) {
                        jSONObject.put("sys_total_memory", (memoryInfo.totalMem / 1048576) + "MB");
                        jSONObject.put("sys_avail_memory", (memoryInfo.availMem / 1048576) + "MB");
                    }
                } catch (Throwable unused) {
                }
                return jSONObject.toString();
            } catch (Throwable th) {
                return th.getMessage();
            }
        } catch (Throwable th2) {
            return th2.getMessage();
        }
    }

    private static String b(String str) {
        String strGroup;
        String str2 = "";
        try {
            Matcher matcher = Pattern.compile(".*?(Exception|Error|Death)", 2).matcher(str);
            strGroup = matcher.find() ? matcher.group(0) : "";
        } catch (Exception unused) {
        }
        try {
            return !TextUtils.isEmpty(strGroup) ? strGroup.replaceAll("Caused by:", "").replaceAll(o4.OooO00o.OooO0Oo, "") : strGroup;
        } catch (Exception unused2) {
            str2 = strGroup;
            return str2;
        }
    }

    private static String b(Throwable th) throws Throwable {
        PrintWriter printWriter;
        if (th == null) {
            return "";
        }
        StringWriter stringWriter = null;
        try {
            for (Throwable th2 = new Throwable(com.anythink.core.common.o.h.a(), th); th2 != null; th2 = th2.getCause()) {
                if (th2 instanceof UnknownHostException) {
                    return "";
                }
            }
            StringWriter stringWriter2 = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter2);
                try {
                    th.printStackTrace(printWriter);
                    printWriter.flush();
                    printWriter.close();
                    stringWriter2.close();
                    String string = stringWriter2.toString();
                    try {
                        stringWriter2.close();
                        stringWriter2.close();
                    } catch (Throwable unused) {
                    }
                    return string;
                } catch (Exception unused2) {
                    stringWriter = stringWriter2;
                    if (stringWriter != null) {
                        try {
                            stringWriter.close();
                        } catch (Throwable unused3) {
                            return "";
                        }
                    }
                    if (printWriter != null) {
                        stringWriter.close();
                    }
                    return "";
                } catch (Throwable th3) {
                    th = th3;
                    stringWriter = stringWriter2;
                    if (stringWriter != null) {
                        try {
                            stringWriter.close();
                        } catch (Throwable unused4) {
                            throw th;
                        }
                    }
                    if (printWriter != null) {
                        stringWriter.close();
                    }
                    throw th;
                }
            } catch (Exception unused5) {
                printWriter = null;
            } catch (Throwable th4) {
                th = th4;
                printWriter = null;
            }
        } catch (Exception unused6) {
            printWriter = null;
        } catch (Throwable th5) {
            th = th5;
            printWriter = null;
        }
    }

    private String c(String str) {
        String str2 = this.a;
        if (!TextUtils.isEmpty(str) && str.contains(str2)) {
            try {
                for (String str3 : str.split("Caused by:")) {
                    if (str3.contains(str2)) {
                        String[] strArrSplit = str3.split("\\n");
                        for (int i = 0; i < strArrSplit.length; i++) {
                            if (strArrSplit[i].contains(str2) && i <= 4) {
                                return "1";
                            }
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        return "0";
    }

    private void c() {
        Map<String, ?> all = this.e.getAll();
        Iterator<?> it = all.values().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            String string = next != null ? next.toString() : "";
            if (!TextUtils.isEmpty(string)) {
                try {
                    JSONObject jSONObject = new JSONObject(string);
                    com.anythink.core.common.n.e.b(jSONObject.optString("crash_type"), jSONObject.optString("crash_msg"), jSONObject.optString(e.c), jSONObject.optString("crash_sdk_type"));
                } catch (Exception unused) {
                }
            }
        }
        if (all.size() > 0) {
            this.e.edit().clear().commit();
        }
    }

    public final void a() {
        com.anythink.core.d.a aVarB = com.anythink.core.d.b.a(this.c).b(n.a().o());
        if (aVarB == null || aVarB.z() != 0) {
            try {
                Map<String, ?> all = this.e.getAll();
                Iterator<?> it = all.values().iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    String string = next != null ? next.toString() : "";
                    if (!TextUtils.isEmpty(string)) {
                        try {
                            JSONObject jSONObject = new JSONObject(string);
                            com.anythink.core.common.n.e.b(jSONObject.optString("crash_type"), jSONObject.optString("crash_msg"), jSONObject.optString(e.c), jSONObject.optString("crash_sdk_type"));
                        } catch (Exception unused) {
                        }
                    }
                }
                if (all.size() > 0) {
                    this.e.edit().clear().commit();
                }
                if (!(Thread.getDefaultUncaughtExceptionHandler() instanceof i)) {
                    this.b = Thread.getDefaultUncaughtExceptionHandler();
                }
                Thread.setDefaultUncaughtExceptionHandler(this);
            } catch (Exception unused2) {
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) throws JSONException {
        if (th == null) {
            return;
        }
        try {
            String strB = b(th);
            if (a(strB)) {
                String strB2 = b(strB);
                String strC = c(strB);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("crash_type", URLEncoder.encode(strB2));
                jSONObject.put("crash_msg", URLEncoder.encode(b() + "\n" + strB));
                jSONObject.put(e.c, n.a().q());
                jSONObject.put("crash_sdk_type", strC);
                SharedPreferences.Editor editorEdit = this.e.edit();
                editorEdit.putString(System.currentTimeMillis() + "_crash", jSONObject.toString());
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
        try {
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.b;
            if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this || (uncaughtExceptionHandler instanceof i)) {
                return;
            }
            uncaughtExceptionHandler.uncaughtException(thread, th);
        } catch (Exception unused2) {
        }
    }
}
