package z2;

import com.github.kevinsawicki.http.HttpRequest;
import java.util.Map;
import org.apache.http.impl.cookie.DateParseException;
import org.apache.http.impl.cookie.DateUtils;
import z2.OooOo;

/* JADX INFO: loaded from: classes.dex */
public class o00000 {
    /* JADX WARN: Removed duplicated region for block: B:30:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static OooOo.OooO00o OooO00o(o00Oo0 o00oo0) {
        boolean z;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        long jCurrentTimeMillis = System.currentTimeMillis();
        Map<String, String> map = o00oo0.OooO0OO;
        String str = map.get("Date");
        long jOooO0Oo = str != null ? OooO0Oo(str) : 0L;
        String str2 = map.get("Cache-Control");
        int i = 0;
        if (str2 != null) {
            String[] strArrSplit = str2.split(",");
            z = false;
            j = 0;
            j2 = 0;
            while (i < strArrSplit.length) {
                String strTrim = strArrSplit[i].trim();
                if (strTrim.equals("no-cache") || strTrim.equals("no-store")) {
                    z = true;
                } else if (strTrim.startsWith("max-age=")) {
                    try {
                        j = Long.parseLong(strTrim.substring(8));
                    } catch (Exception unused) {
                    }
                } else if (strTrim.startsWith("stale-while-revalidate=")) {
                    j2 = Long.parseLong(strTrim.substring(23));
                } else if (strTrim.equals("must-revalidate") || strTrim.equals("proxy-revalidate")) {
                }
                i++;
            }
            i = 1;
        } else {
            z = false;
            j = 0;
            j2 = 0;
        }
        String str3 = map.get("Expires");
        long jOooO0Oo2 = str3 != null ? OooO0Oo(str3) : 0L;
        String str4 = map.get("Last-Modified");
        long jOooO0Oo3 = str4 != null ? OooO0Oo(str4) : 0L;
        String str5 = map.get("ETag");
        if (i != 0) {
            j4 = jCurrentTimeMillis + (j * 1000);
            if (z) {
                j5 = j4;
            } else {
                Long.signum(j2);
                j5 = (j2 * 1000) + j4;
            }
            j3 = j5;
        } else {
            j3 = 0;
            if (jOooO0Oo <= 0 || jOooO0Oo2 < jOooO0Oo) {
                j4 = 0;
            } else {
                j4 = jCurrentTimeMillis + (jOooO0Oo2 - jOooO0Oo);
                j3 = j4;
            }
        }
        OooOo.OooO00o oooO00o = new OooOo.OooO00o();
        oooO00o.OooO00o = o00oo0.OooO0O0;
        oooO00o.OooO0O0 = str5;
        oooO00o.OooO0o = j4;
        oooO00o.OooO0o0 = j3;
        oooO00o.OooO0OO = jOooO0Oo;
        oooO00o.OooO0Oo = jOooO0Oo3;
        oooO00o.OooO0oO = map;
        return oooO00o;
    }

    public static String OooO0O0(Map<String, String> map) {
        return OooO0OO(map, "ISO-8859-1");
    }

    public static String OooO0OO(Map<String, String> map, String str) {
        String str2 = map.get("Content-Type");
        if (str2 != null) {
            String[] strArrSplit = str2.split(";");
            for (int i = 1; i < strArrSplit.length; i++) {
                String[] strArrSplit2 = strArrSplit[i].trim().split("=");
                if (strArrSplit2.length == 2 && strArrSplit2[0].equals(HttpRequest.PARAM_CHARSET)) {
                    return strArrSplit2[1];
                }
            }
        }
        return str;
    }

    public static long OooO0Oo(String str) {
        try {
            return DateUtils.parseDate(str).getTime();
        } catch (DateParseException unused) {
            return 0L;
        }
    }
}
