package z2;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class m5 {
    private static final String OooO00o = "KEY_LOCALE";
    private static final String OooO0O0 = "VALUE_FOLLOW_SYSTEM";

    private m5() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static void OooO00o(Activity activity) {
        String strOooOOo0 = w5.OooOOo().OooOOo0(OooO00o);
        if (TextUtils.isEmpty(strOooOOo0)) {
            return;
        }
        Locale localeOooO0O0 = OooO0O0.equals(strOooOOo0) ? OooO0O0(Resources.getSystem().getConfiguration()) : OooO0o0(strOooOOo0);
        if (localeOooO0O0 == null) {
            return;
        }
        OooO0oO(activity, localeOooO0O0);
        OooO0oO(u5.OooO00o(), localeOooO0O0);
    }

    private static Locale OooO0O0(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? configuration.getLocales().get(0) : configuration.locale;
    }

    private static boolean OooO0OO(String str) {
        int i = 0;
        for (char c : str.toCharArray()) {
            if (c == '$') {
                if (i >= 1) {
                    return false;
                }
                i++;
            }
        }
        return i == 1;
    }

    private static void OooO0Oo(Configuration configuration, Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(locale);
        } else {
            configuration.locale = locale;
        }
    }

    private static Locale OooO0o(String str) {
        if (!OooO0OO(str)) {
            return null;
        }
        try {
            int iIndexOf = str.indexOf("$");
            return new Locale(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
        } catch (Exception unused) {
            return null;
        }
    }

    private static Locale OooO0o0(String str) {
        Locale localeOooO0o = OooO0o(str);
        if (localeOooO0o == null) {
            Log.e("LanguageUtils", "The string of " + str + " is not in the correct format.");
            w5.OooOOo().Oooo00o(OooO00o);
        }
        return localeOooO0o;
    }

    private static void OooO0oO(Context context, Locale locale) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        OooO0Oo(configuration, locale);
        resources.updateConfiguration(configuration, resources.getDisplayMetrics());
    }
}
