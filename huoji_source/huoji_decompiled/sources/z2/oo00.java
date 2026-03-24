package z2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class oo00 implements oO0Ooooo<BitmapDrawable>, oO0000o0 {
    private final Resources OoooOoO;
    private final oO0Ooooo<Bitmap> OoooOoo;

    private oo00(@NonNull Resources resources, @NonNull oO0Ooooo<Bitmap> oo0ooooo) {
        this.OoooOoO = (Resources) r2.OooO0Oo(resources);
        this.OoooOoo = (oO0Ooooo) r2.OooO0Oo(oo0ooooo);
    }

    @Nullable
    public static oO0Ooooo<BitmapDrawable> OooO0Oo(@NonNull Resources resources, @Nullable oO0Ooooo<Bitmap> oo0ooooo) {
        if (oo0ooooo == null) {
            return null;
        }
        return new oo00(resources, oo0ooooo);
    }

    @Deprecated
    public static oo00 OooO0o(Resources resources, oO000o00 oo000o00, Bitmap bitmap) {
        return (oo00) OooO0Oo(resources, oOO.OooO0Oo(bitmap, oo000o00));
    }

    @Deprecated
    public static oo00 OooO0o0(Context context, Bitmap bitmap) {
        return (oo00) OooO0Oo(context.getResources(), oOO.OooO0Oo(bitmap, o00Oo00.OooO0Oo(context).OooO0oO()));
    }

    @Override // z2.oO0000o0
    public void OooO00o() {
        oO0Ooooo<Bitmap> oo0ooooo = this.OoooOoo;
        if (oo0ooooo instanceof oO0000o0) {
            ((oO0000o0) oo0ooooo).OooO00o();
        }
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<BitmapDrawable> OooO0O0() {
        return BitmapDrawable.class;
    }

    @Override // z2.oO0Ooooo
    @NonNull
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public BitmapDrawable get() {
        return new BitmapDrawable(this.OoooOoO, this.OoooOoo.get());
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return this.OoooOoo.getSize();
    }

    @Override // z2.oO0Ooooo
    public void recycle() {
        this.OoooOoo.recycle();
    }
}
