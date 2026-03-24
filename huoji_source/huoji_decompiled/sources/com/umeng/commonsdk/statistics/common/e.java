package com.umeng.commonsdk.statistics.common;

import android.text.TextUtils;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static boolean a = false;
    private static String b = "ULog";
    private static final int c = 1;
    private static final int d = 2;
    private static final int e = 3;
    private static final int f = 4;
    private static final int g = 5;
    private static int h = 2000;

    private e() {
    }

    private static void a(int i, String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2)) {
            int length = str2.length();
            int i2 = h;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                if (i3 >= 100) {
                    break;
                }
                if (length > i2) {
                    if (i == 1) {
                        Log.v(str, str2.substring(i4, i2));
                    } else if (i == 2) {
                        Log.d(str, str2.substring(i4, i2));
                    } else if (i == 3) {
                        Log.i(str, str2.substring(i4, i2));
                    } else if (i == 4) {
                        Log.w(str, str2.substring(i4, i2));
                    } else if (i == 5) {
                        Log.e(str, str2.substring(i4, i2));
                    }
                    i3++;
                    i4 = i2;
                    i2 = h + i2;
                } else if (i == 1) {
                    Log.v(str, str2.substring(i4, length));
                } else if (i == 2) {
                    Log.d(str, str2.substring(i4, length));
                } else if (i == 3) {
                    Log.i(str, str2.substring(i4, length));
                } else if (i == 4) {
                    Log.w(str, str2.substring(i4, length));
                } else if (i == 5) {
                    Log.e(str, str2.substring(i4, length));
                }
            }
        }
        if (th != null) {
            String strF = f(th);
            if (TextUtils.isEmpty(strF)) {
                return;
            }
            if (i == 1) {
                Log.v(str, strF);
                return;
            }
            if (i == 2) {
                Log.d(str, strF);
                return;
            }
            if (i == 3) {
                Log.i(str, strF);
            } else if (i == 4) {
                Log.w(str, strF);
            } else {
                if (i != 5) {
                    return;
                }
                Log.e(str, strF);
            }
        }
    }

    public static void a(String str) {
        a(b, str, (Throwable) null);
    }

    public static void a(String str, String str2, Throwable th) {
        if (a) {
            a(1, str, str2, th);
        }
    }

    public static void a(String str, Throwable th) {
        c(b, str, th);
    }

    public static void a(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                c(b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                c(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void a(Throwable th) {
        c(b, (String) null, th);
    }

    public static void a(Locale locale, String str, Object... objArr) {
        try {
            c(b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void b(String str) {
        b(b, str, (Throwable) null);
    }

    public static void b(String str, String str2, Throwable th) {
        if (a) {
            a(2, str, str2, th);
        }
    }

    public static void b(String str, Throwable th) {
        a(b, str, th);
    }

    public static void b(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                b(b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                b(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void b(Throwable th) {
        a(b, (String) null, th);
    }

    public static void b(Locale locale, String str, Object... objArr) {
        try {
            b(b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void c(String str) {
        c(b, str, (Throwable) null);
    }

    public static void c(String str, String str2, Throwable th) {
        if (a) {
            a(3, str, str2, th);
        }
    }

    public static void c(String str, Throwable th) {
        d(b, str, th);
    }

    public static void c(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                e(b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                e(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void c(Throwable th) {
        d(b, (String) null, th);
    }

    public static void c(Locale locale, String str, Object... objArr) {
        try {
            e(b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void d(String str) {
        d(b, str, (Throwable) null);
    }

    public static void d(String str, String str2, Throwable th) {
        if (a) {
            a(4, str, str2, th);
        }
    }

    public static void d(String str, Throwable th) {
        b(b, str, th);
    }

    public static void d(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                a(b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                a(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void d(Throwable th) {
        b(b, (String) null, th);
    }

    public static void d(Locale locale, String str, Object... objArr) {
        try {
            a(b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void e(String str) {
        e(b, str, (Throwable) null);
    }

    public static void e(String str, String str2, Throwable th) {
        if (a) {
            a(5, str, str2, th);
        }
    }

    public static void e(String str, Throwable th) {
        e(b, str, th);
    }

    public static void e(String str, Object... objArr) {
        try {
            if (str.contains("%")) {
                d(b, new Formatter().format(str, objArr).toString(), (Throwable) null);
            } else {
                d(str, objArr != null ? (String) objArr[0] : "", (Throwable) null);
            }
        } catch (Throwable th) {
            e(th);
        }
    }

    public static void e(Throwable th) {
        e(b, (String) null, th);
    }

    public static void e(Locale locale, String str, Object... objArr) {
        try {
            d(b, new Formatter(locale).format(str, objArr).toString(), (Throwable) null);
        } catch (Throwable th) {
            e(th);
        }
    }

    public static String f(Throwable th) {
        PrintWriter printWriter;
        StringWriter stringWriter = null;
        try {
            StringWriter stringWriter2 = new StringWriter();
            try {
                printWriter = new PrintWriter(stringWriter2);
                try {
                    th.printStackTrace(printWriter);
                    printWriter.flush();
                    stringWriter2.flush();
                    String string = stringWriter2.toString();
                    try {
                        stringWriter2.close();
                    } catch (Throwable unused) {
                    }
                    printWriter.close();
                    return string;
                } catch (Throwable unused2) {
                    stringWriter = stringWriter2;
                    if (stringWriter != null) {
                        try {
                            stringWriter.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    if (printWriter != null) {
                        printWriter.close();
                    }
                    return "";
                }
            } catch (Throwable unused4) {
                printWriter = null;
            }
        } catch (Throwable unused5) {
            printWriter = null;
        }
    }
}
