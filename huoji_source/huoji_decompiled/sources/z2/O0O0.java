package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class O0O0 extends oOOO000o {
    private static final String OooO0Oo = "com.bumptech.glide.load.resource.bitmap.Rotate";
    private static final byte[] OooO0o0 = OooO0Oo.getBytes(o0O0O0Oo.OooO0O0);
    private final int OooO0OO;

    public O0O0(int i) {
        this.OooO0OO = i;
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        messageDigest.update(OooO0o0);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.OooO0OO).array());
    }

    @Override // z2.oOOO000o
    public Bitmap OooO0OO(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2) {
        return a.OooOOO(bitmap, this.OooO0OO);
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        return (obj instanceof O0O0) && this.OooO0OO == ((O0O0) obj).OooO0OO;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return t2.OooOOOO(-950519196, t2.OooOOO(this.OooO0OO));
    }
}
