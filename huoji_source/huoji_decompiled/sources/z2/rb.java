package z2;

/* JADX INFO: loaded from: classes.dex */
public class rb {
    private static qb OooO00o;

    public static qb OooO00o() {
        if (OooO00o == null) {
            synchronized (rb.class) {
                if (OooO00o == null) {
                    OooO00o = new qb();
                }
            }
        }
        return OooO00o;
    }
}
