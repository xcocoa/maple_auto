package z2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class oOO0OoO0 implements o0O0o000<BitmapDrawable> {
    private final o0O0o000<Drawable> OooO0OO;

    public oOO0OoO0(o0O0o000<Bitmap> o0o0o000) {
        this.OooO0OO = (o0O0o000) r2.OooO0Oo(new oOOo0000(o0o0o000, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static oO0Ooooo<BitmapDrawable> OooO0OO(oO0Ooooo<Drawable> oo0ooooo) {
        if (oo0ooooo.get() instanceof BitmapDrawable) {
            return oo0ooooo;
        }
        throw new IllegalArgumentException("Wrapped transformation unexpectedly returned a non BitmapDrawable resource: " + oo0ooooo.get());
    }

    private static oO0Ooooo<Drawable> OooO0Oo(oO0Ooooo<BitmapDrawable> oo0ooooo) {
        return oo0ooooo;
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        this.OooO0OO.OooO00o(messageDigest);
    }

    @Override // z2.o0O0o000
    @NonNull
    public oO0Ooooo<BitmapDrawable> OooO0O0(@NonNull Context context, @NonNull oO0Ooooo<BitmapDrawable> oo0ooooo, int i, int i2) {
        return OooO0OO(this.OooO0OO.OooO0O0(context, OooO0Oo(oo0ooooo), i, i2));
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (obj instanceof oOO0OoO0) {
            return this.OooO0OO.equals(((oOO0OoO0) obj).OooO0OO);
        }
        return false;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return this.OooO0OO.hashCode();
    }
}
