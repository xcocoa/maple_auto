package z2;

/* JADX INFO: loaded from: classes2.dex */
public class mc0 extends nc0 {
    @Override // z2.nc0
    public String OooO00o(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("int") || str.equals("java.lang.Integer") || str.equals("long") || str.equals("java.lang.Long") || str.equals("short") || str.equals("java.lang.Short")) {
            return "integer";
        }
        return null;
    }
}
