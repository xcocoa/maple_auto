package mobi.oneway.export.g;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import z2.ua0;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static final Map<String, Cipher> a = new ConcurrentHashMap();

    private static String a(String str, int i, boolean z) {
        char[] charArray = str.toCharArray();
        char[] cArr = new char[i];
        int i2 = !z ? 1 : 0;
        for (int i3 = 0; i3 < i; i3++) {
            cArr[i3] = charArray[(i3 * 2) + i2];
        }
        return String.valueOf(cArr);
    }

    public static String a(String str, String str2, String str3) {
        String[] strArrA = a(str2, str3);
        return c(str, strArrA[0], strArrA[1]);
    }

    private static Cipher a(String str, String str2, int i) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, UnsupportedEncodingException, InvalidAlgorithmParameterException {
        String str3 = str + ":" + str2 + ":" + i;
        Map<String, Cipher> map = a;
        Cipher cipher = map.get(str3);
        if (cipher != null) {
            return cipher;
        }
        SecretKeySpec secretKeySpecA = a(str);
        Cipher cipher2 = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher2.init(i, secretKeySpecA, new IvParameterSpec(str2.getBytes("utf-8")));
        map.put(str3, cipher2);
        return cipher2;
    }

    private static SecretKeySpec a(String str) throws UnsupportedEncodingException {
        byte[] bytes = str.getBytes("utf-8");
        byte[] bArr = new byte[16];
        for (int i = 0; i < bytes.length && i < 16; i++) {
            bArr[i] = bytes[i];
        }
        return new SecretKeySpec(bArr, ua0.AES);
    }

    private static boolean a(int i) {
        return (i & 1) == 1;
    }

    private static String[] a(String str, String str2) {
        char cCharAt = str.charAt(2);
        char cCharAt2 = str2.charAt(5);
        String strA = a(str2, 8, a(cCharAt));
        String strA2 = a(str, 8, a(cCharAt2));
        return new String[]{strA + strA2, strA2 + strA};
    }

    public static String b(String str, String str2, String str3) {
        String[] strArrA = a(str2, str3);
        return d(str, strArrA[0], strArrA[1]);
    }

    private static String c(String str, String str2, String str3) {
        return new String(b.a(a(str2, str3, 1).doFinal(str.getBytes("utf-8"))), "utf-8");
    }

    private static String d(String str, String str2, String str3) {
        return new String(a(str2, str3, 2).doFinal(b.b(str.getBytes("utf-8"))));
    }
}
