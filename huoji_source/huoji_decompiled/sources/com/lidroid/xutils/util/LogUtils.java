package com.lidroid.xutils.util;

import android.text.TextUtils;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class LogUtils {
    public static boolean allowD = true;
    public static boolean allowE = true;
    public static boolean allowI = true;
    public static boolean allowV = true;
    public static boolean allowW = true;
    public static boolean allowWtf = true;
    public static CustomLogger customLogger = null;
    public static String customTagPrefix = "";

    public interface CustomLogger {
        void d(String str, String str2);

        void d(String str, String str2, Throwable th);

        void e(String str, String str2);

        void e(String str, String str2, Throwable th);

        void i(String str, String str2);

        void i(String str, String str2, Throwable th);

        void v(String str, String str2);

        void v(String str, String str2, Throwable th);

        void w(String str, String str2);

        void w(String str, String str2, Throwable th);

        void w(String str, Throwable th);

        void wtf(String str, String str2);

        void wtf(String str, String str2, Throwable th);

        void wtf(String str, Throwable th);
    }

    private LogUtils() {
    }

    public static void d(String str) {
        if (allowD) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.d(strGenerateTag, str);
            } else {
                Log.d(strGenerateTag, str);
            }
        }
    }

    public static void d(String str, Throwable th) {
        if (allowD) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.d(strGenerateTag, str, th);
            } else {
                Log.d(strGenerateTag, str, th);
            }
        }
    }

    public static void e(String str) {
        if (allowE) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.e(strGenerateTag, str);
            } else {
                Log.e(strGenerateTag, str);
            }
        }
    }

    public static void e(String str, Throwable th) {
        if (allowE) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.e(strGenerateTag, str, th);
            } else {
                Log.e(strGenerateTag, str, th);
            }
        }
    }

    private static String generateTag(StackTraceElement stackTraceElement) {
        String className = stackTraceElement.getClassName();
        String str = String.format("%s.%s(L:%d)", className.substring(className.lastIndexOf(".") + 1), stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber()));
        if (TextUtils.isEmpty(customTagPrefix)) {
            return str;
        }
        return String.valueOf(customTagPrefix) + ":" + str;
    }

    public static void i(String str) {
        if (allowI) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.i(strGenerateTag, str);
            } else {
                Log.i(strGenerateTag, str);
            }
        }
    }

    public static void i(String str, Throwable th) {
        if (allowI) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.i(strGenerateTag, str, th);
            } else {
                Log.i(strGenerateTag, str, th);
            }
        }
    }

    public static void v(String str) {
        if (allowV) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.v(strGenerateTag, str);
            } else {
                Log.v(strGenerateTag, str);
            }
        }
    }

    public static void v(String str, Throwable th) {
        if (allowV) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.v(strGenerateTag, str, th);
            } else {
                Log.v(strGenerateTag, str, th);
            }
        }
    }

    public static void w(String str) {
        if (allowW) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.w(strGenerateTag, str);
            } else {
                Log.w(strGenerateTag, str);
            }
        }
    }

    public static void w(String str, Throwable th) {
        if (allowW) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.w(strGenerateTag, str, th);
            } else {
                Log.w(strGenerateTag, str, th);
            }
        }
    }

    public static void w(Throwable th) {
        if (allowW) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.w(strGenerateTag, th);
            } else {
                Log.w(strGenerateTag, th);
            }
        }
    }

    public static void wtf(String str) {
        if (allowWtf) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.wtf(strGenerateTag, str);
            } else {
                Log.wtf(strGenerateTag, str);
            }
        }
    }

    public static void wtf(String str, Throwable th) {
        if (allowWtf) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.wtf(strGenerateTag, str, th);
            } else {
                Log.wtf(strGenerateTag, str, th);
            }
        }
    }

    public static void wtf(Throwable th) {
        if (allowWtf) {
            String strGenerateTag = generateTag(OtherUtils.getCallerStackTraceElement());
            CustomLogger customLogger2 = customLogger;
            if (customLogger2 != null) {
                customLogger2.wtf(strGenerateTag, th);
            } else {
                Log.wtf(strGenerateTag, th);
            }
        }
    }
}
