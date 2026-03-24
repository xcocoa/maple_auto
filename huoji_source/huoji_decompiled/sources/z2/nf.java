package z2;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class nf {
    private static final long OooO0Oo = 2749416527681438711L;
    private HashMap<String, Class> OooO00o = new HashMap<>();
    public HashMap<String, Integer> OooO0O0 = new HashMap<>();
    public HashMap<Class, Integer> OooO0OO = new HashMap<>();

    private int OooO00o(Class cls) {
        return this.OooO0OO.get(cls).intValue();
    }

    private int OooO0Oo(String str) {
        return this.OooO0O0.get(str).intValue();
    }

    public final Class OooO0O0(String str) {
        return this.OooO00o.get(str);
    }

    public final void OooO0OO(String str, Class cls, Integer num) {
        this.OooO00o.put(str, cls);
        this.OooO0O0.put(str, num);
        this.OooO0OO.put(cls, num);
    }
}
