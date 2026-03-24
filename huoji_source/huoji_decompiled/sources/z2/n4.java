package z2;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class n4 {
    public static final String OooO00o = "yyyy-MM-dd HH:mm:ss";

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class OooO00o<T> extends TypeToken<List<T>> {
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class OooO0O0<T> extends TypeToken<List<T>> {
    }

    public static Object OooO00o(Object obj) {
        try {
            return new Gson().toJson(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0O0(Object obj) {
        try {
            return new Gson().toJson(obj);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Gson OooO0OO() {
        return new GsonBuilder().serializeNulls().setDateFormat("yyyy-MM-dd HH:mm:ss").create();
    }

    public static <T> List<T> OooO0Oo(String str, Class<T> cls) {
        return (List) OooO0OO().fromJson(str, new OooO00o().getType());
    }

    public static <T> Object OooO0o(String str, Class cls) {
        try {
            return new Gson().fromJson(str, new OooO0O0().getType());
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object OooO0o0(String str, Class cls) {
        try {
            return new Gson().fromJson(str, cls);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
