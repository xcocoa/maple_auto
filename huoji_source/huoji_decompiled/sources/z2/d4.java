package z2;

import android.util.Base64;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes.dex */
public class d4 {
    private static byte[] OooO00o = {com.umeng.commonsdk.proguard.bg.k, 24, 46, 110, 38, 102, 12, 36};
    private static byte[] OooO0O0 = {32, 47, 11, -128, 29, 77, 105, 21};
    public static AlgorithmParameterSpec OooO0OO = null;
    private static Key OooO0Oo = null;

    public static String OooO00o(String str) throws Exception {
        OooO0o(OooO00o, OooO0O0);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(2, OooO0Oo);
        return new String(cipher.doFinal(Base64.decode(str, 1)), "UTF-8").trim();
    }

    public static String OooO0O0(String str, byte[] bArr) throws Exception {
        OooO0o(bArr, OooO0O0);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(2, OooO0Oo);
        return new String(cipher.doFinal(Base64.decode(str, 1)), "UTF-8").trim();
    }

    public static String OooO0OO(String str) throws Exception {
        OooO0o(OooO00o, OooO0O0);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(1, OooO0Oo);
        byte[] bytes = str.getBytes("utf-8");
        if (bytes.length % 8 != 0) {
            byte[] bArr = new byte[(bytes.length + 8) - (bytes.length % 8)];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            bytes = bArr;
        }
        return Base64.encodeToString(cipher.doFinal(bytes), 0);
    }

    public static String OooO0Oo(String str, byte[] bArr) throws Exception {
        OooO0o(bArr, OooO0O0);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(1, OooO0Oo);
        byte[] bytes = str.getBytes("utf-8");
        if (bytes.length % 8 != 0) {
            byte[] bArr2 = new byte[(bytes.length + 8) - (bytes.length % 8)];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            bytes = bArr2;
        }
        return Base64.encodeToString(cipher.doFinal(bytes), 2);
    }

    private static void OooO0o(byte[] bArr, byte[] bArr2) {
        try {
            DESKeySpec dESKeySpec = new DESKeySpec(bArr);
            OooO0OO = new IvParameterSpec(bArr2);
            OooO0Oo = SecretKeyFactory.getInstance("DES").generateSecret(dESKeySpec);
        } catch (InvalidKeyException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        } catch (InvalidKeySpecException e3) {
            e3.printStackTrace();
        }
    }

    public static String OooO0o0(String str, byte[] bArr) throws Exception {
        OooO0o(bArr, OooO0O0);
        Cipher cipher = Cipher.getInstance("DES/ECB/NoPadding");
        cipher.init(1, OooO0Oo);
        byte[] bytes = str.getBytes("utf-8");
        if (bytes.length % 8 != 0) {
            byte[] bArr2 = new byte[(bytes.length + 8) - (bytes.length % 8)];
            System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
            bytes = bArr2;
        }
        return Base64.encodeToString(cipher.doFinal(bytes), 2);
    }
}
