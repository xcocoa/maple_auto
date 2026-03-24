package com.anythink.core.b.d;

import android.text.TextUtils;
import cn.haorui.sdk.core.HRConfig;
import com.anythink.core.api.ATAdConst;
import com.anythink.core.api.ErrorCode;
import com.anythink.core.common.f.av;
import com.anythink.core.common.f.bc;
import com.anythink.core.common.f.q;
import com.anythink.core.common.f.y;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = "a";

    public static double a(double d, double d2) {
        return d2 > 0.0d ? d + (d2 * d) : d;
    }

    public static double a(double d, double d2, double d3) {
        return d3 > 0.0d ? d2 + ((d - d2) * d3) : d2;
    }

    public static double a(av avVar) {
        int iA = avVar.a();
        double dAw = iA != 2 ? (iA == 3 || iA == 4 || iA == 5 || iA == 8) ? avVar.aw() : 0.0d : avVar.au();
        if (dAw > 0.0d) {
            return dAw;
        }
        return 0.0d;
    }

    public static int a(boolean z, int i, int i2) {
        return i == i2 ? !z ? 1 : 2 : (i == 67 || i == 35) ? 3 : 4;
    }

    private static String a(int i) {
        return i == 2 ? "102" : "1001";
    }

    public static String a(q qVar, double d) {
        int i = qVar.d;
        return (i == 8 || i == 28) ? String.valueOf((int) Math.round(d)) : String.valueOf(d);
    }

    public static String a(q qVar, bc bcVar, double d, double d2) {
        String str = qVar.winNoticeUrl;
        if (TextUtils.isEmpty(str)) {
            StringBuilder sb = new StringBuilder();
            sb.append(a);
            sb.append(" [return] getWinUrl, no win notice url, do nothing\n bid id: ");
            sb.append(qVar.token);
            return null;
        }
        int i = qVar.d;
        String strReplace = str.replace(b.e, a(qVar, d2));
        if (i == 28) {
            strReplace = strReplace.replace(b.b, a(qVar, d));
        } else if (i == 66) {
            String strB = bcVar.b();
            if (TextUtils.isEmpty(strB)) {
                strB = "";
            }
            strReplace = strReplace.replace(b.g, strB);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(a);
        sb2.append(" getWinUrl, \n bid id: ");
        sb2.append(qVar.token);
        sb2.append("\n origin win notice url: ");
        sb2.append(str);
        sb2.append("\n final win notice url: ");
        sb2.append(strReplace);
        return strReplace;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(q qVar, y yVar, int i, boolean z, double d, String str) {
        String strReplace;
        String strValueOf;
        String str2 = qVar.loseNoticeUrl;
        if (TextUtils.isEmpty(str2)) {
            StringBuilder sb = new StringBuilder();
            sb.append(a);
            sb.append(" [return] getLossUrl, no loss notice url, do nothing\n bid id: ");
            sb.append(qVar.token);
            return null;
        }
        int i2 = qVar.d;
        String strReplace2 = str2.replace(b.b, a(qVar, d)).replace(b.c, str);
        if (i2 == 8) {
            strValueOf = String.valueOf(i == i2 ? !z ? 1 : 4 : (i == 67 || i == 35) ? 3 : 2);
        } else {
            if (i2 != 29) {
                strReplace = strReplace2.replace(b.d, "");
                if (i2 == 6) {
                    strReplace = strReplace.replace(b.f, ATAdConst.CURRENCY.USD.toString());
                }
                if (i2 == 66) {
                    String strB = yVar.b();
                    strReplace = !TextUtils.isEmpty(strB) ? strReplace.replace(b.g, strB) : strReplace.replace(b.g, "");
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(a);
                sb2.append(" getLossUrl, \n bid id: ");
                sb2.append(qVar.token);
                sb2.append("\n origin loss notice url: ");
                sb2.append(str2);
                sb2.append("\n final loss notice url: ");
                sb2.append(strReplace);
                return strReplace;
            }
            strValueOf = i2 == i ? "1" : "10001";
        }
        strReplace = strReplace2.replace(b.d, strValueOf);
        if (i2 == 6) {
        }
        if (i2 == 66) {
        }
        StringBuilder sb22 = new StringBuilder();
        sb22.append(a);
        sb22.append(" getLossUrl, \n bid id: ");
        sb22.append(qVar.token);
        sb22.append("\n origin loss notice url: ");
        sb22.append(str2);
        sb22.append("\n final loss notice url: ");
        sb22.append(strReplace);
        return strReplace;
    }

    public static String a(boolean z, int i) {
        return i == 3 ? HRConfig.GENDER_UNKNOWN : i == 1 ? "5" : i == 4 ? "2" : z ? "102" : "103";
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static double b(av avVar) {
        double dAv;
        int iA = avVar.a();
        if (iA != 1) {
            dAv = iA != 2 ? (iA == 3 || iA == 4 || iA == 5 || iA == 8) ? avVar.ax() : 0.0d : avVar.av();
        } else if (avVar.d() == 22) {
            dAv = avVar.av();
            StringBuilder sb = new StringBuilder("getWinnerPricePrRateForLoss, baidu normal ad requesting, use pr rate: ");
            sb.append(dAv);
            sb.append(", adSourceId: ");
            sb.append(avVar.u());
        }
        if (dAv > 0.0d) {
            return dAv;
        }
        return 0.0d;
    }

    public static String b(boolean z, int i, int i2) {
        return i == 3 ? HRConfig.GENDER_UNKNOWN : i2 == 8 ? i == 1 ? "5" : "1" : i2 == 29 ? i == 1 ? ErrorCode.adapterNotExistError : "2" : i2 == 34 ? i == 2 ? "102" : "1001" : i2 == 59 ? "102" : (i2 == 66 && i == 1) ? "2" : z ? "102" : "103";
    }

    private static int c(boolean z, int i, int i2) {
        return i == i2 ? !z ? 1 : 4 : (i == 67 || i == 35) ? 3 : 2;
    }
}
