package z2;

import java.net.Proxy;

/* JADX INFO: loaded from: classes2.dex */
public final class yy {
    private yy() {
    }

    public static String OooO00o(qx qxVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(qxVar.OooO0oO());
        sb.append(' ');
        boolean zOooO0O0 = OooO0O0(qxVar, type);
        kx kxVarOooOO0O = qxVar.OooOO0O();
        if (zOooO0O0) {
            sb.append(kxVarOooOO0O);
        } else {
            sb.append(OooO0OO(kxVarOooOO0O));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean OooO0O0(qx qxVar, Proxy.Type type) {
        return !qxVar.OooO0o() && type == Proxy.Type.HTTP;
    }

    public static String OooO0OO(kx kxVar) {
        String strOooO0oo = kxVar.OooO0oo();
        String strOooOO0 = kxVar.OooOO0();
        if (strOooOO0 == null) {
            return strOooO0oo;
        }
        return strOooO0oo + '?' + strOooOO0;
    }
}
