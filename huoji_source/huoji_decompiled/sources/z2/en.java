package z2;

import cn.haorui.sdk.core.HRConfig;
import com.google.zxing.BarcodeFormat;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class en extends mn {
    private static String OooOOo(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt != '(') {
                sb.append(cCharAt);
            } else {
                if (OooOOo0(i2, strSubstring) != null) {
                    break;
                }
                sb.append('(');
            }
        }
        return sb.toString();
    }

    private static String OooOOo0(int i, String str) {
        char cCharAt;
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strSubstring.length() && (cCharAt = strSubstring.charAt(i2)) != ')'; i2++) {
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    @Override // z2.mn
    /* JADX INFO: renamed from: OooOOoo, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final dn OooOO0O(em emVar) {
        dn dnVar = null;
        if (emVar.OooO0O0() != BarcodeFormat.RSS_EXPANDED) {
            return null;
        }
        String strOooO0OO = mn.OooO0OO(emVar);
        HashMap map = new HashMap();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String strSubstring = null;
        String str10 = null;
        String strSubstring2 = null;
        String strSubstring3 = null;
        int i = 0;
        while (i < strOooO0OO.length()) {
            String strOooOOo0 = OooOOo0(i, strOooO0OO);
            if (strOooOOo0 == null) {
                return dnVar;
            }
            byte b = 2;
            int length = i + strOooOOo0.length() + 2;
            String strOooOOo = OooOOo(length, strOooO0OO);
            int length2 = length + strOooOOo.length();
            strOooOOo0.hashCode();
            switch (strOooOOo0.hashCode()) {
                case 1536:
                    b = !strOooOOo0.equals("00") ? (byte) -1 : (byte) 0;
                    break;
                case 1537:
                    if (strOooOOo0.equals(HRConfig.GENDER_MALE)) {
                        b = 1;
                        break;
                    }
                    break;
                case 1567:
                    if (!strOooOOo0.equals(HRConfig.GENDER_FEMALE)) {
                    }
                    break;
                case 1568:
                    if (strOooOOo0.equals("11")) {
                        b = 3;
                        break;
                    }
                    break;
                case 1570:
                    if (strOooOOo0.equals("13")) {
                        b = 4;
                        break;
                    }
                    break;
                case 1572:
                    if (strOooOOo0.equals("15")) {
                        b = 5;
                        break;
                    }
                    break;
                case 1574:
                    if (strOooOOo0.equals("17")) {
                        b = 6;
                        break;
                    }
                    break;
                case 1567966:
                    if (strOooOOo0.equals("3100")) {
                        b = 7;
                        break;
                    }
                    break;
                case 1567967:
                    if (strOooOOo0.equals("3101")) {
                        b = 8;
                        break;
                    }
                    break;
                case 1567968:
                    if (strOooOOo0.equals("3102")) {
                        b = 9;
                        break;
                    }
                    break;
                case 1567969:
                    if (strOooOOo0.equals("3103")) {
                        b = 10;
                        break;
                    }
                    break;
                case 1567970:
                    if (strOooOOo0.equals("3104")) {
                        b = 11;
                        break;
                    }
                    break;
                case 1567971:
                    if (strOooOOo0.equals("3105")) {
                        b = 12;
                        break;
                    }
                    break;
                case 1567972:
                    if (strOooOOo0.equals("3106")) {
                        b = com.umeng.commonsdk.proguard.bg.k;
                        break;
                    }
                    break;
                case 1567973:
                    if (strOooOOo0.equals("3107")) {
                        b = com.umeng.commonsdk.proguard.bg.l;
                        break;
                    }
                    break;
                case 1567974:
                    if (strOooOOo0.equals("3108")) {
                        b = com.umeng.commonsdk.proguard.bg.m;
                        break;
                    }
                    break;
                case 1567975:
                    if (strOooOOo0.equals("3109")) {
                        b = com.umeng.commonsdk.proguard.bg.n;
                        break;
                    }
                    break;
                case 1568927:
                    if (strOooOOo0.equals("3200")) {
                        b = 17;
                        break;
                    }
                    break;
                case 1568928:
                    if (strOooOOo0.equals("3201")) {
                        b = 18;
                        break;
                    }
                    break;
                case 1568929:
                    if (strOooOOo0.equals("3202")) {
                        b = 19;
                        break;
                    }
                    break;
                case 1568930:
                    if (strOooOOo0.equals("3203")) {
                        b = 20;
                        break;
                    }
                    break;
                case 1568931:
                    if (strOooOOo0.equals("3204")) {
                        b = 21;
                        break;
                    }
                    break;
                case 1568932:
                    if (strOooOOo0.equals("3205")) {
                        b = 22;
                        break;
                    }
                    break;
                case 1568933:
                    if (strOooOOo0.equals("3206")) {
                        b = 23;
                        break;
                    }
                    break;
                case 1568934:
                    if (strOooOOo0.equals("3207")) {
                        b = 24;
                        break;
                    }
                    break;
                case 1568935:
                    if (strOooOOo0.equals("3208")) {
                        b = 25;
                        break;
                    }
                    break;
                case 1568936:
                    if (strOooOOo0.equals("3209")) {
                        b = 26;
                        break;
                    }
                    break;
                case 1575716:
                    if (strOooOOo0.equals("3920")) {
                        b = 27;
                        break;
                    }
                    break;
                case 1575717:
                    if (strOooOOo0.equals("3921")) {
                        b = 28;
                        break;
                    }
                    break;
                case 1575718:
                    if (strOooOOo0.equals("3922")) {
                        b = 29;
                        break;
                    }
                    break;
                case 1575719:
                    if (strOooOOo0.equals("3923")) {
                        b = 30;
                        break;
                    }
                    break;
                case 1575747:
                    if (strOooOOo0.equals("3930")) {
                        b = 31;
                        break;
                    }
                    break;
                case 1575748:
                    if (strOooOOo0.equals("3931")) {
                        b = 32;
                        break;
                    }
                    break;
                case 1575749:
                    if (strOooOOo0.equals("3932")) {
                        b = 33;
                        break;
                    }
                    break;
                case 1575750:
                    if (strOooOOo0.equals("3933")) {
                        b = 34;
                        break;
                    }
                    break;
            }
            switch (b) {
                case 0:
                    str2 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 1:
                    str = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 2:
                    str3 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 3:
                    str4 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 4:
                    str5 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 5:
                    str6 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 6:
                    str7 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    strSubstring = strOooOOo0.substring(3);
                    str9 = dn.OooOOo0;
                    str8 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    strSubstring = strOooOOo0.substring(3);
                    str9 = dn.OooOOo;
                    str8 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 27:
                case 28:
                case 29:
                case 30:
                    strSubstring2 = strOooOOo0.substring(3);
                    str10 = strOooOOo;
                    i = length2;
                    dnVar = null;
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                    if (strOooOOo.length() < 4) {
                        return null;
                    }
                    String strSubstring4 = strOooOOo.substring(3);
                    strSubstring3 = strOooOOo.substring(0, 3);
                    str10 = strSubstring4;
                    i = length2;
                    dnVar = null;
                    strSubstring2 = strOooOOo0.substring(3);
                    break;
                default:
                    map.put(strOooOOo0, strOooOOo);
                    i = length2;
                    dnVar = null;
                    break;
            }
        }
        return new dn(strOooO0OO, str, str2, str3, str4, str5, str6, str7, str8, str9, strSubstring, str10, strSubstring2, strSubstring3, map);
    }
}
