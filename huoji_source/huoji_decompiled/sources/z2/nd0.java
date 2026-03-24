package z2;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public class nd0 {
    private static final String OooO00o = "pl_droidsonroids_gif";

    @SuppressLint({"StaticFieldLeak"})
    private static Context OooO0O0;

    private nd0() {
    }

    private static Context OooO00o() {
        if (OooO0O0 == null) {
            try {
                OooO0O0 = (Context) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentApplication", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception e) {
                throw new IllegalStateException("LibraryLoader not initialized. Call LibraryLoader.initialize() before using library classes.", e);
            }
        }
        return OooO0O0;
    }

    public static void OooO0O0(@NonNull Context context) {
        OooO0O0 = context.getApplicationContext();
    }

    public static void OooO0OO() {
        try {
            System.loadLibrary(OooO00o);
        } catch (UnsatisfiedLinkError unused) {
            yd0.OooO0O0(OooO00o(), OooO00o);
        }
    }
}
