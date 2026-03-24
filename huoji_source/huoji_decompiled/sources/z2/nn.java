package z2;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class nn extends mn {
    private static void OooOOo0(Collection<String> collection, Collection<String> collection2, String str) {
        int iIndexOf = str.indexOf(59);
        if (iIndexOf < 0) {
            collection.add(str);
            collection2.add(null);
        } else {
            collection.add(str.substring(0, iIndexOf));
            String strSubstring = str.substring(iIndexOf + 1);
            collection2.add(strSubstring.startsWith("via=") ? strSubstring.substring(4) : null);
        }
    }

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOo, reason: merged with bridge method [inline-methods] */
    public final on OooOO0O(em emVar) {
        String str;
        String strOooO0OO = mn.OooO0OO(emVar);
        String str2 = null;
        if (!strOooO0OO.startsWith("sms:") && !strOooO0OO.startsWith("SMS:") && !strOooO0OO.startsWith("mms:") && !strOooO0OO.startsWith("MMS:")) {
            return null;
        }
        Map<String, String> mapOooOOO0 = mn.OooOOO0(strOooO0OO);
        boolean z = false;
        if (mapOooOOO0 == null || mapOooOOO0.isEmpty()) {
            str = null;
        } else {
            str2 = mapOooOOO0.get("subject");
            str = mapOooOOO0.get("body");
            z = true;
        }
        int iIndexOf = strOooO0OO.indexOf(63, 4);
        String strSubstring = (iIndexOf < 0 || !z) ? strOooO0OO.substring(4) : strOooO0OO.substring(4, iIndexOf);
        int i = -1;
        ArrayList arrayList = new ArrayList(1);
        ArrayList arrayList2 = new ArrayList(1);
        while (true) {
            int i2 = i + 1;
            int iIndexOf2 = strSubstring.indexOf(44, i2);
            if (iIndexOf2 <= i) {
                OooOOo0(arrayList, arrayList2, strSubstring.substring(i2));
                return new on((String[]) arrayList.toArray(new String[arrayList.size()]), (String[]) arrayList2.toArray(new String[arrayList2.size()]), str2, str);
            }
            OooOOo0(arrayList, arrayList2, strSubstring.substring(i2, iIndexOf2));
            i = iIndexOf2;
        }
    }
}
