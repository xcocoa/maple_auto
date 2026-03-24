package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class oOOO0O0o extends oOOO000o {
    private static final String OooO0OO = "com.bumptech.glide.load.resource.bitmap.CenterInside";
    private static final byte[] OooO0Oo = OooO0OO.getBytes(o0O0O0Oo.OooO0O0);

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        messageDigest.update(OooO0Oo);
    }

    @Override // z2.oOOO000o
    public Bitmap OooO0OO(@NonNull oO000o00 oo000o00, @NonNull Bitmap bitmap, int i, int i2) {
        return a.OooO0OO(oo000o00, bitmap, i, i2);
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        return obj instanceof oOOO0O0o;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return -670243078;
    }
}
