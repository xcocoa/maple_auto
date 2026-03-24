package z2;

import android.util.Base64;
import android.util.Log;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes.dex */
public class r4 {
    public static final String OooO00o = "RSA";
    public static final String OooO0O0 = "RSA/ECB/NoPadding";
    public static final String OooO0OO = "1";
    public static final String OooO0Oo = "2";
    public static final String OooO0o = "MANUTD is the greatest club in the world";
    public static final int OooO0o0 = 2048;

    public static String OooO00o(PrivateKey privateKey, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(OooO0O0);
            cipher.init(2, privateKey);
            return new String(cipher.doFinal(bArr));
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String OooO0O0(PublicKey publicKey, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(OooO0O0);
            cipher.init(2, publicKey);
            return new String(cipher.doFinal(bArr));
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static byte[] OooO0OO(PublicKey publicKey, byte[] bArr) {
        try {
            Cipher cipher = Cipher.getInstance(OooO0O0);
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (InvalidKeyException | NoSuchAlgorithmException | BadPaddingException | IllegalBlockSizeException | NoSuchPaddingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static KeyPair OooO0Oo(int i) throws Exception {
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(2048);
        return keyPairGenerator.generateKeyPair();
    }

    public static RSAPublicKey OooO0o(String str) throws Exception {
        try {
            return (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (NullPointerException unused) {
            throw new Exception("公钥数据为空");
        } catch (NoSuchAlgorithmException unused2) {
            throw new Exception("无此算法");
        } catch (InvalidKeySpecException unused3) {
            throw new Exception("公钥非法");
        }
    }

    public static Map<String, byte[]> OooO0o0() {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(2048);
            KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
            RSAPublicKey rSAPublicKey = (RSAPublicKey) keyPairGenerateKeyPair.getPublic();
            RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) keyPairGenerateKeyPair.getPrivate();
            HashMap map = new HashMap();
            map.put("1", rSAPublicKey.getEncoded());
            map.put("2", rSAPrivateKey.getEncoded());
            Log.e("ffff", "fuck.1...     " + Base64.encodeToString(rSAPublicKey.getEncoded(), 2));
            Log.e("ffff", "fuck.2...     " + Base64.encodeToString(rSAPrivateKey.getEncoded(), 2));
            return map;
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static PublicKey OooO0oO(byte[] bArr) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
            return null;
        }
    }

    public PublicKey OooO0oo(byte[] bArr) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new PKCS8EncodedKeySpec(bArr));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            e.printStackTrace();
            return null;
        }
    }
}
