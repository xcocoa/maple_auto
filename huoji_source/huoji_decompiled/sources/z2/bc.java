package z2;

/* JADX INFO: loaded from: classes.dex */
public class bc {
    private static String OooO00o = "bc";
    private static bc OooO0O0;

    private bc() {
    }

    public static bc OooO00o() {
        if (OooO0O0 == null) {
            synchronized (bc.class) {
                if (OooO0O0 == null) {
                    OooO0O0 = new bc();
                }
            }
        }
        return OooO0O0;
    }

    public boolean OooO0O0() {
        String str = y4.OooO0OO("getprop phone.id", false, 100).OooO0O0;
        return str != null && str.length() > 0;
    }
}
