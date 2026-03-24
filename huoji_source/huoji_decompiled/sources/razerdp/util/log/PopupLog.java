package razerdp.util.log;

import android.text.TextUtils;
import android.util.Log;
import java.util.logging.Logger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import z2.qf0;

/* JADX INFO: loaded from: classes2.dex */
public class PopupLog {
    private static final boolean[] OooO00o = {false};
    private static final String OooO0O0 = "BasePopup";
    private static final int OooO0OO = 4000;
    private static final boolean OooO0Oo = true;

    public enum LogMethod {
        i,
        d,
        w,
        e,
        v
    }

    public static /* synthetic */ class OooO00o {
        public static final /* synthetic */ int[] OooO00o;

        static {
            int[] iArr = new int[LogMethod.values().length];
            OooO00o = iArr;
            try {
                iArr[LogMethod.d.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                OooO00o[LogMethod.e.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                OooO00o[LogMethod.i.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                OooO00o[LogMethod.v.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                OooO00o[LogMethod.w.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void OooO(String str, Object... objArr) {
        OooOO0O(LogMethod.i, str, objArr);
    }

    public static void OooO00o(String str, Object... objArr) {
        OooOO0O(LogMethod.d, str, objArr);
    }

    public static void OooO0O0(Object... objArr) {
        OooO00o(OooO0O0, objArr);
    }

    public static void OooO0OO(String str, Object... objArr) {
        OooOO0O(LogMethod.e, str, objArr);
    }

    public static void OooO0Oo(Object... objArr) {
        OooO0OO(OooO0O0, objArr);
    }

    private static StackTraceElement OooO0o() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        int iOooO0oO = OooO0oO(stackTrace, PopupLog.class);
        if (iOooO0oO == -1 && (iOooO0oO = OooO0oO(stackTrace, Logger.class)) == -1 && (iOooO0oO = OooO0oO(stackTrace, Log.class)) == -1) {
            return null;
        }
        return stackTrace[iOooO0oO];
    }

    private static String OooO0o0(Object... objArr) {
        return OooOo00(qf0.OooO0o(objArr));
    }

    private static int OooO0oO(StackTraceElement[] stackTraceElementArr, Class cls) {
        int i = -1;
        for (int i2 = 0; i2 < stackTraceElementArr.length; i2++) {
            if (!TextUtils.equals(stackTraceElementArr[i2].getClassName(), cls.getName())) {
                if (i > -1) {
                    break;
                }
            } else {
                i = i2;
            }
        }
        if (i == -1) {
            return i;
        }
        int i3 = i + 1;
        return i3 >= stackTraceElementArr.length ? stackTraceElementArr.length - 1 : i3;
    }

    public static void OooO0oo(Object obj) {
        OooO(OooO0O0, obj);
    }

    public static boolean OooOO0() {
        return OooO00o[0];
    }

    private static void OooOO0O(LogMethod logMethod, String str, Object... objArr) {
        if (OooOO0()) {
            try {
                String strOooO0o0 = OooO0o0(objArr);
                if (strOooO0o0.length() > 4000) {
                    while (strOooO0o0.length() > 4000) {
                        strOooO0o0 = strOooO0o0.replace(strOooO0o0.substring(0, 4000), "");
                        OooOO0o(logMethod, str, strOooO0o0);
                    }
                }
                OooOO0o(logMethod, str, strOooO0o0);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private static void OooOO0o(LogMethod logMethod, String str, String str2) {
        if (OooOO0()) {
            int i = OooO00o.OooO00o[logMethod.ordinal()];
            if (i == 1) {
                Log.d(str, str2);
                return;
            }
            if (i == 2) {
                Log.e(str, str2);
                return;
            }
            if (i != 3) {
                if (i == 4) {
                    Log.v(str, str2);
                    return;
                } else if (i == 5) {
                    Log.w(str, str2);
                    return;
                }
            }
            Log.i(str, str2);
        }
    }

    public static void OooOOO(String str, Object... objArr) {
        OooOO0O(LogMethod.v, str, objArr);
    }

    public static void OooOOO0(boolean z) {
        OooO00o[0] = z;
    }

    public static void OooOOOO(Object... objArr) {
        OooOOO(OooO0O0, objArr);
    }

    public static void OooOOOo(String str, Object... objArr) {
        OooOO0O(LogMethod.w, str, objArr);
    }

    public static String OooOOo(String str) {
        StringBuilder sb;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "json为空";
        }
        try {
            if (str.startsWith("{")) {
                String string = new JSONObject(str).toString(2);
                sb = new StringBuilder();
                sb.append("\n================JSON================\n");
                sb.append(string);
                sb.append('\n');
                str2 = "================JSON================\n";
            } else {
                if (!str.startsWith("[")) {
                    return str;
                }
                String string2 = new JSONArray(str).toString(4);
                sb = new StringBuilder();
                sb.append("\n================JSONARRAY================\n");
                sb.append(string2);
                sb.append('\n');
                str2 = "================JSONARRAY================\n";
            }
            sb.append(str2);
            str = sb.toString();
            return str;
        } catch (JSONException unused) {
            return str;
        }
    }

    public static void OooOOo0(Object... objArr) {
        OooOOOo(OooO0O0, objArr);
    }

    public static String OooOOoo(Class cls, int i) {
        return ".(" + cls.getSimpleName() + ".java:" + i + ")";
    }

    private static String OooOo00(String str) {
        int lineNumber;
        String methodName;
        StackTraceElement stackTraceElementOooO0o = OooO0o();
        String fileName = "unknow";
        if (stackTraceElementOooO0o != null) {
            fileName = stackTraceElementOooO0o.getFileName();
            methodName = stackTraceElementOooO0o.getMethodName();
            lineNumber = stackTraceElementOooO0o.getLineNumber();
        } else {
            lineNumber = -1;
            methodName = "unknow";
        }
        StringBuilder sb = new StringBuilder();
        String strOooOOo = OooOOo(str);
        sb.append("  (");
        sb.append(fileName);
        sb.append(":");
        sb.append(lineNumber);
        sb.append(") #");
        sb.append(methodName);
        sb.append("：");
        sb.append('\n');
        sb.append(strOooOOo);
        return sb.toString();
    }
}
