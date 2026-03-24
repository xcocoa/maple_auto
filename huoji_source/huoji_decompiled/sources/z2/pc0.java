package z2;

import android.text.TextUtils;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import org.litepal.LitePalApplication;
import org.litepal.exceptions.LitePalSupportException;
import z2.qc0;

/* JADX INFO: loaded from: classes2.dex */
public class pc0 {
    private pc0() {
    }

    public static boolean OooO() {
        try {
            String[] list = LitePalApplication.OooO00o().getAssets().list("");
            if (list != null && list.length > 0) {
                for (String str : list) {
                    if (qc0.OooO00o.OooO0o0.equalsIgnoreCase(str)) {
                        return true;
                    }
                }
            }
        } catch (IOException unused) {
        }
        return false;
    }

    public static String OooO00o(String str) {
        if (TextUtils.isEmpty(str)) {
            if (str == null) {
                return null;
            }
            return "";
        }
        return str.substring(0, 1).toUpperCase(Locale.US) + str.substring(1);
    }

    public static String OooO0O0(String str) {
        if (str == null) {
            return null;
        }
        String strOooO0Oo = rb0.OooO0oo().OooO0Oo();
        return qc0.OooO00o.OooO0Oo.equals(strOooO0Oo) ? str : qc0.OooO00o.OooO0O0.equals(strOooO0Oo) ? str.toUpperCase(Locale.US) : str.toLowerCase(Locale.US);
    }

    public static void OooO0OO(String... strArr) {
        int length;
        if (strArr != null && (length = strArr.length) > 0 && length != OooO0o0(strArr[0], "?") + 1) {
            throw new LitePalSupportException(LitePalSupportException.UPDATE_CONDITIONS_EXCEPTION);
        }
    }

    public static boolean OooO0Oo(Collection<String> collection, String str) {
        if (collection == null) {
            return false;
        }
        if (str == null) {
            return collection.contains(null);
        }
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            if (str.equalsIgnoreCase(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean OooO0o(String str, String str2) {
        try {
            for (Method method : Class.forName(str).getMethods()) {
                if (str2.equals(method.getName())) {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public static int OooO0o0(String str, String str2) {
        int i = 0;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            while (true) {
                int iIndexOf = str.indexOf(str2);
                if (iIndexOf == -1) {
                    break;
                }
                i++;
                str = str.substring(iIndexOf + str2.length());
            }
        }
        return i;
    }

    public static boolean OooO0oO(String str) {
        return "boolean".equals(str) || "java.lang.Boolean".equals(str) || "float".equals(str) || "java.lang.Float".equals(str) || "double".equals(str) || "java.lang.Double".equals(str) || "int".equals(str) || "java.lang.Integer".equals(str) || "long".equals(str) || "java.lang.Long".equals(str) || "short".equals(str) || "java.lang.Short".equals(str) || "char".equals(str) || "java.lang.Character".equals(str) || "[B".equals(str) || "[Ljava.lang.Byte;".equals(str) || "java.lang.String".equals(str) || "java.util.Date".equals(str);
    }

    public static boolean OooO0oo(String str) {
        return "java.lang.String".equals(str) || "java.lang.Integer".equals(str) || "java.lang.Float".equals(str) || "java.lang.Double".equals(str) || "java.lang.Long".equals(str) || "java.lang.Short".equals(str) || "java.lang.Boolean".equals(str) || "java.lang.Character".equals(str);
    }
}
