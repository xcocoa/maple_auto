package z2;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class O0000000 implements o0O0OOOo<Uri, Bitmap> {
    private final k OooO00o;
    private final oO000o00 OooO0O0;

    public O0000000(k kVar, oO000o00 oo000o00) {
        this.OooO00o = kVar;
        this.OooO0O0 = oo000o00;
    }

    @Override // z2.o0O0OOOo
    @Nullable
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0Ooooo<Bitmap> OooO0O0(@NonNull Uri uri, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        oO0Ooooo<Drawable> oo0oooooOooO0O0 = this.OooO00o.OooO0O0(uri, i, i2, o0o0ooo0);
        if (oo0oooooOooO0O0 == null) {
            return null;
        }
        return oOOOOo0O.OooO00o(this.OooO0O0, oo0oooooOooO0O0.get(), i, i2);
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Uri uri, @NonNull o0O0OOO0 o0o0ooo0) {
        return "android.resource".equals(uri.getScheme());
    }
}
