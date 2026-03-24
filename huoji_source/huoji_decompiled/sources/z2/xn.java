package z2;

import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class xn extends mn {
    private static final Pattern OooO0o = Pattern.compile("BEGIN:VCARD", 2);
    private static final Pattern OooO0oO = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");
    private static final Pattern OooO0oo = Pattern.compile("\r\n[ \t]");
    private static final Pattern OooO = Pattern.compile("\\\\[nN]");
    private static final Pattern OooOO0 = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern OooOO0O = Pattern.compile("=");
    private static final Pattern OooOO0o = Pattern.compile(";");
    private static final Pattern OooOOO0 = Pattern.compile("(?<!\\\\);+");
    private static final Pattern OooOOO = Pattern.compile(",");
    private static final Pattern OooOOOO = Pattern.compile("[;,]");

    private static void OooOOo(Iterable<List<String>> iterable) {
        int iIndexOf;
        if (iterable != null) {
            for (List<String> list : iterable) {
                String str = list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4 && (iIndexOf = str.indexOf(59, i2)) >= 0) {
                    strArr[i] = str.substring(i2, iIndexOf);
                    i++;
                    i2 = iIndexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                OooOo0O(strArr, 3, sb);
                OooOo0O(strArr, 1, sb);
                OooOo0O(strArr, 2, sb);
                OooOo0O(strArr, 0, sb);
                OooOo0O(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static String OooOOo0(CharSequence charSequence, String str) {
        char cCharAt;
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char cCharAt2 = charSequence.charAt(i);
            if (cCharAt2 != '\n' && cCharAt2 != '\r') {
                if (cCharAt2 != '=') {
                    OooOo0o(byteArrayOutputStream, str, sb);
                    sb.append(cCharAt2);
                } else if (i < length - 2 && (cCharAt = charSequence.charAt(i + 1)) != '\r' && cCharAt != '\n') {
                    i += 2;
                    char cCharAt3 = charSequence.charAt(i);
                    int iOooOO0o = mn.OooOO0o(cCharAt);
                    int iOooOO0o2 = mn.OooOO0o(cCharAt3);
                    if (iOooOO0o >= 0 && iOooOO0o2 >= 0) {
                        byteArrayOutputStream.write((iOooOO0o << 4) + iOooOO0o2);
                    }
                }
            }
            i++;
        }
        OooOo0o(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    private static boolean OooOOoo(CharSequence charSequence) {
        return charSequence == null || OooO0oO.matcher(charSequence).matches();
    }

    public static List<List<String>> OooOo0(CharSequence charSequence, String str, boolean z, boolean z3) {
        ArrayList arrayList;
        boolean z4;
        String str2;
        String str3;
        int iIndexOf;
        String strReplaceAll;
        int length = str.length();
        int i = 0;
        int i2 = 0;
        ArrayList arrayList2 = null;
        while (i2 < length) {
            int i3 = 2;
            Matcher matcher = Pattern.compile("(?:^|\n)" + ((Object) charSequence) + "(?:;([^:]*))?:", 2).matcher(str);
            if (i2 > 0) {
                i2--;
            }
            if (!matcher.find(i2)) {
                break;
            }
            int iEnd = matcher.end(i);
            String strGroup = matcher.group(1);
            if (strGroup != null) {
                String[] strArrSplit = OooOO0o.split(strGroup);
                int length2 = strArrSplit.length;
                int i4 = 0;
                arrayList = null;
                z4 = false;
                str2 = null;
                str3 = null;
                while (i4 < length2) {
                    String str4 = strArrSplit[i4];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str4);
                    String[] strArrSplit2 = OooOO0O.split(str4, i3);
                    if (strArrSplit2.length > 1) {
                        String str5 = strArrSplit2[0];
                        String str6 = strArrSplit2[1];
                        if ("ENCODING".equalsIgnoreCase(str5) && "QUOTED-PRINTABLE".equalsIgnoreCase(str6)) {
                            z4 = true;
                        } else if ("CHARSET".equalsIgnoreCase(str5)) {
                            str2 = str6;
                        } else if ("VALUE".equalsIgnoreCase(str5)) {
                            str3 = str6;
                        }
                    }
                    i4++;
                    i3 = 2;
                }
            } else {
                arrayList = null;
                z4 = false;
                str2 = null;
                str3 = null;
            }
            int i5 = iEnd;
            while (true) {
                iIndexOf = str.indexOf(10, i5);
                if (iIndexOf < 0) {
                    break;
                }
                if (iIndexOf < str.length() - 1) {
                    int i6 = iIndexOf + 1;
                    if (str.charAt(i6) == ' ' || str.charAt(i6) == '\t') {
                        i5 = iIndexOf + 2;
                    }
                }
                if (!z4 || ((iIndexOf <= 0 || str.charAt(iIndexOf - 1) != '=') && (iIndexOf < 2 || str.charAt(iIndexOf - 2) != '='))) {
                    break;
                }
                i5 = iIndexOf + 1;
            }
            if (iIndexOf < 0) {
                i2 = length;
            } else if (iIndexOf <= iEnd) {
                i2 = iIndexOf + 1;
            } else {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList(1);
                }
                if (iIndexOf > 0 && str.charAt(iIndexOf - 1) == '\r') {
                    iIndexOf--;
                }
                String strSubstring = str.substring(iEnd, iIndexOf);
                if (z) {
                    strSubstring = strSubstring.trim();
                }
                if (z4) {
                    strReplaceAll = OooOOo0(strSubstring, str2);
                    if (z3) {
                        strReplaceAll = OooOOO0.matcher(strReplaceAll).replaceAll("\n").trim();
                    }
                } else {
                    if (z3) {
                        strSubstring = OooOOO0.matcher(strSubstring).replaceAll("\n").trim();
                    }
                    strReplaceAll = OooOO0.matcher(OooO.matcher(OooO0oo.matcher(strSubstring).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                }
                if ("uri".equals(str3)) {
                    try {
                        strReplaceAll = URI.create(strReplaceAll).getSchemeSpecificPart();
                    } catch (IllegalArgumentException unused) {
                    }
                }
                if (arrayList == null) {
                    ArrayList arrayList3 = new ArrayList(1);
                    arrayList3.add(strReplaceAll);
                    arrayList2.add(arrayList3);
                    i2 = iIndexOf + 1;
                } else {
                    arrayList.add(0, strReplaceAll);
                    arrayList2.add(arrayList);
                    i2 = iIndexOf + 1;
                }
            }
            i = 0;
        }
        return arrayList2;
    }

    public static List<String> OooOo00(CharSequence charSequence, String str, boolean z, boolean z3) {
        List<List<String>> listOooOo0 = OooOo0(charSequence, str, z, z3);
        if (listOooOo0 == null || listOooOo0.isEmpty()) {
            return null;
        }
        return listOooOo0.get(0);
    }

    private static void OooOo0O(String[] strArr, int i, StringBuilder sb) {
        if (strArr[i] == null || strArr[i].isEmpty()) {
            return;
        }
        if (sb.length() > 0) {
            sb.append(' ');
        }
        sb.append(strArr[i]);
    }

    private static void OooOo0o(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException unused) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    private static String[] OooOoO(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<List<String>> it = collection.iterator();
        while (it.hasNext()) {
            String str = it.next().get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String OooOoO0(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    private static String[] OooOoOO(Collection<List<String>> collection) {
        String strSubstring;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List<String> list : collection) {
            String str = list.get(0);
            if (str != null && !str.isEmpty()) {
                int i = 1;
                while (true) {
                    if (i >= list.size()) {
                        strSubstring = null;
                        break;
                    }
                    strSubstring = list.get(i);
                    int iIndexOf = strSubstring.indexOf(61);
                    if (iIndexOf < 0) {
                        break;
                    }
                    if ("TYPE".equalsIgnoreCase(strSubstring.substring(0, iIndexOf))) {
                        strSubstring = strSubstring.substring(iIndexOf + 1);
                        break;
                    }
                    i++;
                }
                arrayList.add(strSubstring);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // z2.mn
    /* JADX INFO: renamed from: OooOo, reason: merged with bridge method [inline-methods] */
    public final wm OooOO0O(em emVar) {
        String strOooO0OO = mn.OooO0OO(emVar);
        Matcher matcher = OooO0o.matcher(strOooO0OO);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List<List<String>> listOooOo0 = OooOo0("FN", strOooO0OO, true, false);
        if (listOooOo0 == null) {
            listOooOo0 = OooOo0("N", strOooO0OO, true, false);
            OooOOo(listOooOo0);
        }
        List<String> listOooOo00 = OooOo00("NICKNAME", strOooO0OO, true, false);
        String[] strArrSplit = listOooOo00 == null ? null : OooOOO.split(listOooOo00.get(0));
        List<List<String>> listOooOo02 = OooOo0("TEL", strOooO0OO, true, false);
        List<List<String>> listOooOo03 = OooOo0("EMAIL", strOooO0OO, true, false);
        List<String> listOooOo002 = OooOo00("NOTE", strOooO0OO, false, false);
        List<List<String>> listOooOo04 = OooOo0("ADR", strOooO0OO, true, true);
        List<String> listOooOo003 = OooOo00("ORG", strOooO0OO, true, true);
        List<String> listOooOo004 = OooOo00("BDAY", strOooO0OO, true, false);
        List<String> list = (listOooOo004 == null || OooOOoo(listOooOo004.get(0))) ? listOooOo004 : null;
        List<String> listOooOo005 = OooOo00("TITLE", strOooO0OO, true, false);
        List<List<String>> listOooOo05 = OooOo0("URL", strOooO0OO, true, false);
        List<String> listOooOo006 = OooOo00("IMPP", strOooO0OO, true, false);
        List<String> listOooOo007 = OooOo00("GEO", strOooO0OO, true, false);
        String[] strArrSplit2 = listOooOo007 == null ? null : OooOOOO.split(listOooOo007.get(0));
        return new wm(OooOoO(listOooOo0), strArrSplit, null, OooOoO(listOooOo02), OooOoOO(listOooOo02), OooOoO(listOooOo03), OooOoOO(listOooOo03), OooOoO0(listOooOo006), OooOoO0(listOooOo002), OooOoO(listOooOo04), OooOoOO(listOooOo04), OooOoO0(listOooOo003), OooOoO0(list), OooOoO0(listOooOo005), OooOoO(listOooOo05), (strArrSplit2 == null || strArrSplit2.length == 2) ? strArrSplit2 : null);
    }
}
