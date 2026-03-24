package z2;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class cn extends tm {
    private static final Pattern OooO0o = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    public static boolean OooOOoo(String str) {
        return str != null && OooO0o.matcher(str).matches() && str.indexOf(64) >= 0;
    }

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOo00, reason: merged with bridge method [inline-methods] */
    public final an OooOO0O(em emVar) {
        String[] strArrOooOOo0;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("MATMSG:") || (strArrOooOOo0 = tm.OooOOo0("TO:", strOooO0OO, true)) == null) {
            return null;
        }
        for (String str : strArrOooOOo0) {
            if (!OooOOoo(str)) {
                return null;
            }
        }
        return new an(strArrOooOOo0, null, null, tm.OooOOo("SUB:", strOooO0OO, false), tm.OooOOo("BODY:", strOooO0OO, false));
    }
}
