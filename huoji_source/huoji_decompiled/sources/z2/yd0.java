package z2;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class yd0 {

    public interface OooO00o {
        void OooO00o(Context context, String[] strArr, String str, File file, zd0 zd0Var);
    }

    public interface OooO0O0 {
        String OooO00o(String str);

        void OooO0O0(String str);

        String OooO0OO(String str);

        String[] OooO0Oo();

        void OooO0o0(String str);
    }

    public interface OooO0OO {
        void OooO00o();

        void OooO0O0(Throwable th);
    }

    public interface OooO0o {
        void OooO00o(String str);
    }

    private yd0() {
    }

    public static zd0 OooO00o() {
        return new zd0().OooO0OO();
    }

    public static void OooO0O0(Context context, String str) {
        OooO0Oo(context, str, null, null);
    }

    public static void OooO0OO(Context context, String str, String str2) {
        OooO0Oo(context, str, str2, null);
    }

    public static void OooO0Oo(Context context, String str, String str2, OooO0OO oooO0OO) {
        new zd0().OooO0oo(context, str, str2, oooO0OO);
    }

    public static zd0 OooO0o(OooO0o oooO0o) {
        return new zd0().OooOO0O(oooO0o);
    }

    public static void OooO0o0(Context context, String str, OooO0OO oooO0OO) {
        OooO0Oo(context, str, null, oooO0OO);
    }

    public static zd0 OooO0oO() {
        return new zd0().OooOOO();
    }
}
