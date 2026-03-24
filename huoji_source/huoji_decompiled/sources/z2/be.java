package z2;

import java.security.SecureRandom;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class be {
    private static final String OooO00o = "abcdefghijklmnopqrstuvwxyz0123456789";
    public static final String OooO0O0 = "6s0r0t06030q09050s0o03050s6s070t0r";
    public static final String OooO0OO = "9l02083k3m39389l303m3k";

    public static String OooO00o(String str, int i) {
        int i2;
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            if (Character.isUpperCase(c)) {
                int i3 = ((c - 'A') + i) % 26;
                if (i3 < 0) {
                    i3 += 26;
                }
                i2 = i3 + 65;
            } else if (Character.isLowerCase(c)) {
                int i4 = ((c - 'a') + i) % 26;
                if (i4 < 0) {
                    i4 += 26;
                }
                i2 = i4 + 97;
            } else {
                if (Character.isDigit(c)) {
                    int i5 = ((c - '0') + i) % 10;
                    if (i5 < 0) {
                        i5 += 10;
                    }
                    i2 = i5 + 48;
                }
                sb.append(c);
            }
            c = (char) i2;
            sb.append(c);
        }
        return sb.toString();
    }

    public static String OooO0O0(int i) {
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder(i);
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(OooO00o.charAt(secureRandom.nextInt(36)));
        }
        return sb.toString();
    }

    public static String[] OooO0OO(int i) {
        Random random = new Random();
        StringBuilder sb = new StringBuilder(i);
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            sb.reverse();
            for (int i3 = 0; i3 < i; i3++) {
                sb.append(OooO00o.charAt(random.nextInt(36)));
            }
            strArr[i2] = sb.toString();
        }
        return strArr;
    }

    public static String OooO0Oo(String str) {
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            int i2 = i + 2;
            String strSubstring = str.substring(i, i2);
            try {
                sb.append((char) Integer.parseInt(strSubstring, 16));
            } catch (NumberFormatException unused) {
                sb.append(strSubstring);
            }
            i = i2;
        }
        return sb.toString();
    }
}
