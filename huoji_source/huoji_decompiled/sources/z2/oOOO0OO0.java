package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class oOOO0OO0 extends oOOO000o {
    private static final int OooO0OO = 1;
    private static final String OooO0Oo = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1";
    private static final byte[] OooO0o0 = OooO0Oo.getBytes(o0O0O0Oo.OooO0O0);

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        messageDigest.update(OooO0o0);
    }

    @Override // z2.oOOO000o
    public Bitmap OooO0OO(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2) {
        return a.OooO0Oo(oo000o00, bitmap, i, i2);
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        return obj instanceof oOOO0OO0;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return 1101716364;
    }
}
