package z2;

import android.util.Base64;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public final class uc0 {
    private static final String OooO00o = "AESCrypt";
    private static final String OooO0O0 = "AES/CBC/PKCS7Padding";
    private static final String OooO0OO = "UTF-8";
    private static final String OooO0Oo = "SHA-256";
    private static final byte[] OooO0o0 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    public static boolean OooO0o = false;

    private uc0() {
    }

    private static String OooO00o(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            cArr2[i3] = cArr[i2 >>> 4];
            cArr2[i3 + 1] = cArr[i2 & 15];
        }
        return new String(cArr2);
    }

    public static String OooO0O0(String str, String str2) throws GeneralSecurityException {
        try {
            SecretKeySpec secretKeySpecOooO0o = OooO0o(str);
            OooO0oO("base64EncodedCipherText", str2);
            byte[] bArrDecode = Base64.decode(str2, 2);
            OooO0oo("decodedCipherText", bArrDecode);
            byte[] bArrOooO0OO = OooO0OO(secretKeySpecOooO0o, OooO0o0, bArrDecode);
            OooO0oo("decryptedBytes", bArrOooO0OO);
            String str3 = new String(bArrOooO0OO, "UTF-8");
            OooO0oO("message", str3);
            return str3;
        } catch (UnsupportedEncodingException e) {
            if (OooO0o) {
                Log.e(OooO00o, "UnsupportedEncodingException ", e);
            }
            throw new GeneralSecurityException(e);
        }
    }

    public static byte[] OooO0OO(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(OooO0O0);
        cipher.init(2, secretKeySpec, new IvParameterSpec(bArr));
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        OooO0oo("decryptedBytes", bArrDoFinal);
        return bArrDoFinal;
    }

    public static String OooO0Oo(String str, String str2) throws GeneralSecurityException {
        try {
            SecretKeySpec secretKeySpecOooO0o = OooO0o(str);
            OooO0oO("message", str2);
            String strEncodeToString = Base64.encodeToString(OooO0o0(secretKeySpecOooO0o, OooO0o0, str2.getBytes("UTF-8")), 2);
            OooO0oO("Base64.NO_WRAP", strEncodeToString);
            return strEncodeToString;
        } catch (UnsupportedEncodingException e) {
            if (OooO0o) {
                Log.e(OooO00o, "UnsupportedEncodingException ", e);
            }
            throw new GeneralSecurityException(e);
        }
    }

    private static SecretKeySpec OooO0o(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance(OooO0Oo);
        byte[] bytes = str.getBytes("UTF-8");
        messageDigest.update(bytes, 0, bytes.length);
        byte[] bArrDigest = messageDigest.digest();
        OooO0oo("SHA-256 key ", bArrDigest);
        return new SecretKeySpec(bArrDigest, ua0.AES);
    }

    public static byte[] OooO0o0(SecretKeySpec secretKeySpec, byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(OooO0O0);
        cipher.init(1, secretKeySpec, new IvParameterSpec(bArr));
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        OooO0oo("cipherText", bArrDoFinal);
        return bArrDoFinal;
    }

    private static void OooO0oO(String str, String str2) {
        if (OooO0o) {
            Log.d(OooO00o, str + "[" + str2.length() + "] [" + str2 + "]");
        }
    }

    private static void OooO0oo(String str, byte[] bArr) {
        if (OooO0o) {
            Log.d(OooO00o, str + "[" + bArr.length + "] [" + OooO00o(bArr) + "]");
        }
    }
}
