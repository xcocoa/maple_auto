package z2;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okio.ByteString;

/* JADX INFO: loaded from: classes2.dex */
public final class t00 extends n00 {

    @Nullable
    private final MessageDigest OoooOoo;

    @Nullable
    private final Mac Ooooo00;

    private t00(d10 d10Var, String str) {
        super(d10Var);
        try {
            this.OoooOoo = MessageDigest.getInstance(str);
            this.Ooooo00 = null;
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    private t00(d10 d10Var, ByteString byteString, String str) {
        super(d10Var);
        try {
            Mac mac = Mac.getInstance(str);
            this.Ooooo00 = mac;
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            this.OoooOoo = null;
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public static t00 Oooooo(d10 d10Var, ByteString byteString) {
        return new t00(d10Var, byteString, "HmacSHA256");
    }

    public static t00 Oooooo0(d10 d10Var, ByteString byteString) {
        return new t00(d10Var, byteString, "HmacSHA1");
    }

    public static t00 OoooooO(d10 d10Var, ByteString byteString) {
        return new t00(d10Var, byteString, "HmacSHA512");
    }

    public static t00 Ooooooo(d10 d10Var) {
        return new t00(d10Var, "MD5");
    }

    public static t00 o00O0O(d10 d10Var) {
        return new t00(d10Var, "SHA-512");
    }

    public static t00 o0OoOo0(d10 d10Var) {
        return new t00(d10Var, "SHA-1");
    }

    public static t00 ooOO(d10 d10Var) {
        return new t00(d10Var, "SHA-256");
    }

    @Override // z2.n00, z2.d10
    public void OooOooO(j00 j00Var, long j) throws IOException {
        h10.OooO0O0(j00Var.OoooOoo, 0L, j);
        b10 b10Var = j00Var.OoooOoO;
        long j2 = 0;
        while (j2 < j) {
            int iMin = (int) Math.min(j - j2, b10Var.OooO0OO - b10Var.OooO0O0);
            MessageDigest messageDigest = this.OoooOoo;
            if (messageDigest != null) {
                messageDigest.update(b10Var.OooO00o, b10Var.OooO0O0, iMin);
            } else {
                this.Ooooo00.update(b10Var.OooO00o, b10Var.OooO0O0, iMin);
            }
            j2 += (long) iMin;
            b10Var = b10Var.OooO0o;
        }
        super.OooOooO(j00Var, j);
    }

    public final ByteString OooooOo() {
        MessageDigest messageDigest = this.OoooOoo;
        return ByteString.of(messageDigest != null ? messageDigest.digest() : this.Ooooo00.doFinal());
    }
}
