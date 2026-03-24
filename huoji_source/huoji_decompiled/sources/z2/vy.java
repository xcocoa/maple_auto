package z2;

import com.github.kevinsawicki.http.HttpRequest;
import z2.o000000O;

/* JADX INFO: loaded from: classes2.dex */
public final class vy {
    private vy() {
    }

    public static boolean OooO00o(String str) {
        return str.equals("POST") || str.equals(o000000O.OooO00o.OooO00o) || str.equals(HttpRequest.METHOD_PUT) || str.equals(HttpRequest.METHOD_DELETE) || str.equals("MOVE");
    }

    public static boolean OooO0O0(String str) {
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    public static boolean OooO0OO(String str) {
        return !str.equals("PROPFIND");
    }

    public static boolean OooO0Oo(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean OooO0o0(String str) {
        return str.equals("POST") || str.equals(HttpRequest.METHOD_PUT) || str.equals(o000000O.OooO00o.OooO00o) || str.equals("PROPPATCH") || str.equals("REPORT");
    }
}
