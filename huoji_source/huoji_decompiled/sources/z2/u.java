package z2;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class u implements o0O0o000<r> {
    private final o0O0o000<Bitmap> OooO0OO;

    public u(o0O0o000<Bitmap> o0o0o000) {
        this.OooO0OO = (o0O0o000) r2.OooO0Oo(o0o0o000);
    }

    @Override // z2.o0O0O0Oo
    public void OooO00o(@NonNull MessageDigest messageDigest) {
        this.OooO0OO.OooO00o(messageDigest);
    }

    @Override // z2.o0O0o000
    @NonNull
    public oO0Ooooo<r> OooO0O0(@NonNull Context context, @NonNull oO0Ooooo<r> oo0ooooo, int i, int i2) {
        r rVar = oo0ooooo.get();
        oO0Ooooo<Bitmap> ooo = new oOO(rVar.OooO0o0(), o00Oo00.OooO0Oo(context).OooO0oO());
        oO0Ooooo<Bitmap> oo0oooooOooO0O0 = this.OooO0OO.OooO0O0(context, ooo, i, i2);
        if (!ooo.equals(oo0oooooOooO0O0)) {
            ooo.recycle();
        }
        rVar.OooOOOO(this.OooO0OO, oo0oooooOooO0O0.get());
        return oo0ooooo;
    }

    @Override // z2.o0O0O0Oo
    public boolean equals(Object obj) {
        if (obj instanceof u) {
            return this.OooO0OO.equals(((u) obj).OooO0OO);
        }
        return false;
    }

    @Override // z2.o0O0O0Oo
    public int hashCode() {
        return this.OooO0OO.hashCode();
    }
}
