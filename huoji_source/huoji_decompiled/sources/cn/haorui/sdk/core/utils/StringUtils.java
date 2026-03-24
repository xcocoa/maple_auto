package cn.haorui.sdk.core.utils;

import java.text.DecimalFormat;
import z2.o4;

/* JADX INFO: loaded from: classes.dex */
public class StringUtils {
    private static final long G = 1073741824;
    private static final long K = 1024;
    private static final long M = 1048576;
    private static final long T = 1099511627776L;

    public static String byte2hex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String upperCase = Integer.toHexString(b & 255).toUpperCase();
            if (upperCase.length() == 1) {
                sb.append("0");
            }
            sb.append(upperCase);
        }
        return sb.toString();
    }

    public static String bytesToHuman(long j) {
        long[] jArr = {1099511627776L, 1073741824, 1048576, 1024, 1};
        String[] strArr = {"TB", "GB", "MB", "KB", "B"};
        if (j < 1) {
            return "0 " + strArr[4];
        }
        for (int i = 0; i < 5; i++) {
            long j2 = jArr[i];
            if (j >= j2) {
                return format(j, j2, strArr[i]);
            }
        }
        return null;
    }

    private static String format(long j, long j2, String str) {
        double d = j;
        if (j2 > 1) {
            d /= j2;
        }
        return new DecimalFormat("#.##").format(d) + o4.OooO00o.OooO0Oo + str;
    }
}
