package z2;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes.dex */
public class x4 {
    private static x4 OooO0O0 = null;
    private static String OooO0OO = "com.cyjh.elfin.base.AppContext";
    private SharedPreferences OooO00o;

    public static x4 OooO0O0() {
        if (OooO0O0 == null) {
            synchronized (x4.class) {
                if (OooO0O0 == null) {
                    OooO0O0 = new x4();
                }
            }
        }
        return OooO0O0;
    }

    public void OooO(String str) {
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().remove(str).apply();
    }

    public boolean OooO00o(String str, Boolean bool) {
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.getBoolean(str, bool.booleanValue());
    }

    public int OooO0OO(String str, int i) {
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences == null) {
            return 0;
        }
        return sharedPreferences.getInt(str, i);
    }

    public String OooO0Oo(String str, String str2) {
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences == null) {
            return null;
        }
        return sharedPreferences.getString(str, str2);
    }

    public void OooO0o(String str, Boolean bool) {
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putBoolean(str, bool.booleanValue()).apply();
    }

    public void OooO0o0(Context context) {
        this.OooO00o = new d5(context);
    }

    public void OooO0oO(String str, int i) {
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putInt(str, i).apply();
    }

    public void OooO0oo(String str, String str2) {
        SharedPreferences sharedPreferences = this.OooO00o;
        if (sharedPreferences == null) {
            return;
        }
        sharedPreferences.edit().putString(str, str2).apply();
    }
}
