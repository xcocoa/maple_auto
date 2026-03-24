package mobi.oneway.export.f;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    private static Map<String, Long> a = new HashMap();

    public static long a(int i, String str, String str2) {
        Long l = a.get(i + "-" + str + str2);
        if (l == null) {
            return 0L;
        }
        return l.longValue();
    }

    public static void a(int i, String str, String str2, long j) {
        a.put(i + "-" + str + str2, Long.valueOf(j));
    }
}
