package z2;

import android.net.Uri;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public class j3 {
    private static String OooO = null;
    public static String OooO0O0 = "";
    private static String OooO0o = null;
    private static final String OooO0o0 = "http";
    private static long OooO0oO = 0;
    private static long OooO0oo = 0;
    private static String OooOO0 = null;
    private static String OooOO0O = null;
    private static String OooOO0o = null;
    public static boolean OooOOO = false;
    private static int OooOOO0 = 0;
    private static String OooOOOO = null;
    public static String OooOOOo = null;
    private static String OooOOo0 = "http://auth2.mobileanjian.com/";
    public static String[] OooO00o = {"a6cd931d", "1dcf44bf", "650e59d7", "3460d8da", "21fbt87f", "317e5900", "ed1139f0", "c99f6f94"};
    public static String[] OooO0OO = {"c6bd901f", "0ddf44be", "950e5927", "6460d8df", "11fb887f", "117e4900", "bd113950", "a99f6f97"};
    public static String[] OooO0Oo = {"a6cd931d", "1dcf44bf", "650e59d7", "3460d8da", "21fbt87f", "317e5900", "ed1139f0", "c99f6f94"};

    public static Uri.Builder OooO(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str) && str.startsWith("http://")) {
            str = str.substring(7);
        }
        return new Uri.Builder().scheme("http").encodedAuthority(str).appendPath(str2).appendPath(str3);
    }

    public static String OooO00o() {
        return OooOOOo;
    }

    public static String OooO0O0() {
        return OooOOo0;
    }

    public static String OooO0OO() {
        return OooOOOO;
    }

    public static int OooO0Oo() {
        return OooOOO0;
    }

    public static long OooO0o() {
        return OooO0oo;
    }

    public static String OooO0o0() {
        return OooO;
    }

    public static Uri.Builder OooO0oO(String str) {
        return new Uri.Builder().scheme("http").encodedAuthority(OooO0o).appendPath(str);
    }

    public static Uri.Builder OooO0oo(String str, String str2) {
        return new Uri.Builder().scheme("http").encodedAuthority(OooO0o).appendPath(str).appendPath(str2);
    }

    public static String OooOO0() {
        return OooOO0O;
    }

    public static String OooOO0O() {
        return OooOO0o;
    }

    public static String OooOO0o() {
        return OooOO0;
    }

    public static void OooOOO(boolean z, String str, long j, long j2, String str2, int i, String str3, String str4, String str5, String str6) {
        OooO0o = str;
        OooOOO = z;
        OooO0oo = j;
        OooO0oO = j2;
        OooO = str2;
        OooOOO0 = i;
        OooOO0 = str3;
        OooOO0O = str4;
        OooOO0o = str5;
        OooOOOO = str6;
    }

    public static long OooOOO0() {
        return OooO0oO;
    }

    public static boolean OooOOOO() {
        return OooOOO;
    }

    public static void OooOOOo(String str) {
        OooOOOo = str;
    }

    public static void OooOOo(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.startsWith("http://")) {
            str = str.substring(7);
        }
        OooO0o = str;
    }

    public static void OooOOo0(String str) {
        OooOOo0 = str;
    }
}
