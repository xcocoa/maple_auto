package z2;

import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class bn extends mn {
    private static final Pattern OooO0o = Pattern.compile(",");

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo0, reason: merged with bridge method [inline-methods] */
    public final an OooOO0O(em emVar) {
        String[] strArr;
        String[] strArr2;
        String[] strArr3;
        String str;
        String str2;
        String str3;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (!strOooO0OO.startsWith("mailto:") && !strOooO0OO.startsWith("MAILTO:")) {
            if (cn.OooOOoo(strOooO0OO)) {
                return new an(strOooO0OO);
            }
            return null;
        }
        String strSubstring = strOooO0OO.substring(7);
        int iIndexOf = strSubstring.indexOf(63);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring.substring(0, iIndexOf);
        }
        try {
            String strOooOOOo = mn.OooOOOo(strSubstring);
            String[] strArrSplit = !strOooOOOo.isEmpty() ? OooO0o.split(strOooOOOo) : null;
            Map<String, String> mapOooOOO0 = mn.OooOOO0(strOooO0OO);
            if (mapOooOOO0 != null) {
                if (strArrSplit == null && (str3 = mapOooOOO0.get("to")) != null) {
                    strArrSplit = OooO0o.split(str3);
                }
                String str4 = mapOooOOO0.get(com.anythink.expressad.d.a.b.h);
                String[] strArrSplit2 = str4 != null ? OooO0o.split(str4) : null;
                String str5 = mapOooOOO0.get("bcc");
                String[] strArrSplit3 = str5 != null ? OooO0o.split(str5) : null;
                String str6 = mapOooOOO0.get("subject");
                str2 = mapOooOOO0.get("body");
                strArr = strArrSplit;
                strArr3 = strArrSplit3;
                strArr2 = strArrSplit2;
                str = str6;
            } else {
                strArr = strArrSplit;
                strArr2 = null;
                strArr3 = null;
                str = null;
                str2 = null;
            }
            return new an(strArr, strArr2, strArr3, str, str2);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
