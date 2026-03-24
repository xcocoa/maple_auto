package z2;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class y2 {
    public static boolean OooO00o(Context context, String str, String str2, boolean z) {
        return OooO0Oo(context, str).getBoolean(str2, z);
    }

    public static int OooO0O0(Context context, String str, String str2, int i) {
        return OooO0Oo(context, str).getInt(str2, i);
    }

    public static String OooO0OO(Context context, String str, String str2, String str3) {
        return OooO0Oo(context, str).getString(str2, str3);
    }

    public static SharedPreferences OooO0Oo(Context context, String str) {
        return a3.OooO00o(context, str);
    }

    public static void OooO0o(Context context, String str, String str2, boolean z) {
        OooO0Oo(context, str).edit().putBoolean(str2, z).commit();
    }

    public static <T> List<T> OooO0o0(String str) {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str.getBytes(), 0)));
            List<T> list = (List) objectInputStream.readObject();
            objectInputStream.close();
            return list;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void OooO0oO(Context context, String str, String str2, int i) {
        OooO0Oo(context, str).edit().putInt(str2, i).commit();
    }

    public static void OooO0oo(Context context, String str, String str2, String str3) {
        OooO0Oo(context, str).edit().putString(str2, str3).commit();
    }
}
