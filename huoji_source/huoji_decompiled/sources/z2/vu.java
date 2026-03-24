package z2;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
public class vu {
    public static final int OooO0OO = 2048;
    public static final int OooO0Oo = 256;
    public static final int[] OooO0o;
    public static final int OooO0o0 = 64;
    public static byte[] OooO0oO;
    private KeyPair OooO00o;
    private tu OooO0O0;

    static {
        int[] iArr = {0, 1, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 0, 48, 33, 48, 9, 6, 5, 43, 14, 3, 2, 26, 5, 0, 4, 20};
        OooO0o = iArr;
        OooO0oO = new byte[iArr.length];
        int i = 0;
        while (true) {
            byte[] bArr = OooO0oO;
            if (i >= bArr.length) {
                return;
            }
            bArr[i] = (byte) OooO0o[i];
            i++;
        }
    }

    private static byte[] OooO00o(RSAPublicKey rSAPublicKey) {
        BigInteger bigInteger = BigInteger.ZERO;
        BigInteger bit = bigInteger.setBit(32);
        BigInteger modulus = rSAPublicKey.getModulus();
        BigInteger bigIntegerModPow = bigInteger.setBit(2048).modPow(BigInteger.valueOf(2L), modulus);
        BigInteger bigIntegerModInverse = modulus.remainder(bit).modInverse(bit);
        int[] iArr = new int[64];
        int[] iArr2 = new int[64];
        int i = 0;
        while (i < 64) {
            BigInteger[] bigIntegerArrDivideAndRemainder = bigIntegerModPow.divideAndRemainder(bit);
            BigInteger bigInteger2 = bigIntegerArrDivideAndRemainder[0];
            iArr2[i] = bigIntegerArrDivideAndRemainder[1].intValue();
            BigInteger[] bigIntegerArrDivideAndRemainder2 = modulus.divideAndRemainder(bit);
            modulus = bigIntegerArrDivideAndRemainder2[0];
            iArr[i] = bigIntegerArrDivideAndRemainder2[1].intValue();
            i++;
            bigIntegerModPow = bigInteger2;
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(524).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(64);
        byteBufferOrder.putInt(bigIntegerModInverse.negate().intValue());
        for (int i2 = 0; i2 < 64; i2++) {
            byteBufferOrder.putInt(iArr[i2]);
        }
        for (int i3 = 0; i3 < 64; i3++) {
            byteBufferOrder.putInt(iArr2[i3]);
        }
        byteBufferOrder.putInt(rSAPublicKey.getPublicExponent().intValue());
        return byteBufferOrder.array();
    }

    public static vu OooO0O0(tu tuVar) throws NoSuchAlgorithmException {
        vu vuVar = new vu();
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
        keyPairGenerator.initialize(2048);
        vuVar.OooO00o = keyPairGenerator.genKeyPair();
        vuVar.OooO0O0 = tuVar;
        return vuVar;
    }

    public static vu OooO0Oo(tu tuVar, File file, File file2) throws InvalidKeySpecException, NoSuchAlgorithmException, IOException {
        vu vuVar = new vu();
        byte[] bArr = new byte[(int) file.length()];
        byte[] bArr2 = new byte[(int) file2.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        FileInputStream fileInputStream2 = new FileInputStream(file2);
        fileInputStream.read(bArr);
        fileInputStream2.read(bArr2);
        fileInputStream.close();
        fileInputStream2.close();
        KeyFactory keyFactory = KeyFactory.getInstance("RSA");
        vuVar.OooO00o = new KeyPair(keyFactory.generatePublic(new X509EncodedKeySpec(bArr2)), keyFactory.generatePrivate(new PKCS8EncodedKeySpec(bArr)));
        vuVar.OooO0O0 = tuVar;
        return vuVar;
    }

    public static vu OooO0o0(tu tuVar, KeyPair keyPair) {
        vu vuVar = new vu();
        vuVar.OooO00o = keyPair;
        vuVar.OooO0O0 = tuVar;
        return vuVar;
    }

    public byte[] OooO0OO() throws IOException {
        byte[] bArrOooO00o = OooO00o((RSAPublicKey) this.OooO00o.getPublic());
        StringBuilder sb = new StringBuilder(720);
        sb.append(this.OooO0O0.OooO00o(bArrOooO00o));
        sb.append(" unknown@unknown");
        sb.append((char) 0);
        return sb.toString().getBytes("UTF-8");
    }

    public void OooO0o(File file, File file2) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
        fileOutputStream.write(this.OooO00o.getPrivate().getEncoded());
        fileOutputStream2.write(this.OooO00o.getPublic().getEncoded());
        fileOutputStream.close();
        fileOutputStream2.close();
    }

    public byte[] OooO0oO(byte[] bArr) throws GeneralSecurityException {
        Cipher cipher = Cipher.getInstance(r4.OooO0O0);
        cipher.init(1, this.OooO00o.getPrivate());
        cipher.update(OooO0oO);
        return cipher.doFinal(bArr);
    }
}
