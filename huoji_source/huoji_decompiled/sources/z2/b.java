package z2;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes.dex */
public final class b implements o0O0OOOo<Bitmap, Bitmap> {

    public static final class OooO00o implements oO0Ooooo<Bitmap> {
        private final Bitmap OoooOoO;

        public OooO00o(@NonNull Bitmap bitmap) {
            this.OoooOoO = bitmap;
        }

        @Override // z2.oO0Ooooo
        @NonNull
        /* JADX INFO: renamed from: OooO00o, reason: merged with bridge method [inline-methods] */
        public Bitmap get() {
            return this.OoooOoO;
        }

        @Override // z2.oO0Ooooo
        @NonNull
        public Class<Bitmap> OooO0O0() {
            return Bitmap.class;
        }

        @Override // z2.oO0Ooooo
        public int getSize() {
            return t2.OooO0oo(this.OoooOoO);
        }

        @Override // z2.oO0Ooooo
        public void recycle() {
        }
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0OO, reason: merged with bridge method [inline-methods] */
    public oO0Ooooo<Bitmap> OooO0O0(@NonNull Bitmap bitmap, int i, int i2, @NonNull o0O0OOO0 o0o0ooo0) {
        return new OooO00o(bitmap);
    }

    @Override // z2.o0O0OOOo
    /* JADX INFO: renamed from: OooO0Oo, reason: merged with bridge method [inline-methods] */
    public boolean OooO00o(@NonNull Bitmap bitmap, @NonNull o0O0OOO0 o0o0ooo0) {
        return true;
    }
}
