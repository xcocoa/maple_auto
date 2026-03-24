package z2;

/* JADX INFO: loaded from: classes.dex */
public class x8 {
    private static byte[] OooO00o(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static String OooO0O0(String str) {
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

    public static String OooO0OO(String str) {
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            sb.append(Integer.toHexString(c).toUpperCase());
        }
        return sb.toString();
    }
}
