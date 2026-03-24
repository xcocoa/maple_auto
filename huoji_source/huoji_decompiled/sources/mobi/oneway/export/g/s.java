package mobi.oneway.export.g;

import android.text.TextUtils;
import com.umeng.commonsdk.amap.UMAmapConfig;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import z2.ae;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public class s {
    public static String a(int i) {
        return i > 1048576 ? b("%.1fM", Float.valueOf((float) ((((double) i) * 1.0d) / ((double) 1048576)))) : b("%.1fK", Float.valueOf((float) ((((double) i) * 1.0d) / ((double) 1024))));
    }

    public static String a(long j) {
        if (j > UMAmapConfig.AMAP_CACHE_WRITE_TIME) {
            return b("%.1f 万", Double.valueOf(j / 10000.0d));
        }
        return String.valueOf(j) + o4.OooO00o.OooO0Oo;
    }

    public static String a(InputStream inputStream) {
        return a(inputStream, (String) null);
    }

    public static String a(InputStream inputStream, String str) {
        if (inputStream == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReaderB = t.b(inputStream, str);
        char[] cArr = new char[4096];
        while (true) {
            int i = inputStreamReaderB.read(cArr);
            if (i == -1) {
                return sb.toString();
            }
            sb.append(cArr, 0, i);
        }
    }

    public static String a(Object obj) {
        return obj == null ? "" : obj.toString();
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str) || !str.contains(".")) {
            return str;
        }
        return str.split("\\.")[r1.length - 1];
    }

    public static String a(String str, int i) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("[\\r\\n]+");
        if (i >= strArrSplit.length) {
            return null;
        }
        return strArrSplit[i];
    }

    public static String a(String str, String str2, String str3, Object... objArr) {
        if (objArr == null || objArr.length <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append(str);
        }
        for (int i = 0; i < objArr.length - 1; i++) {
            sb.append(objArr[i]);
            if (str3 != null) {
                sb.append(str3);
            }
        }
        sb.append(objArr[objArr.length - 1]);
        if (str2 != null) {
            sb.append(str2);
        }
        return sb.toString();
    }

    public static String a(String str, List list) {
        if (list == null) {
            return null;
        }
        Object[] objArr = new Object[list.size()];
        list.toArray(objArr);
        return a(str, objArr);
    }

    public static String a(String str, Object... objArr) {
        return a(null, null, str, objArr);
    }

    public static String a(Date date) {
        return new SimpleDateFormat(ae.OooO0O0, Locale.getDefault()).format(date);
    }

    public static String a(Object... objArr) {
        return a(null, null, null, objArr);
    }

    public static boolean a(String str, String str2) {
        return str != null && str.equals(str2);
    }

    public static boolean a(String str, String... strArr) {
        if (str == null) {
            return false;
        }
        for (String str2 : strArr) {
            if (!str.equals(str2)) {
                return false;
            }
        }
        return true;
    }

    public static String b(String str, Object... objArr) {
        return String.format(Locale.getDefault(), str, objArr);
    }

    public static String b(Date date) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm", Locale.getDefault()).format(date);
    }

    public static boolean b(String str, String... strArr) {
        if (str != null && strArr.length != 0) {
            for (String str2 : strArr) {
                if (str.equals(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean c(String str, String... strArr) {
        if (str != null && strArr != null) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }
}
