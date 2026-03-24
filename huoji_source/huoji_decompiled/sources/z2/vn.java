package z2;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import z2.o4;

/* JADX INFO: loaded from: classes2.dex */
public final class vn extends mn {
    private static final Pattern OooO0o = Pattern.compile("[a-zA-Z][a-zA-Z0-9+-.]+:");
    private static final Pattern OooO0oO = Pattern.compile("([a-zA-Z0-9\\-]+\\.){1,6}[a-zA-Z]{2,}(:\\d{1,5})?(/|\\?|$)");

    public static boolean OooOOo0(String str) {
        if (str.contains(o4.OooO00o.OooO0Oo)) {
            return false;
        }
        Matcher matcher = OooO0o.matcher(str);
        if (matcher.find() && matcher.start() == 0) {
            return true;
        }
        Matcher matcher2 = OooO0oO.matcher(str);
        return matcher2.find() && matcher2.start() == 0;
    }

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo, reason: merged with bridge method [inline-methods] */
    public final un OooOO0O(em emVar) {
        String strOooO0OO = mn.OooO0OO(emVar);
        if (strOooO0OO.startsWith("URL:") || strOooO0OO.startsWith("URI:")) {
            return new un(strOooO0OO.substring(4).trim(), null);
        }
        String strTrim = strOooO0OO.trim();
        if (OooOOo0(strTrim)) {
            return new un(strTrim, null);
        }
        return null;
    }
}
