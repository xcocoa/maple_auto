package z2;

import com.googlecode.tesseract.android.TessBaseAPI;

/* JADX INFO: loaded from: classes.dex */
public final class oo0O {
    private static final String[][] OooO00o = {new String[]{"0", "U"}, new String[]{"1", "Y"}, new String[]{"2", "M"}, new String[]{"3", "J"}, new String[]{"4", "O"}, new String[]{"5", "L"}, new String[]{"6", "W"}, new String[]{"7", "N"}, new String[]{"8", TessBaseAPI.OooO0oO}, new String[]{"9", "R"}};

    private static String OooO00o(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            sb.append(Integer.toHexString(c).toUpperCase());
        }
        return sb.toString();
    }

    private static String OooO0O0(String str) {
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

    private static String OooO0OO(String str) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            String[][] strArr = OooO00o;
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = true;
                if (i >= length) {
                    z = false;
                    break;
                }
                String[] strArr2 = strArr[i];
                if (strArr2[0].charAt(0) == c) {
                    sb.append(strArr2[1]);
                    break;
                }
                i++;
            }
            if (!z) {
                sb.append(c);
            }
        }
        return OooO0oO(sb.toString());
    }

    private static String OooO0Oo(String str) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            String[][] strArr = OooO00o;
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = true;
                if (i >= length) {
                    z = false;
                    break;
                }
                String[] strArr2 = strArr[i];
                if (strArr2[1].charAt(0) == c) {
                    sb.append(strArr2[0]);
                    break;
                }
                i++;
            }
            if (!z) {
                sb.append(c);
            }
        }
        return OooO0oO(sb.toString());
    }

    private static String OooO0o(String str) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            String[][] strArr = OooO00o;
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = true;
                if (i >= length) {
                    z = false;
                    break;
                }
                String[] strArr2 = strArr[i];
                if (strArr2[1].charAt(0) == c) {
                    sb.append(strArr2[0]);
                    break;
                }
                i++;
            }
            if (!z) {
                sb.append(c);
            }
        }
        return OooO0O0(OooO0oO(sb.toString()));
    }

    private static String OooO0o0(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            sb.append(Integer.toHexString(c).toUpperCase());
        }
        return OooO0OO(sb.toString());
    }

    private static String OooO0oO(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("Hex string length must be even");
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i += 2) {
            char c = charArray[i];
            int i2 = i + 1;
            charArray[i] = charArray[i2];
            charArray[i2] = c;
        }
        return new String(charArray);
    }
}
