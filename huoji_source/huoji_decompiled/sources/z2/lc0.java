package z2;

/* JADX INFO: loaded from: classes2.dex */
public class lc0 extends nc0 {
    @Override // z2.nc0
    public String OooO00o(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("float") || str.equals("java.lang.Float") || str.equals("double") || str.equals("java.lang.Double")) {
            return "real";
        }
        return null;
    }
}
