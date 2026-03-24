package z2;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class yn extends mn {
    private static String[] OooOOo(CharSequence charSequence, String str, boolean z) {
        List<List<String>> listOooOo0 = xn.OooOo0(charSequence, str, z, false);
        if (listOooOo0 == null || listOooOo0.isEmpty()) {
            return null;
        }
        int size = listOooOo0.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = listOooOo0.get(i).get(0);
        }
        return strArr;
    }

    private static String OooOOo0(CharSequence charSequence, String str, boolean z) {
        List<String> listOooOo00 = xn.OooOo00(charSequence, str, z, false);
        if (listOooOo00 == null || listOooOo00.isEmpty()) {
            return null;
        }
        return listOooOo00.get(0);
    }

    private static String OooOo00(String str) {
        return str != null ? (str.startsWith("mailto:") || str.startsWith("MAILTO:")) ? str.substring(7) : str : str;
    }

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
    public final zm OooOO0O(em emVar) {
        double d;
        String strOooO0OO = mn.OooO0OO(emVar);
        if (strOooO0OO.indexOf("BEGIN:VEVENT") < 0) {
            return null;
        }
        String strOooOOo0 = OooOOo0("SUMMARY", strOooO0OO, true);
        String strOooOOo02 = OooOOo0("DTSTART", strOooO0OO, true);
        if (strOooOOo02 == null) {
            return null;
        }
        String strOooOOo03 = OooOOo0("DTEND", strOooO0OO, true);
        String strOooOOo04 = OooOOo0("DURATION", strOooO0OO, true);
        String strOooOOo05 = OooOOo0("LOCATION", strOooO0OO, true);
        String strOooOo00 = OooOo00(OooOOo0("ORGANIZER", strOooO0OO, true));
        String[] strArrOooOOo = OooOOo("ATTENDEE", strOooO0OO, true);
        if (strArrOooOOo != null) {
            for (int i = 0; i < strArrOooOOo.length; i++) {
                strArrOooOOo[i] = OooOo00(strArrOooOOo[i]);
            }
        }
        String strOooOOo06 = OooOOo0("DESCRIPTION", strOooO0OO, true);
        String strOooOOo07 = OooOOo0("GEO", strOooO0OO, true);
        double d2 = Double.NaN;
        if (strOooOOo07 == null) {
            d = Double.NaN;
        } else {
            int iIndexOf = strOooOOo07.indexOf(59);
            if (iIndexOf < 0) {
                return null;
            }
            try {
                d2 = Double.parseDouble(strOooOOo07.substring(0, iIndexOf));
                d = Double.parseDouble(strOooOOo07.substring(iIndexOf + 1));
            } catch (NumberFormatException | IllegalArgumentException unused) {
                return null;
            }
        }
        return new zm(strOooOOo0, strOooOOo02, strOooOOo03, strOooOOo04, strOooOOo05, strOooOo00, strArrOooOOo, strOooOOo06, d2, d);
    }
}
