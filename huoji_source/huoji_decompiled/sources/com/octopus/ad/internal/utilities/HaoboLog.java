package com.octopus.ad.internal.utilities;

import android.content.Context;
import com.octopus.ad.internal.utilities.HaoboLogListener;
import java.lang.ref.SoftReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class HaoboLog {
    private static final boolean mIsDebug = false;
    public static String baseLogTag = "OCTOPUS_SDK";
    public static String mediationLogTag = baseLogTag + "-MEDIATION";
    public static String publicFunctionsLogTag = baseLogTag + "-INTERFACE";
    public static String httpReqLogTag = baseLogTag + "-REQUEST";
    public static String httpRespLogTag = baseLogTag + "-RESPONSE";
    public static String pbLogTag = baseLogTag + "-PB";
    public static String xmlLogTag = baseLogTag + "-XML";
    public static String jsonLogTag = baseLogTag + "-JSON";
    public static String jsLogTag = baseLogTag + "-JS";
    public static String mraidLogTag = baseLogTag + "-MRAID";
    public static String browserLogTag = baseLogTag + "-APPBROWSER";
    public static String nativeLogTag = baseLogTag + "-NATIVE";
    public static String videoLogTag = baseLogTag + "-VIDEO";
    public static String fixLog = baseLogTag + "-FIX";
    public static String pingerLogTag = baseLogTag + "-PINGER";
    public static String lruDiskUsageLogTag = baseLogTag + "-LRUDISKUSAGE";
    public static String httpProxyCacheServerLogTag = baseLogTag + "-CACHESERVER";
    public static String httpUrlSourceLogTag = baseLogTag + "-URLSOURCE";
    public static String proxyCacheLogTag = baseLogTag + "-PROXYCACHE";
    public static String proxyCacheUtilsLogTag = baseLogTag + "-PROXYCACHEUTILS";
    public static String storageUtilsLogTag = baseLogTag + "-STORAGEUTILS";
    private static SoftReference<Context> sLogContext = new SoftReference<>(null);
    private static String lastRequest = "";
    private static String lastResponse = "";
    private static String lastLog = "";
    private static final ArrayList<HaoboLogListener> listeners = new ArrayList<>();

    public static synchronized void clearLastResponse() {
        lastResponse = "";
    }

    public static void d(String str, String str2) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.D, str, str2);
            logIfLoggable(str, str2, 4, null);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.D, str, str2, th);
            logIfLoggable(str, str2, 4, th);
        }
    }

    public static void e(String str, String str2) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.E, str, str2);
            logIfLoggable(str, str2, 6, null);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.E, str, str2, th);
            logIfLoggable(str, str2, 6, th);
        }
    }

    public static synchronized String getLastLogRequest() {
        return lastLog;
    }

    public static synchronized String getLastRequest() {
        return lastRequest;
    }

    public static synchronized String getLastResponse() {
        return lastResponse;
    }

    public static String getString(int i) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, int i2, int i3) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Integer.valueOf(i2), Integer.valueOf(i3));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, int i2, int i3, int i4, int i5) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, int i2, int i3, int i4, int i5, String str, boolean z) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5), str, Boolean.valueOf(z));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, int i2, String str) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Integer.valueOf(i2), str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, int i2, String str, String str2) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Integer.valueOf(i2), str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, long j) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Long.valueOf(j));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, String str) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, str);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, String str, int i2) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, str, Integer.valueOf(i2));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, String str, int i2, String str2) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, str, Integer.valueOf(i2), str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, String str, String str2) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, str, str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, boolean z) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Boolean.valueOf(z));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getString(int i, boolean z, int i2) {
        try {
            Context context = sLogContext.get();
            if (context == null) {
                return null;
            }
            return context.getString(i, Boolean.valueOf(z), Integer.valueOf(i2));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void i(String str, String str2) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.I, str, str2);
            logIfLoggable(str, str2, 4, null);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.I, str, str2, th);
            logIfLoggable(str, str2, 4, th);
        }
    }

    private static void logIfLoggable(String str, String str2, int i, Throwable th) {
    }

    private static synchronized void notifyListener(HaoboLogListener.LOG_LEVEL log_level, String str, String str2) {
        notifyListener(log_level, str, str2, null);
    }

    private static synchronized void notifyListener(HaoboLogListener.LOG_LEVEL log_level, String str, String str2, Throwable th) {
        for (HaoboLogListener haoboLogListener : listeners) {
            if (log_level.ordinal() >= haoboLogListener.getLogLevel().ordinal()) {
                if (th != null) {
                    haoboLogListener.onReceiveMessage(log_level, str, str2, th);
                } else {
                    haoboLogListener.onReceiveMessage(log_level, str, str2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized boolean registerListener(HaoboLogListener haoboLogListener) {
        boolean z;
        if (haoboLogListener != null) {
            z = listeners.add(haoboLogListener);
        }
        return z;
    }

    public static void setErrorContext(Context context) {
        sLogContext = new SoftReference<>(context);
    }

    public static synchronized void setLastLogRequest(String str) {
        lastLog = str;
    }

    public static synchronized void setLastRequest(String str) {
        lastRequest = str;
    }

    public static synchronized void setLastResponse(String str) {
        lastResponse = str;
    }

    public static synchronized void unregisterAllListeners() {
        listeners.clear();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized boolean unregisterListener(HaoboLogListener haoboLogListener) {
        boolean z;
        if (haoboLogListener != null) {
            z = listeners.remove(haoboLogListener);
        }
        return z;
    }

    public static void v(String str, String str2) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.V, str, str2);
            logIfLoggable(str, str2, 4, null);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.V, str, str2, th);
            logIfLoggable(str, str2, 4, th);
        }
    }

    public static void w(String str, String str2) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.W, str, str2);
            logIfLoggable(str, str2, 5, null);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (str2 != null) {
            notifyListener(HaoboLogListener.LOG_LEVEL.W, str, str2, th);
            logIfLoggable(str, str2, 5, th);
        }
    }
}
