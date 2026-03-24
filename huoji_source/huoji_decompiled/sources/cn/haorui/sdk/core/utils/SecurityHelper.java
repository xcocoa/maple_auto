package cn.haorui.sdk.core.utils;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import z2.ua0;

/* JADX INFO: loaded from: classes.dex */
public class SecurityHelper {
    private static final String iv = "2398DHY433UGFKL1";
    private static final String key = "MS2VN#SDKAL147L*";

    public static byte[] decode(String str) {
        return Base64.decode(str, 0);
    }

    public static String decryptAES(String str) {
        try {
            byte[] bArrDecode = decode(str);
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            cipher.init(2, new SecretKeySpec(key.getBytes(), ua0.AES), new IvParameterSpec(iv.getBytes()));
            return new String(cipher.doFinal(bArrDecode)).trim();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String encode(byte[] bArr) {
        return Base64.encodeToString(bArr, 2);
    }

    public static String encryptAES(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/NoPadding");
            int blockSize = cipher.getBlockSize();
            byte[] bytes = str.getBytes();
            int length = bytes.length;
            if (length % blockSize != 0) {
                length += blockSize - (length % blockSize);
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            cipher.init(1, new SecretKeySpec(key.getBytes(), ua0.AES), new IvParameterSpec(iv.getBytes()));
            return encode(cipher.doFinal(bArr)).trim();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
