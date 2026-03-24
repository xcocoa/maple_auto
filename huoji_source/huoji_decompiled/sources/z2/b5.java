package z2;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class b5 {
    private static final String OooO0O0 = "b5";
    private static b5 OooO0OO = null;
    public static final String OooO0Oo = "app_version";
    public static final String OooO0o0 = "last_app_version";
    private SharedPreferences OooO00o;

    private void OooO00o() {
    }

    public static b5 OooO0OO() {
        if (OooO0OO == null) {
            synchronized (b5.class) {
                if (OooO0OO == null) {
                    OooO0OO = new b5();
                }
            }
        }
        return OooO0OO;
    }

    public String OooO0O0() {
        String strOooO0o0 = j3.OooO0o0();
        SharedPreferences sharedPreferences = this.OooO00o;
        return sharedPreferences != null ? sharedPreferences.getString("app_version", j3.OooO0o0()) : strOooO0o0;
    }

    public String OooO0Oo() {
        String strOooO0o0 = j3.OooO0o0();
        SharedPreferences sharedPreferences = this.OooO00o;
        return sharedPreferences != null ? sharedPreferences.getString(OooO0o0, j3.OooO0o0()) : strOooO0o0;
    }

    public void OooO0o(SharedPreferences sharedPreferences) {
        this.OooO00o = sharedPreferences;
    }

    public void OooO0o0(Context context, String str) {
        this.OooO00o = context.getSharedPreferences(str, 0);
    }

    public void OooO0oO(String str) {
        String str2 = "appVersion:" + str;
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences != null) {
            try {
                sharedPreferences.edit().putString("app_version", str).apply();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void OooO0oo(String str) {
        String str2 = "appVersion:" + str;
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences != null) {
            try {
                sharedPreferences.edit().putString(OooO0o0, str).apply();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
