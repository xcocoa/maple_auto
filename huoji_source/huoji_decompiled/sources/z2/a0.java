package z2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class a0 implements d0<Bitmap, BitmapDrawable> {
    private final Resources OooO00o;

    public a0(@NonNull Context context) {
        this(context.getResources());
    }

    public a0(@NonNull Resources resources) {
        this.OooO00o = (Resources) r2.OooO0Oo(resources);
    }

    @Deprecated
    public a0(@NonNull Resources resources, oO000o00 oo000o00) {
        this(resources);
    }

    @Override // z2.d0
    @Nullable
    public oO0Ooooo<BitmapDrawable> OooO00o(@NonNull oO0Ooooo<Bitmap> oo0ooooo, @NonNull o0O0OOO0 o0o0ooo0) {
        return oo00.OooO0Oo(this.OooO00o, oo0ooooo);
    }
}
