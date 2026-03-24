package mobi.oneway.export.g;

import android.util.Log;
import org.apache.commons.io.IOUtils;

/* JADX INFO: loaded from: classes2.dex */
public class m {
    private static final String a = "OnewaySdk";
    private static boolean b;
    private static boolean c;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public String toString() {
            String string;
            StackTraceElement[] stackTrace = getStackTrace();
            StringBuilder sb = new StringBuilder();
            for (int i = 1; i < 4 && i < stackTrace.length; i++) {
                StackTraceElement stackTraceElement = stackTrace[i];
                boolean zIsNativeMethod = stackTraceElement.isNativeMethod();
                String strA = s.a(stackTraceElement.getClassName());
                int lineNumber = stackTraceElement.getLineNumber();
                String fileName = stackTraceElement.getFileName();
                String methodName = stackTraceElement.getMethodName();
                if (i == 1) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(strA);
                    sb2.append(".");
                    sb2.append(methodName);
                    sb2.append(zIsNativeMethod ? "(Native)" : fileName != null ? "(" + fileName + ":" + lineNumber + ")" : "(UnSrc)");
                    string = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(strA);
                    sb3.append(".");
                    sb3.append(methodName);
                    sb3.append(zIsNativeMethod ? "(Native)" : "(" + lineNumber + ")");
                    string = sb3.toString();
                }
                sb.append("[");
                sb.append(string);
                sb.append("]");
                if (i < 3) {
                    sb.append("->");
                }
            }
            return ((Object) sb) + IOUtils.LINE_SEPARATOR_WINDOWS + getMessage();
        }
    }

    public static void a(Object obj) {
        if (c) {
            Log.v("OnewaySdk-", obj + "");
        }
    }

    public static void a(String str) {
        if (b) {
            Log.d(a, new a(str).toString());
        }
    }

    public static void a(String str, Throwable th) {
        Log.e(a, str, th);
    }

    public static void a(boolean z) {
        b = z;
    }

    public static void a(Object... objArr) {
        if (b) {
            Log.v(a, new a(s.a(objArr)).toString());
        }
    }

    public static boolean a() {
        return b;
    }

    public static void b(String str) {
        if (b) {
            Log.i(a, new a(str).toString());
        }
    }

    public static void b(boolean z) {
        c = z;
    }

    public static boolean b() {
        return c;
    }

    public static void c(String str) {
        if (b) {
            str = new a(str).toString();
        }
        Log.w(a, str);
    }

    public static void d(String str) {
        Log.e(a, new a(str).toString());
    }
}
