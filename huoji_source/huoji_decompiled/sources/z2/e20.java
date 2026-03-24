package z2;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class e20 {
    public final Map<Class<? extends Throwable>, Integer> OooO00o = new HashMap();

    public e20 OooO00o(Class<? extends Throwable> cls, int i) {
        this.OooO00o.put(cls, Integer.valueOf(i));
        return this;
    }

    public Integer OooO0O0(Throwable th) {
        int i = 20;
        Throwable cause = th;
        do {
            Integer numOooO0OO = OooO0OO(cause);
            if (numOooO0OO != null) {
                return numOooO0OO;
            }
            cause = cause.getCause();
            i--;
            if (i <= 0 || cause == th) {
                break;
            }
        } while (cause != null);
        Log.d(l10.OooOOo0, "No specific message ressource ID found for " + th);
        return null;
    }

    public Integer OooO0OO(Throwable th) {
        Class<?> cls = th.getClass();
        Integer value = this.OooO00o.get(cls);
        if (value == null) {
            Class<? extends Throwable> cls2 = null;
            for (Map.Entry<Class<? extends Throwable>, Integer> entry : this.OooO00o.entrySet()) {
                Class<? extends Throwable> key = entry.getKey();
                if (key.isAssignableFrom(cls) && (cls2 == null || cls2.isAssignableFrom(key))) {
                    value = entry.getValue();
                    cls2 = key;
                }
            }
        }
        return value;
    }
}
