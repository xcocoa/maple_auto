package z2;

/* JADX INFO: loaded from: classes.dex */
public class de {
    public static String OooO00o(String str, String str2, int i) {
        try {
            return d4.OooO0O0(str2, OooO0OO(str, i).getBytes());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0O0(String str, String str2, int i) throws Exception {
        return d4.OooO0Oo(str2, OooO0OO(str, i).getBytes());
    }

    private static String OooO0OO(String str, int i) {
        return (str.startsWith(k3.OooO00o) || str.startsWith(k3.OooO0OO)) ? j3.OooO00o[i] : str.startsWith("http://api") ? j3.OooO0Oo[i] : j3.OooO0OO[i];
    }

    public static String OooO0Oo(String str) {
        try {
            return v4.OooO00o(str.getBytes("utf-8"), j3.OooOO0O());
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static boolean OooO0o0(String str, String str2) {
        try {
            return v4.OooO0O0(str.getBytes(), j3.OooOO0(), str2);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
