package z2;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class j extends h<Drawable> {
    private j(Drawable drawable) {
        super(drawable);
    }

    @Nullable
    public static oO0Ooooo<Drawable> OooO0Oo(@Nullable Drawable drawable) {
        if (drawable != null) {
            return new j(drawable);
        }
        return null;
    }

    @Override // z2.oO0Ooooo
    @NonNull
    public Class<Drawable> OooO0O0() {
        return this.OoooOoO.getClass();
    }

    @Override // z2.oO0Ooooo
    public int getSize() {
        return Math.max(1, this.OoooOoO.getIntrinsicWidth() * this.OoooOoO.getIntrinsicHeight() * 4);
    }

    @Override // z2.oO0Ooooo
    public void recycle() {
    }
}
