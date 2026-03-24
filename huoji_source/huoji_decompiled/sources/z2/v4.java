package z2;

import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class v4 {
    public static final String OooO00o = "RSA";
    public static final String OooO0O0 = "SHA256withRSA";
    private static final String OooO0OO = "RSAPublicKey";
    private static final String OooO0Oo = "RSAPrivateKey";
    private static final int OooO0o = 128;
    private static final int OooO0o0 = 117;

    public static String OooO00o(byte[] bArr, String str) throws Exception {
        PrivateKey privateKeyGeneratePrivate = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(x3.OooO0O0(str)));
        Signature signature = Signature.getInstance(OooO0O0);
        signature.initSign(privateKeyGeneratePrivate);
        signature.update(bArr);
        return x3.OooO0Oo(signature.sign());
    }

    public static boolean OooO0O0(byte[] bArr, String str, String str2) throws Exception {
        PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(x3.OooO0O0(str)));
        Signature signature = Signature.getInstance(OooO0O0);
        signature.initVerify(publicKeyGeneratePublic);
        signature.update(bArr);
        return signature.verify(x3.OooO0O0(str2));
    }
}
