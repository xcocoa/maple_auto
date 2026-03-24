package z2;

/* JADX INFO: loaded from: classes.dex */
public class o00OO0O0 {
    public static String OooO00o(String str) {
        return str.contains("arm64") ? "arm64-v8a" : str.contains("arm") ? "armeabi-v7a" : str.contains("x86_64") ? "x86_64" : str.contains("x86") ? "x86" : "unknown";
    }
}
