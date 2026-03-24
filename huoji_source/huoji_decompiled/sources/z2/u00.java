package z2;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class u00 extends p00 {
    private final MessageDigest OoooOoO;
    private final Mac OoooOoo;

    private u00(e10 e10Var, String str) {
        super(e10Var);
        try {
            this.OoooOoO = MessageDigest.getInstance(str);
            this.OoooOoo = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    private u00(e10 e10Var, ByteString byteString, String str) {
        super(e10Var);
        try {
            Mac mac = Mac.getInstance(str);
            this.OoooOoo = mac;
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.OoooOoO = null;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static u00 OooooOo(e10 e10Var, ByteString byteString) {
        return new u00(e10Var, byteString, "HmacSHA1");
    }

    public static u00 Oooooo(e10 e10Var) {
        return new u00(e10Var, "MD5");
    }

    public static u00 Oooooo0(e10 e10Var, ByteString byteString) {
        return new u00(e10Var, byteString, "HmacSHA256");
    }

    public static u00 OoooooO(e10 e10Var) {
        return new u00(e10Var, "SHA-1");
    }

    public static u00 Ooooooo(e10 e10Var) {
        return new u00(e10Var, "SHA-256");
    }

    public final ByteString OooOO0() {
        MessageDigest messageDigest = this.OoooOoO;
        return ByteString.of(messageDigest != null ? messageDigest.digest() : this.OoooOoo.doFinal());
    }

    @Override // z2.p00, z2.e10
    public long read(j00 j00Var, long j) throws IOException {
        long j2 = super.read(j00Var, j);
        if (j2 != -1) {
            long j3 = j00Var.OoooOoo;
            long j4 = j3 - j2;
            b10 b10Var = j00Var.OoooOoO;
            while (j3 > j4) {
                b10Var = b10Var.OooO0oO;
                j3 -= (long) (b10Var.OooO0OO - b10Var.OooO0O0);
            }
            while (j3 < j00Var.OoooOoo) {
                int i = (int) ((((long) b10Var.OooO0O0) + j4) - j3);
                MessageDigest messageDigest = this.OoooOoO;
                if (messageDigest != null) {
                    messageDigest.update(b10Var.OooO00o, i, b10Var.OooO0OO - i);
                } else {
                    this.OoooOoo.update(b10Var.OooO00o, i, b10Var.OooO0OO - i);
                }
                j4 = ((long) (b10Var.OooO0OO - b10Var.OooO0O0)) + j3;
                b10Var = b10Var.OooO0o;
                j3 = j4;
            }
        }
        return j2;
    }
}
